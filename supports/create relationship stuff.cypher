MATCH (candidate1:Candidate), (c1:Constituency)
WHERE candidate1.constituency = "Cavan-Monaghan" AND c1.name = "Cavan-Monaghan"
CREATE candidate1-[:FROM]->c1;

//This was used to create relationships
