<!DOCTYPE html>
<html>
<head>
	<title>New view</title>
</head>
<body>

<?php foreach ($teachers as $item):?>
<p>Имя преподавателя: <?=$item['name'];?></p>
<p>Фамилия: <?=$item['surname'];?></p>
<p>Информация: <?=$item['about'];?></p>
<p>Skills: <?=$item['skills'];?></p>
<p>Телефон: <?=$item['phone'];?></p>
<p>Mail: <?=$item['mail'];?></p>
<p>Skype: <?=$item['skype'];?></p>
<p>Фото: <?=$item['photo'];?></p>
<p>Дата регистрации: <?=$item['created'];?></p>
<hr/>
<?php endforeach;?>

</body>
</html>
