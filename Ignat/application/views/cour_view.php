<!DOCTYPE html>
<html>
<head>
	<title>New view</title>
</head>
<body>

<p><h1>Courses</h1></p>

<table  border="1", align="center">
<tr>
	<th>Название курса</th>
	<th>Продолжительность курса</th>
	<th>Цена вопроса</th>
	<th>Преподаватель</th>
</tr>

<?php foreach ($courses as $value) :?>
	<tr>
	<td><b><i><?=$value['course_name'];?></i></b></td>
	<td align="center"><?=$value['duration']." hours";?></td>
	<td align="center"><?=$value['price']." UAN";?></td>
	<td><?=$value['name']." ".$value['surname'];?></td>
	</tr>
<?php endforeach?>

</table>	


<?php echo $this->pagination->create_links();?>

</body>
</html>
