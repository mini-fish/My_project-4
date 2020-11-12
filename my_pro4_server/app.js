const express = require('express');
const server = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const md5 = require('md5');
const mysql = require('mysql');
const pool = mysql.createPool({
  //MySQL数据库服务器的地址
  host:'127.0.0.1',
  //端口号
  port:3306,
  //数据库用户的用户名
  user:'root',
  //数据库用户的密码
  password:'',
  //数据库名称
  database:'mk_cake',
  //最大连接数据
  connectionLimit:10
});


server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080']
}));

server.use(bodyParser.urlencoded({
  extended: false
}));

//------开始写项目--------
//1.用户登录
server.post('/login',(req,res)=>{
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	var sql='select * from user where uname=? and upwd=?';
	pool.query(sql,[uname,upwd],(err,result)=>{
		if(err) throw err;
		console.log(result);
		if(result.length==0){
            res.send({message:'登录失败',code:0})
        }else{
            res.send({message:'登录成功',code:1})
        }
	})
})

//2.用户注册
server.post('/register',(req,res)=>{
	var obj=req.body;
	var sql="select * from user where uname=?";
	pool.query(sql,[obj.uname],(err,result)=>{
				if(err) throw err;
				if(result.length>0){
					res.send('0')
				}else{
					var sql="insert into user set ?";
					pool.query(sql,[obj],(err,result)=>{
						if(err) throw err;
						if(result.affectedRows>0){
							res.send({message:'注册成功！',code:1});
						}
				})
			}
	})
})
//3.分类第一项
server.get('/classifyOne',(req,res)=>{
	var obj=req.body;
	var sql="select * from classify_one";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({result:result});
			// console.log(result);
		}else{
			res.send('0');
		}
	});
})
//4.分类第二项
server.get('/classifyTwo',(req,res)=>{
	var obj=req.body;
	var sql="select * from classify_two";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({result:result});
		}else{
			res.send('0');
		}
	});
})
//5.分类第三项
server.get('/classifyThree',(req,res)=>{
	var obj=req.body;
	var sql="select * from classify_three";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({result:result});
		}else{
			res.send('0');
		}
	});
})
//6.分类第四项
server.get('/classifyFour',(req,res)=>{
	var obj=req.body;
	var sql="select * from classify_four";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({result:result});
		}else{
			res.send('0');
		}
	});
})
//7.分类第五项
server.get('/classifyFive',(req,res)=>{
	var obj=req.body;
	var sql="select * from classify_five";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({result:result});
		}else{
			res.send('0');
		}
	});
})

//4.查询鲜花商品详细信息
server.get('/details',(req,res)=>{
	var id =req.query.pid;
		console.log(id);
	  var sql="select * from details where pid = ?";
	  pool.query(sql,[id],(err,result)=>{
		  if(err) throw err;
		  if(result.length>0){
			  res.send(result);
			  console.log(result)
		  }else{
			  res.send('0');
		  }
	  });
  })

//5.轮播图
server.get('/carousel',(req,res)=>{
	var obj=req.body;
	var sql="select * from carousel";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			res.send('0');
		}
	});
})
// 6.菜单请求
server.get('/lists',(req,res)=>{
	var obj=req.body;
	var sql="select * from index_list";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({result:result});
		}else{
			res.send('0');
		}
	});
})

server.listen(3000,()=>{
  console.log('server is running...');
});
