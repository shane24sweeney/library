
#Ruby On Rails Program 1
#Team Members:
Kellie Jos
Moharnab Saikia 
Shane Sweeney
#Overview Library Web Application Deployment: 
[Heroku URL](https://fathomless-refuge-8356.herokuapp.com)
#How to Use LibSys:
#Preconfiged Admin: email: admin@ncsu.edu Password:password
Download from Github at: github.com/ssweene2/RubyOnRailsProgram1- Using Ubuntu Terminal navigate to the following directory and run rails server: /trunk/rails server if the following is encountered: Could not find pg-0.18.3 in any of the sources Run `bundle install` to install missing gems. please run the following command: bundle install –without production
Then run rails server again.
##Extra features implemented: Recommendations and email notifications
##Note:Whenever a user is deleted all the checkout history is also deleted.Also you can't delete a book which has been checked out or a user who has a book checked out.
#Admin Features:
##Log in as admin:
 Select->Admin Login from the right hand side of the page. Enter the following for each field: Email: admin@ncsu.edu  Password:password Select ->login.
##Edit admin profile: 
Follow steps to log in as admin above. Select ->Admins -> Show (on user with email: admin@ncsu.edu) Select-> Edit. Edit Name value and select ->Update Admin.
Logout After recieving the update message from updating the admin profile above, select Logout.
##Creating other admins:
 Log in as admin as described above. If you encounter issues logging in with admin simply perform a refresh on the web page. Select ->Admins ->New Admin. Fill out the fields for Name, Email, Password and Password confirmation. Then select ->Create Admin. For example: Name: sean Email: james@yahoo.com Password: 1234 Password confirmation: 1234 Select Create Admin (Observe you get an error saying password is too short) Re-enter 12345678 for Password and Password confirmation. Select Create Admin.
##List other admins:
 Select admins after successfully creating above admin.

##View details of admins except password:
 After listing the admins above, select Show on admins without email as admin@ncsu.edu password will not be shown other than name and email.
##Delete other admins and preconfigured:
 After listing the admins above. Select admins other than email of admin@ncsu.edu. (Here admin@ncsu.edu is both the admin and the preconfigured admin.) Select Destroy Select OK (Are you sure)

##Add books:
 Login as Admin as above. Select Books Scroll down and select New Book Enter Isbn, Title, Desc and Author and select Create Book. For example: Isbn: 12345678 Title: Rails Desc: Great Book Author: Rails Genius Create Book
Select Back and Verify book has been created.
##View list of all books:
 Login as Admin as above. Select Books
##Details of books:
 Login as Admin as above. Select Books Select edit on any book and select show
##Edit Details of books:
Login as Admin as above. Select Books Select Edit on any book and add 1 to Isbn field and select update book

##Check out books for user:
 Login as Admin as above. Select Books with status In Library Select Edit on the book Select Show Enter user email address Select Check Out

##Return books for user:
 Login as Admin as above. Select Books with status Checked Out Select Edit on the book Select Show Select Return Book

##View checkout history of book:
 Login as Admin as above. Select Books Select Edit on a book Select Show Select See Checkout History
##View list of all users: 
Login as Admin as above. Select Users
##View checkout history of user:
 Login as Admin as above. Select Users Select Checkout History
##View Recommendations and approve:
 Login as Admin as above. Select Recommendations.Then select Accept.The edit recommendation page comes up.Then Click Submit Recommendation.
#User functions:
##Sign up as user: Select Sign Up Enter the following for each field: Email: user@ncsu.edu Name: User Password:	password Select Sign Up.
##Logout: After user is created, select Logout in the header.
##Edit user's profile: Follow steps to log in as users above. Select user name Select Edit Edit Name value and select Update User.
##Create new Recommendation: Follow steps to log in as users above. Select user name Select New Recommendation Enter Isbn, Title, Desc and Author and select create recommendation
##View Recommendations: Follow steps to log in as users above. Select user name Select Recommendations
##View list of all books: Login as User as above. Select Books
##Checkout book: Login as User as above. Select Books Select Check Out on a book
##Return book: Login as User as above. Select Books Search for books with status Checked Out Select Return on a book
##View Checkout History: Login as User as above. Select user name Select Checkout History
##Create Notification:  Go to book listings.Then select a book that has been checked out.Click create notification.You'll get an email when the book is returned.
