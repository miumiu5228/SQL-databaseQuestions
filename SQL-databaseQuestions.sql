
/*
Company has diverse offices in several countries, which manage and co-ordinate the project of that country.
Head office has a unique name, city, country, address, phone number and name of the director.
*/
CREATE TABLE Head ( Name VARCHAR(20) NOT NULL PRIMARY KEY,  City VARCHAR(20), Country VARCHAR(20), Address VARCHAR(20), PhoneNumber VARCHAR(20), DirectorName VARCHAR(20))

/*
Every head office manages a set of projects with Project code, title, project starting and end date, assigned budget and name of the person in-charge. One project is formed by the set of operations that can affect to several cities.
*/
CREATE TABLE Project ( Name VARCHAR(20) FOREIGN KEY REFERENCES Head(Name),  ProjectCode INT, Title VARCHAR(20), StartDate DATE, EndDate DATE, Budget INT, ChargePerson VARCHAR(20))

/*
We want to know what actions are realized in each city storing its name, country and number of inhabitants.
*/
CREATE TABLE CityProject ( City VARCHAR(20), Country  VARCHAR(20), NumberOfInhabitants INT, ProjectCode INT)

/*
Design a database for a lending company which manages lending among people (p2p lending)
Lenders that lending money are registered with an Id, name and available amount of money for the financial operations. 
*/
CREATE TABLE Lenders ( Id  INT, Name VARCHAR(20),  Amount INT)

/*
Borrowers are identified by their id and the company registers their name and a risk value depending on their personal situation.
CREATE TABLE Borrowers ( Id  INT, Name VARCHAR(20),  riskValue INT)
When borrowers apply for a loan, a new loan code, the total amount, the refund deadline, the interest rate and its purpose are stored in database. 
*/
CREATE TABLE Loan ( LoanCode  INT, Amount INT, RefundDate DATE, InterestRate INT, Purpose VARCHAR(20))

/*
Lenders choose the amount they want to invest in each loan. A lender can contribute with different partial amounts to several loans.
*/
CREATE TABLE InvestLoan ( LoanCode  INT, LenderID  INT, BorrowerID INT, Amount INT)

/*
Design a database to maintain the menu of a restaurant.
Each course has its name, a short description, photo and final price.
*/
CREATE TABLE Course ( Name VARCHAR(20) NOT NULL PRIMARY KEY, Description VARCHAR(20), Photo  VARCHAR(100), Price INT)

/*
Each course has categories characterized by their names, short description, name of the employee in-charge of them.
*/
CREATE TABLE CourseDetails ( Name VARCHAR(20) FOREIGN KEY REFERENCES Course(Name), Description VARCHAR(20), Employee VARCHAR(100))

/*
Besides the courses some recipes are stored. They are formed by the name of their ingredients, the required amount, units of measurements and the current amount in the store.
*/
CREATE TABLE Recipes ( Name VARCHAR(20), Ingredient VARCHAR(20), Amount VARCHAR(100), MeasurementUnit VARCHAR(20), InStore INT)
