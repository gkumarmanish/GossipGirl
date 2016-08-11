
var express	=	require('express');
var app		=	express();
var path	=	require("path");
var mysql	=	require("mysql");
var http	=	require('http').Server(app);
var io		=	require('socket.io')(http);
var router	=	express.Router();

/* Creating POOL MySQL connection.*/

var pool    =    mysql.createPool({
      connectionLimit   :   100,
      host              :   'localhost',
      user              :   'root',
      password          :   '',
      database          :   'gossipGirl',
      debug             :   false
});

router.get('/',function(req,res){
	res.sendFile(__dirname + '/index.html');
});

app.use('/',router);

//Define Function for getting the Request
io.on('connection',function(socket){
	console.log('We have user connected !');
        socket.on('comment added',function(data){
		addComment(data.user,data.comment,function(error,result){
			if(error) {
				io.emit('error');
			} else {
				io.emit("notify everyone",{user : data.user,comment : data.comment});
			}
		});
	});
});

//Function to insert the data in mysql datatable and return respose when data inserted
var addComment = function(user,comment,callback) {
	var self = this;
	pool.getConnection(function(err,connection){
		if(err) {
//                        Release the connection
			connection.release();
			return callback(true,null);
		} else {
			var sqlQuery = "INSERT into ?? (??,??) VALUES (?,?)";
			var inserts = ["UserComment","UserName","Comment",user,comment];
			sqlQuery = mysql.format(sqlQuery,inserts);
                        //Insert data in database and respose
			connection.query(sqlQuery,function(err,rows){
				connection.release();
				if(err) {
					return callback(true,null);
				} else {
					callback(false,"comment added");
				}
			});
		}
		connection.on('error', function(err) {
			return callback(true,null);
        });
	});
}
//Listen the http request on port 3000
http.listen(3000,function(){
    console.log("Listening on 3000");
});
