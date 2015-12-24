<!DOCTYPE html>
<html>
<head>
	<meta content = "text/html; charset=utf-8" />
	<title>Отзывы</title>
</head>

<body>
	<table border="2">
		<tr>
			<th> Аватар </th>
            <th> Имя пользователя </th>
			<th> Название курса </th>
			<th> Преподаватель </th>
			<th> Дата создания </th>
		</tr>
	
		<?php foreach ($comments as $comments_item): ?>
		<tr>
			<td align="left">
                  <p><?php echo $comments_item['user_avatar']; ?></p>       
            </td>

            <td align="left">
        		<p><?php echo $comments_item['user_name']; ?></p>
        	</td>

        	<td align="left">
        		<p><?php echo $comments_item['course_name']; ?></p>
        	</td>

        	<td align="left">
        		<p><?php echo $comments_item['teacher_name']; ?></p>
        	</td>

        	<td align="left">
        		<p><?php echo $comments_item['created']; ?></p>
        	</td>
        </tr>
        <tr>
      		<td colspan="4">
                <p><?php echo $comments_item['text_review']; ?></p>
            </td>
        </tr>
        <?php endforeach; ?>
	</table>
	<br>
	<p><a href="comments_add">Добавить отзыв</a></p>
</body>
</html>
