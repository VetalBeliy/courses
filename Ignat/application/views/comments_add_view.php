<!DOCTYPE html>
<html>
    <head>
	   <meta content = "text/html; charset=utf-8" />
	   <title>Добавить отзыв</title>
    </head>

    <body>
        <p><b>Добавьте Ваш отзыв</b></p>
        <?php echo form_open('/comments/added'); ?>
        
        <p>Имя пользователя  (введите индекс - значение от 1....)</p>
        <?php echo form_input('UserName'); ?><br>

        <?php
            foreach ($course_teacher as $data) 
            {
                $options1[] = $data['course_name'];
                $options2[] = $data['name'];
            }
            $options1 = array_values(array_unique($options1));
            $options2 = array_values(array_unique($options2));
        ?>

        <p>Название курса</p>
        <?php echo form_dropdown('CourseName', $options1); ?><br>

        <p>Имя преподавателя</p>
        <?php echo form_dropdown('TeacherName', $options2); ?><br>

        <p>Текст отзыва</p>
        <?php echo form_textarea('TextReview'); ?><br><br>
        <?php echo form_submit('submit_comment', 'Добавить');?>
        
        </form>
    </body>
</html>
