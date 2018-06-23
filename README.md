# REST API, Blog Assignment
The application is devided into several modules
* server.js - contains all the main application server module
* routes - contains all main components of the application 
* routes/posts.js - handles all posts CRUD functions
* routes/comments.js - handles all comments CRUD functions. 

# Usage
1. Download the module or clone the module using git clone as follows:
```
    git clone https://github.com/airaqi/restapi_blog.git
```
2. Install all required modules using 
```
    npm install
```
3. Run the application either using 
```
    node server.js
```
or using 
```
    npm start
```
4. Use  curl or Postman for testing the application, or you can use the test.sh file located hereunder containing 
the basic API calls for adding, updating, getting and delteing both posts and comments.
