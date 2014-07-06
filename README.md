Homework Tracker
================

Next:
* Require creation of users before creation of class assignment, or warn that no one will have it assigned. --> This can be solved by requiring login + existence of students to create class assmt.
* Finish styling
* QA button to close class_assignment creation modal -- works now but dunno why
* Differentiate admins (teachers):
  * must be admin to create class_assignment
  * must be admin to delete class_assignment
  * must be admin to delete users arbitrarily
  * admins don't get their own (or any?) assignments assigned to them

Todo:  
* Implement more modals as would be spiffy
* Generate appropriate error messages when login fails
* Put links to complete homework on class_assignments/index page
* Make User pickable from Assignment/ClassAssignment page. (?)
* Make already-created Class Assignments retroactively assignable, preferably without having to visit each User page individually. (Maybe a tickybox grid on users/index?)

Status 7/6:
* Assignments disappear when class_assignment is destroyed
* Clean up unnecessary links & remove corresponding controller actions
* Late assignment highlighting works on user pages
* Added nav bar

Status 7/2:
* Implement signout.

Status 6/26:
* Fix wonky column headers in assignments index
* "Completed assignments" section only show up if user has complete assignments.
* Assignments index page shows each student's assignment per ClassAssignment
* Add links to edit assignments from user/:id page.
* Added validation to prevent assignment date later than due date

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
