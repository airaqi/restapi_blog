# posts post data
curl -H "Content-Type: application/json" -X POST -d '{"name": "Top 10 ES6 Features", "url":"http://webapplog.com/es6", "text": ""}'  "http://localhost:3000/posts" 

# updates post data at specific id
curl -H 'Content-Type: application/json' -X PUT -d '{"name": "Top 10 ES6 Features Every Developer Must Know", "url":"http://webapplog.com/es6", "text": ""}' "http://localhost:3000/posts/0"

# gets post data
curl "http://localhost:3000/posts" 

# deletes post data at specific id
curl -X DELETE "http://localhost:3000/posts/0" 

# post another post data
curl -H "Content-Type: application/json" -X POST -d '{"name": "Top 10 ES6 Features", "url": "http://webapplog.com/es6", "text": ""}' "http://localhost:3000/posts"

# add comment on the post
curl -H "Content-Type: application/json" -X POST -d '{"text": "Cruel…..var { house, mouse} = No type optimization at all"}' "http://localhost:3000/posts/0/comments"

#ll add another comment
curl -H "Content-Type: application/json" -X POST -d '{"text": "(p1,p2)=>{ … } ,i understand this ,thank you !"}' "http://localhost:3000/posts/0/comments"

# updates post comment
curl -H "Content-Type: application/json" -X PUT -d '{"text": "I think you’re undervaluing the benefit of ‘let’ and ‘const’."}' "http://localhost:3000/posts/0/comments/0"

# get post data
curl "http://localhost:3000/posts"

# get post comments
curl "http://localhost:3000/posts/0/comments"

# delete post comment
curl -X DELETE "http://localhost:3000/posts/0/comments/1"

# delete post with all comments
curl -X DELETE "http://localhost:3000/posts/0"
