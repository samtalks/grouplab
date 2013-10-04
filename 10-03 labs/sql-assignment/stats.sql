SELECT (count(choices.correct)*100)/30 FROM answers 
INNER JOIN choices 
ON answers.choice_id = choices.id WHERE correct = "TRUE";


-- SELECT COUNT(correct) FROM choices WHERE correct = "TRUE";