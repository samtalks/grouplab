SELECT answers.user_id, choices.question_id, choices.correct FROM answers 
INNER JOIN choices 
ON answers.choice_id = choices.id;