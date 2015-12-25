<!DOCTYPE html>
<html>
<head>
	<title>Lessons</title>
</head>
<body>

<p><h1>Lessons</h1></p>

<table  border="1", align="center">
<tr>
	<th>Название курса</th>
	<th>Урок</th>
	<th>Текст</th>
	<th>Видео</th>
</tr>

<?php foreach ($lessons as $value) :?>
	<tr>
	<td><b><i><?=$value['course_name'];?></i></b></td>
	<td align="center"><?="Урок номер".$value['lesson'];?></td>
	<td><?=$value['text'];?></td>
	<td><a href="<?=$value['links_to_resources'];?>">Ссылка на видеоурок</a></td>
	</tr>
<?php endforeach?>

</table>	

<?php if ($mark) {echo $this->pagination->create_links();}?>

</body>
</html>
