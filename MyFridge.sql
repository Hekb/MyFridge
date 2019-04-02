DROP DATABASE IF EXISTS MyFridge;
CREATE DATABASE MyFridge;
USE MyFridge; /*like using namespace std */
-- can comment like this too

-- right click in Schemas and refreshstudent to see the table you just made 

/*have to create either Class or Student table first - 
they both must be created before the grades table (since Grades uses them)*/
CREATE TABLE Users (
	userID INT(11) PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

INSERT INTO Users (username, password)
	VALUES ('Admin', 'root');
    
CREATE TABLE Ingredients(
    username VARCHAR(50) NOT NULL,
    ingredientName VARCHAR(75) NOT NULL
);    

INSERT INTO Ingredients (username, ingredientName)
	VALUES ('Admin', 'toast'),
    ('Admin','butter');

CREATE TABLE CustomRecipes(
    username VARCHAR(50) NOT NULL,
    recipeName VARCHAR(50) NOT NULL,
    ingredients VARCHAR(500) NOT NULL,
    steps VARCHAR(1000) NOT NULL
);

INSERT INTO CustomRecipes (username, recipeName, ingredients, steps)
	VALUES ('Admin', 'Burnt Toast', '1 slice bread, 1 tbsp butter', '1. Butter toast / 2. Burn it');
        
CREATE TABLE BookmarkedRecipes(
    username VARCHAR(50) NOT NULL,
    recipeName VARCHAR(50) NOT NULL,
    imageURL VARCHAR(200) NOT NULL,
    recipeURL VARCHAR(200) NOT NULL
);

INSERT INTO BookmarkedRecipes (username, recipeName, imageURL, recipeURL)
	VALUES ('Admin', 'Burnt Toast', 'www.aURL.com', 'www.anotherURL.com'),
    ('Admin', 'Good Toast', 'www.aURL.com', 'www.anotherURL.com');

