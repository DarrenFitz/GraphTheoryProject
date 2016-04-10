Party's Candidates Query

This query displayes only the relationship between the parties and their candidates.
Its useful if you only care about that those relationships and dont need to see the constituencies.

START 					//Gets a starting point
    candidate1=node(*)			//Picks all candidates nodes
MATCH 					//find/get clause
    candidate1-[:IS_IN]-(p1)		//get all parties that candidates has
RETURN					//display clause
    distinct candidate1			//display candidates on screen
					//DISTINCT retrieves only unique rows depending on the columns that have been selected to output