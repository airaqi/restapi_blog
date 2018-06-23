# REST API, Blog Assignment
## Introduction
The application is devided into several modules
* server.js - contains all the main application server module
* routes - contains all main components of the application 
* routes/posts.js - handles all posts CRUD functions
* routes/comments.js - handles all comments CRUD functions. 

## Design Notes
* The store has been defined as global in order to be accessable from all modules.
* ```JSON.stringfy``` has been user for readable JSON output.
* Posts names' added are validated if they already exists in the store, if so an error message is returned, rather the same approuch are ignored for the comments, since peoples' comments tend to be identical and copied, so no point in preventing comments from being replicated.
* Middleware is used to capture malformed JSON messages, and respond with HTTP error 400 to user.

## Usage
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
4. Use  curl or Postman for testing the application, or you can use the ```./test.sh``` file located hereunder containing 
the basic API calls for adding, updating, getting and delteing both posts and comments.
