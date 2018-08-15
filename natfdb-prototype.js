var express = require("express");
var https = require("https")
var app = express();
var router = express.Router();

app.use(express.static("public"));
app.use(express.static("data"));
router.use(function (req,res,next) {
    console.log("/" + req.method);
    next();
  });
var path = __dirname + '/public/';
router.get("/",function(req,res){
    res.sendFile(path + "index.html");
  });
  
  router.get("/add",function(req,res){
    res.sendFile(path + "add-encounter.html");
  });
  
  router.get("/history",function(req,res){
    res.sendFile(path + "history-encounter.html");
  });
  
  router.get("/profile",function(req,res){
    res.sendFile(path + "profile.html");
  });

  router.get("/contact",function(req,res){
    res.sendFile(path + "contact.html");
  });

  app.use("/",router);
  
  app.use("*",function(req,res){
    res.sendFile(path + "404.html");
  });
  
  app.listen(3000,function(){
    console.log("Live at Port 3000");
  });