var express=require('express');
var app=express();
app.get('/',function(req,res)
{
res.send('Hello Docker, First step towards Containerization using docker');
});
var server=app.listen(3000,function() {});