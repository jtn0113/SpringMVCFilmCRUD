## MVC Film Site
The main goal for our MVC Film Site project was to create a web 
application program that allows the user to search for a film from a 
film database.

### Description
The web application displays 3 options for the user to choose from. 
1. Search Film by ID
2. Search Film by Keyword
3. Create New Film

When the following options are selected, the user is brought to a new 
page that displays the film attributes:
 - Id
 - Title
 - Description
 - Release Year
 - Language Id
 - Rental Duration
 - Rental Rate
 - Length
 - Replacement Cost
 - Film Rating
 - Category
 - Actors

When the user chooses the first option, search film by id, they are prompted to enter a qualifying id 
number to search into the database to match that film's id with an existing film id or a new film id that has been created. 
If there is not a qualifying film, then the application reads error no film 
has been found.

The second option allows the user to search any films that contains a keyword of their choosing, 
then displaying all films that include the keyword in the description or in title. If the keyword does 
not return any matches then it will display a message saying it is unable to find a film.

The third option allows the user to fill out a form that contains film properties which then will be 
sent out to the database to be saved. A new film id will be created and displayed to the user 
where they can use that new film id and place it into the first option to verify that their new film 
has been successfully added to the database. 

Lastly, whatever option that the user chooses, they are able to make modifications to the film like 
being able to delete a film or just simply update/edit an existing film. As well as always including a 
back to homepage link in every page. 

### Technologies Used
- Java
- Gradle
- MAMP
- Atom
- Tomcat v.8.5 server 
- SpringTootSuite4
- Github
- SQL
- HTML/CSS
- JSP
- Spring Framework Servlets 

### Lessons Learned
The main focus on this project was collaborating together as a team. Learning to debug as we go and implementing new creative ideas if 
an error were to occur in our code. Our biggest challenge was figuring out
why whenever we updated a film, our database would not save it. Thus leading to the film never being updated in the first place.
While walking through our issue, we noticed that the server was updating the film but since there was no link for 
the server to connect to making it seem like the update did not go through. So we created a new editFilm.jsp file where it 
redirected the edited film to a new page where it displays all film attributes including 
the users added modifications to the film. 

We also added a html film that represents if a delete, insert or update fails then the user is 
redirected to another page where it 
displays as a message called request failed.  

While working as a team we were also able to practice how to use Github as a group. Learning 
how important it is to pull and then push our work to make sure we stayed up to date with the 
work we have put in and to especially avoid any merging conflicts.

### Our Team 

Pamela Leon 
GitHub: https://github.com/pamelaleon 

John Nichols
GitHub: https://github.com/jtn0113

Natasha Gough
Github: https://github.com/ngough87


