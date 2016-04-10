


Finding Specific Nodes by Name Query

This query displays all of the candidates beginning with "d" grouped together by party.
The count row displays the amount of canididates starting with "d" in each party. 
They are ordered ascendingly based on the count of candidates.
Headings appropriately named using "as".

MATCH 													//finds a certain node
	(candidate1:Candidate)										//finds all the canidate nodes
WHERE 													//the condition clause
	candidate1.Name STARTS WITH "D"									//gets all candidates starting with "d"
RETURN 													//the condition to display/return the condition
	candidate1.party as Party, collect(candidate1.Name) as Candidate, count(*) as Count		//sorting by
ORDER BY 												//values of count sorted by ascending (1..2..3...) 
	count(*) ASC											