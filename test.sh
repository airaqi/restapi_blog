# posts post data
echo "---------------------------------------------------------"
echo " 1:8 Adding posts to store and display all posts"
echo "---------------------------------------------------------"
echo "Post 0:"
curl -w "\n" -H "Content-Type: application/json" -X POST -d '{"name": "Top 10 ES6 Features (1)", "url":"http://webapplog.com/es6", "text": ""}'  "http://localhost:3000/posts" 
echo 
echo "Post 1:"
curl -H "Content-Type: application/json" -X POST -d '{"name": "Top 10 ES6 Features (2)", "url":"http://webapplog.com/es6", "text": ""}'  "http://localhost:3000/posts" 
echo 
echo "Post 2:"
curl -w "\n" -H "Content-Type: application/json" -X POST -d '{"name": "Top 10 ES6 Featuresi (3)", "url":"http://webapplog.com/es6", "text": ""}'  "http://localhost:3000/posts" 
# display all posts
echo 
echo "Display all:"
curl -w "\n" "http://localhost:3000/posts"
read -p "Press any key to continue..."
echo
# updates post data at specific id
echo "---------------------------------------------------------"
echo "2:8 Updating post 0 name and display all posts"
echo "---------------------------------------------------------"
echo "Update post:"
curl -w "\n" -H 'Content-Type: application/json' -X PUT -d '{"name": "Top 10 ES6 Features Every Developer Must Know", "url":"http://webapplog.com/es6", "text": ""}' "http://localhost:3000/posts/0"
# display all posts
echo "Display all:"
curl -w "\n" "http://localhost:3000/posts" 
read -p "Press any key to continue..."
echo
echo "---------------------------------------------------------"
echo "3:8 Delete first post and display all posts"
echo "---------------------------------------------------------"
# deletes post data at specific id
echo "Delete post 0:"
curl -w "\n" -X DELETE "http://localhost:3000/posts/0" 
echo 
echo "Display all:"
curl -w "\n" "http://localhost:3000/posts" 
read -p "Press any key to continue..."
echo 
echo "---------------------------------------------------------"
echo "4:8 Adding two comments to second post and diplay all posts"
echo "---------------------------------------------------------"
# add comment on the post
echo "Add comment 0 of post 0:"
curl -w "\n" -H "Content-Type: application/json" -X POST -d '{"text": "Cruel…..var { house, mouse} = No type optimization at all"}' "http://localhost:3000/posts/0/comments"
# add another comment
echo 
echo "Add comment 1 of post 0:"
curl -w "\n" -H "Content-Type: application/json" -X POST -d '{"text": "(p1,p2)=>{ … } ,i understand this ,thank you !"}' "http://localhost:3000/posts/0/comments"
echo 
echo "Display all posts:"
curl -w "\n" "http://localhost:3000/posts" 
read -p "Press any key to continue..."
echo 
echo "---------------------------------------------------------"
echo "5:8 Display all first post comments only"
echo "---------------------------------------------------------"
echo "Display all comments of post 0:"
curl -w "\n" "http://localhost:3000/posts/0/comments"
read -p "Press any key to continue..."
echo
echo "---------------------------------------------------------"
echo "6:8 Updating first post's first comment and display all posts"
echo "---------------------------------------------------------"
# updates post comment
echo "Update comment 0 of post 0:"
curl -w "\n" -H "Content-Type: application/json" -X PUT -d '{"text": "I think you’re undervaluing the benefit of ‘let’ and ‘const’."}' "http://localhost:3000/posts/0/comments/0"
echo 
echo "Display all posts:"
curl -w "\n" "http://localhost:3000/posts" 
read -p "Press any key to continue..."
echo
echo "---------------------------------------------------------"
echo "7:8 Delete post 0 comment 1, and display all posts"
echo "---------------------------------------------------------"
# delete post comment
echo "Delete comment 1 of post 0:"
curl -w "\n" -X DELETE "http://localhost:3000/posts/0/comments/1"
echo
echo "Display all posts:"
curl -w "\n" "http://localhost:3000/posts" 
read -p "Press any key to continue..."
echo
echo "---------------------------------------------------------"
echo "8:8 Delete post 0 with all comments, and dispay all posts"
echo "---------------------------------------------------------"

# delete post with all comments
echo "Delete post 0 with all comments:"
curl -w "\n" -X DELETE "http://localhost:3000/posts/0"
echo
echo "Display all posts:"
curl -w "\n" "http://localhost:3000/posts" 
read -p "Press any key to continue..."
echo 

# clean remaining post, and display empty posts
# so that you can restart testing without restarting
# the server.
echo "----------------------------------------------------------"
echo "Cleaning up store..."
echo "----------------------------------------------------------"
echo "Cleaning up the remaining store post, and display empty"
echo "store, so that you can start testing again without the "
echo "need to restart the server"
echo 
echo "Delete post 0:"
curl -w "\n" -X DELETE "http://localhost:3000/posts/0"
echo
echo "Display all posts:"
curl -w "\n\n" "http://localhost:3000/posts" 
echo "-----------------------------------------------------------"
echo 
echo "Thank you for testig my assignment"
echo "Have a nice day :)"
echo
echo "Ahmed Iraqi"
