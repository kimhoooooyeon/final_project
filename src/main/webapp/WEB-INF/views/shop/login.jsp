<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<style>
		.maindiv{
			text-align: center;
			margin-top: 50px;
			margin-bottom: 50px;
			margin-right: 150px;
			margin-left: 300px;
			width: 650px;
		}
	</style>
	
	<style>
		.maindiv2{
			text-align: center;
			width: 650px;
			max-height: 400px;
			border: 1px solid #BDBDBD;
			padding: 50px;
		}
		
		.manual{
			text-align: left;
		}
		
	</style>
	

<title>사장님 로그인</title>

</head>

<body class="text-center">
    
	<div class="maindiv" align="center">
	<main class="form-signin w-100 m-auto">
  <form>
    
    <h1 class="h3 mb-3 fw-normal">
    	<font color="#5F00FF" size="30px">요기요</font>&nbsp;
    	<font color="#5F00FF" size="15px">사장님/비즈센터</font>
    </h1>
    
	<div class="maindiv2" align="center">
    
    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">아이디</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>

	<a href="#"><font color="#5F00FF">회원가입</font></a>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    <p class="mt-5 mb-3 text-muted">
    
    <ul class="manual">
	  	<li>입점신청 후 처음 방문하시는 사장님은 기존 회원 계정 인증 통해<br> 인증을 완료해주세요.</li>
	  	<li>아이디 혹은 비밀번호가 기억나지 않는 경우, '아이디 변경' 기능을<br> 사용해주세요.</li>
  	</ul>
    
    </p>
    </div>
  	</form> 
	</main>
	</div>
    
  </body>
</html>