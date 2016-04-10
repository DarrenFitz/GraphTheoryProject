# Irish Constituencies Neo4j Database
###### Darren Fitzpatrick, G00311853

## Introduction
This Project is Database of all the Irish politicians displayed by nodes. 
They contain information such as their name, gender, constituency, party, and age.
The Project also has nodes to represent the constituencies and parties.
The Project is a representation of how they are all connected and their relationships.


## Database
I created the project by using queries to insert the nodes to represtent candidates, constituencies and parties.
I used the 'CREATE' query to make them.
Adding the relevent information into the nodes as such as 'name:', 'party:', 'constituency:', etc.
These help us link nodes to each other for relationships and doing queries.
Used 'MATCH','WHERE', and 'CREATE' for the reltionships.


## Quick Queries Explanation
* The First query show all the parties in relation to their candidates.
* The Second shows ordere candidates based on age.
* The Third Candidates starting with "d" and asociated party 

#### Party's Candidates Query
This query displayes only the relationship between the parties and their candidates.
Its useful if you only care about that those relationships and dont need to see the constituencies.

```cypher
START 
    candidate1=node(*)
MATCH 
    candidate1-[:IS_IN]-(p1)
RETURN
    distinct candidate1
```

#### Sort by Age Query
This query displays the candidates that are in a certin age range (eg.50-60) in an
ascending order. 
The value can be change depending on your preference.
The list can be ordered by name too by using "ORDER BY candidate1.Name ASC" instead.

```cypher
MATCH 
    (candidate1:Candidate)
WHERE 
    candidate1.age >= 50 AND candidate1.age <= 60
RETURN 
    candidate1.Name, candidate1.age
ORDER 
    BY candidate1.age ASC
```

#### Finding Specific Nodes by Name Query
This query displays all of the candidates beginning with "d" grouped together by party. The amount or count value is displayed beside the candidates and their party. They are ordered ascendingly based on the count of candidates. Headings appropriately named. 

```cypher
MATCH
	(candidate1:Candidate)
WHERE 
	candidate1.Name STARTS WITH "D"
RETURN 
	candidate1.party as Party, collect(candidate1.Name) as Candidate, count(*) as Count
ORDER BY 
	count(*) ASC
```

## My References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database, and useful query tips.
2. The [Candidates](http://www.thejournal.ie/thejournal-ie-candidate-database-2537709-Feb2016/) in the 2016 Election.
3. For [Constituencies](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland) information like population and seats.