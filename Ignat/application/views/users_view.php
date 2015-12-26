<!DOCTYPE html>
<html>
<head>
	<title>New view</title>
</head>
<body>

<h2><?php echo $title ?></h2>

<table border="2" cellpadding="2">
 <tr>
        <th>avatar</th>
        <th>Логин</th>
        <th>e-mail</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>age</th>

        <th>City</th>
        <th>Phone</th>
        <th>Дата регистрации</th>
        <th>Уровень</th>
        
  
  <?php foreach ($users as $user_item): ?>
        
    <tr>
        <td><?php echo '<img src ='.base_url().'img/photos/users/'.$user_item['avatar']; ?>
                        width="189" height="255" alt="User_logo"> </td>
        <td><?php echo $user_item['login'] ?></td>
        <td><?php echo $user_item['email'] ?></td>
        <td><?php echo $user_item['name'] ?></td>
        <td><?php echo $user_item['surname'] ?></td>
        <td><?php echo $user_item['age'] ?></td>
        
        <td><?php echo $user_item['city'] ?></td>
        <td><?php echo $user_item['phone'] ?></td>
        <td><?php echo $user_item['date_register'] ?></td>
        <td><?php echo $user_item['level'] ?></td>
    </tr>

  <?php endforeach ?>

</table>
</body>
</html>