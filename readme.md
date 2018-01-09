Bash http simple static page server
===================================

Trying to utilize tools to set up a simple http static page server under linux bash environment!  
Just for fun!  
This 'server' takes the advantage of ncat and provide the basic http services under ncat's tcp connections.  
The first version just implement 'GET' method with only two status -- '200 ok' and '404 notfound'  

usage
-----
To start the server: "./start.sh". This will start the server listenning at "http://localhost:8080"  
Then you can check the page content with your browser.  

**Have a Fun!**
