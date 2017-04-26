//后端js页面 负责与数据库绑定

var express = require('express');
var router = express.Router();
var mysql = require('mysql');

// ********************
var connection = mysql.createConnection({
    host: 'localhost', //数据库地址
    port: 3306, //端口  不要加引号
    user: 'root', //数据库用户名
    password: 'root', //数据库密码
    database: 'WYY' //数据库名
});

connection.connect(); //连接数据库
// **********************************************************

/* GET users listing. */
router.post('/musics', function(req, res, next) {
    var news = {};
    news.name = req.body.name;
    news.author = req.body.author;
    news.src = req.body.src;
    news.time = req.body.time;
    news.special = req.body.special;
    news.cover=req.body.cover;
    news.sc=req.body.sc;
    // console.log(news);
    connection.query('INSERT INTO `music` set ?', news, function(err, rows, fd) { //利用数据库传输数据 将前端发来的 数据 添加在数据库当中
        if (err) {
            res.send(err)
        } else {
            res.send('成功了')
        }
    });
});
//********************************************************
// 抓取全部的数据
router.all('/allmusic', function(req, res, next) { //post方式路由
    // console.log(req.body);
    connection.query('SELECT * FROM `music`', function(err, rows, fd) { //对数据库进行全部搜索 回调 搜索内容在rows中
        res.json(rows); //将数据库取出的数据抛出  抛出地址为 ／allmusic
    });
});
//********************************************************

router.all('/allsc',function (req,res,next) {
  connection.query('SELECT * FROM `box`',function (err,rows,fd) {
    res.json(rows)
  });
});
//*******************************************************
module.exports = router;
