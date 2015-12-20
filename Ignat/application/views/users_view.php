<!DOCTYPE html>
<html>
<head>
	<title>New view</title>
</head>
<body>

<h2><?php echo $title ?></h2>

<table border="2" cellpadding="2">
 <tr>
        <th>Логин</th>
        <th>e-mail</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>age</th>
        <th>avatar</th>
        <th>City</th>
        <th>Phone</th>
        <th>Дата регистрации</th>
        <th>Уровень</th>
        
  
  <?php foreach ($users as $user_item): ?>
        
        <tr><td><?php echo $user_item['login'] ?></td>
        <td><?php echo $user_item['email'] ?></td>
        <td><?php echo $user_item['name'] ?></td>
        <td><?php echo $user_item['surname'] ?></td>
        <td><?php echo $user_item['age'] ?></td>
        <td><?php echo $user_item['avatar'] ?></td>
        <td><?php echo $user_item['city'] ?></td>
        <td><?php echo $user_item['phone'] ?></td>
        <td><?php echo $user_item['date_register'] ?></td>
        <td><?php echo $user_item['level'] ?></td>
  <?php endforeach ?>

</tr>
</table>
</body>
</html>