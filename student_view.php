<?php include 'inc/header.php'; ?>
<?php include 'lib/Student.php'; ?>
<script type="text/javascript">
	$(document).ready(function(){
		$("form").submit(function(){
			var roll = true;
			$(':radio').each(function(){
				name = $(this).attr('name');
				if (roll && !$(':radio[name="'+ name +'"]:checked').length) {
					$('.alert').show();
					roll = false
				}
			});
			return roll;
		});
	});
</script>
<?php
	$stu = new Student();
	$dt = $_GET['dt'];

	$stu = new Student();
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$attend = $_POST['attend'];
		$att_update = $stu->updateAttendance($dt,$attend);
	}

?>
<?php
	if (isset($att_update)) {
		echo $att_update;
	}
?>
<div class='alert alert-danger' style="display: none;"><strong>Student Roll Missing !</div>
<div class="panel panel-default">
	<div class="panel-heading">
		<h2>
			<a class="btn btn-success" href="add.php">Add Student</a>
			<a class="btn btn-info pull-right" href="date_view.php">Back</a>
		</h2>
	</div>
	<div class="panel-body">
		<div class="well text-center" style="font-size: 20px;">
			<strong>Date:</strong><?php echo $dt; ?>
		</div>
		<form action="" method="POST">
			<table class="table table-striped">
				<tr>
					<th width="25%">Serial</th>
					<th width="25%">Student Name</th>
					<th width="25%">Student Roll</th>
					<th width="25%">Attendance</th>
				</tr>
				<?php
					$get_sutdent = $stu->getAllData($dt);
					if ($get_sutdent) {
					$i=0;
					while ($result = $get_sutdent->fetch_assoc()) {
					$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $result['name']; ?></td>
					<td><?php echo $result['roll']; ?></td>
					<td>
						<input type="radio" name="attend[<?php echo $result['roll']; ?>]" id="" value="present" <?php if($result['attend'] == "present") echo "checked"; ?> />P
						<input type="radio" name="attend[<?php echo $result['roll']; ?>]" id="" value="absent" <?php if($result['attend'] == "absent") echo "checked"; ?> />A
					</td>
				</tr>
				<?php } } ?>
				<tr>
					<td colspan="4"><input class="btn btn-primary" type="submit" name="submit" value="Update" ></td>
				</tr>
			</table>
		</form>
	</div>
</div>

<?php include 'inc/footer.php'; ?>