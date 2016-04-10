Sort by Age Query



This query displays the candidates that are in a certin age range (eg.50-60) in an
ascending order.
The value can be change depending on your preference.
The list can be ordered by name too by using "ORDER BY candidate1.Name ASC" instead.


MATCH 								//finds a certain node			
    (candidate1:Candidate)					//finds all the canidate nodes
WHERE 								//the condition clause
    candidate1.age >= 50 AND candidate1.age <= 60		//gets all the candidates with age that are equal to between or the values 50 - 60
RETURN 								//condition used to display/return value/info
    candidate1.Name, candidate1.age				//display the names and ages of the candidates
ORDER BY 							//sort by
	candidate1.age ASC					//sort by candidates age in ascending order