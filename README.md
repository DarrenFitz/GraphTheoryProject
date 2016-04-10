# Irish Constituencies Neo4j Database
###### Darren Fitzpatrick, G00311853

## Introduction
This Project is Database of all the Irish politician displayed as nodes. They contain information such as their name, gender, constituency, party, and age;
The Project also has nodes to represent the constituencies and parties.
The Project is a representation of how they are all connected and their relationships.


## Database
Explain how you created your database, and how information is represented in it.
I created the project by using queries to insert the nodes to represtent candidates, constituencies and parties.
I used the 'CREATE' query to make them.
Then 'MATCH','WHERE', and 'CREATE' for the reltionships.


## Queries
*The First query show all the parties in relation to their candidates.
*The Second shows ordere candidates based on age.
*The Third diplays independant party with 4 seats constituencies. 
Then explain them one by one in the following sections.

#### Query one title
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

#### Query two title
This query displays the candidate that are of the age 50 or above in an
ascending order. 
The value can be change depending on your preference
The list can be ordered by name too by using "ORDER BY candidate1.Name ASC" instead.

```cypher
MATCH 
    (candidate1:Candidate)
WHERE 
    candidate1.age >= 50
RETURN 
    candidate1.Name, candidate1.age
ORDER 
    BY candidate1.age ASC
```

#### Query three title
This query displays all the Independant candidates for the Constituencies with 4 seats.
It sets a limit of 10 for constituencies.

```cypher
MATCH 
    p1 =(:Candidate { party: "Independent" })-[:FROM]-(:Constituency { seats: 4 })
RETURN 
    p1
LIMIT 
    10;

```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. The [Candidates](http://www.thejournal.ie/thejournal-ie-candidate-database-2537709-Feb2016/) in the 2016 Election.
3. For [Constituencies](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland) information like population and seats.