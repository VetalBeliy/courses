<!DOCTYPE html>
<html>
<head>
	<title>Преподаватели</title>
</head>
<body>


<h2>Преподаватели</h2>

	<table border="2">
		<tr>
		<th>Фото</th>
		<th>Имя</th>
		<th>Фамилия</th>
		<th>Skills</th>
		<th>Информация</th>
		<th>Телефон</th>
		<th>Mail</th>
		<th>Skype</th>
		<th>Дата регистрации</th>
		</tr>

<?php foreach ($teachers as $item):?>
	<tr>
	<td align="center"><img src = '<?=$item['photo'];?>'></td>
	<td align="center"><?=$item['name'];?></td>
	<td align="center"><?=$item['surname'];?></td>
	<td align="center"><?=$item['skills'];?></td>
	<td align="center"><?=$item['about'];?></td>
	<td align="center"><?=$item['phone'];?></td>
	<td align="center"><?=$item['mail'];?></td>
	<td align="center"><?=$item['skype'];?></td>
	<td align="center"><?=$item['created'];?></td>
	</tr>
<?php endforeach;?>

</body>
</html>
