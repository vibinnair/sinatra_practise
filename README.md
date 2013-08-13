sinatra_practise
================
A list of hobby projects build using sinatra.


Explanation:
================
We are requesting our application to respond to HTTP GET request to the path '/';
Our response is composed by the block we provided for behaviour;
In other words we are providing the required response by passing a block to the GET function ;              

get '/' do        -----> Here '/' is called as route to which our sinatra application responds;        
  'Hello, World!'	
end  
