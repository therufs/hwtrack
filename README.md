Homework Tracker
================

Next:
* Add validations to prevent assignment date later than due date
* Group Assignments by ClassAssignment ID
* Make completed assignments only show up if there are complete assignments.
* Finish styling
* Add logout machinery
* Add nav bar

Todo:  
* Generate appropriate error messages when login fails
* Decide how Assignments show/edit pages should work
* Put links to complete homework on class_assignments/index page
* Make User pickable from Assignment/ClassAssignment page. (?)
* Make already-created Class Assignments retroactively assignable, preferably without having to visit each User page individually. (Maybe a tickybox grid on users/index?)

Status 6/26:
* Add links to edit assignments from user/:id page.


Status 6/23:
* Sign in works; signed in users see different root page vs non-signed-in
* Stub in root page
* Begin Foundation implementation.

Status 6/22:
* Implement authentication
* Incomplete & overdue assignments are highlighted in yellow on assignments/index and users/:id.
* Not-yet-assigned assignments are not shown.
* Assignments completable from User page.
* Basic validations added on User and ClassAssignment.
* Markdown parser for assignment description functional.
* Assignees show completed status.
* Assignees show up the correct number of times.
* A newly created user gets no assignments assigned to them.  

Status 6/18:
* class_assignment/show shows a list of users it's assigned to
* Added assignment list to user view.
* Creating a new Class Assignment generates an Assignment to belong to each User.
* Any User can create a Class Assignment.  
