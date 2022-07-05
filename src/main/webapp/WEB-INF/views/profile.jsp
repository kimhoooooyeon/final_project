<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:title" content="호연 - 프로필 링크">
    <meta property="og:description" content="안녕하세요">
    <meta property="og:image" content="공유할 이미지">
    <title>호연 - 프로필 링크</title>
<style type="text/css">
  
  body{
  	background-color: #44388A;
  }
  .profile{
  width: 100px; height: 100px; 
  border-radius: 100%;
  border: 2px solid white;
  
  background-image: url('');
  background-position: center;
  background-size: cover;
  }
  .main{
  	color: white;
  	font-size: 20px;
  	
  	margin: 30px 0 10px 0;
  }
  .sub{
  	color: white;
  	font-size: 14px;
  	margin-top: 0;
  }
  .wrap{
  	width: 300px;
  	margin: 30px auto 0px auto;
  	
  	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
  	
  }
  .wrap a{
  	width: 300px;
  	height: 50px;
  	
  	background-color: white;
  	border-radius: 10px;
  	
  	margin-bottom: 10px;
  	
  	font-size: 14px;
  	font-weight: bold;
  	color: #44388A;
  	
  	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	
	text-decoration: none;
	
	box-shadow: 3px 3px 5px 0px black;
  }
  
  .wrap a:hover {
	background-color: #f2f2f2;
}
  	
</style>
</head>
<body>
	<div class="wrap">
    	<div class="profile"></div>
    	<h1 class="main">호연</h1>
    	<p class="sub">안녕하세요</p>
   
    
    <a target="_blank" href="">링크</a>
	<a target="_blank" href="">링크</a>
	<a target="_blank" href="">링크</a>
	<a target="_blank" href="">링크</a>
	
	 </div>
</body>
</html>