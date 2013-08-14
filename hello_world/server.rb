require 'sinatra'

# We are requesting our application to respond to HTTP GET request to the path '/';
# Our response is composed by the block we provided for behaviour;
# In other words the block we are providing to GET is the response that we want the GET function to callback;              
get '/' do        
  'Hello, World!'	
end  
