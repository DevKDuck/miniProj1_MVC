<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>horizontal-menu</title>
    <link rel="stylesheet" href="../style/reset.css">
    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
a,
a:active,
a:visited {
    text-decoration: none;
    color: inherit;
}
a:hover {
    color: inherit;
    text-decoration: underline;
}
li {
    list-style-type: none;
}
          .lnb>ul {display: flex;
            justify-content: center;
            text-align: center;
        }
        .lnb li { margin-right:2px; }
        .lnb a {display: block;
                width: 200px; height: 40px; text-align: center; line-height: 40px; background-color: coral;
                color: white;
        }
        .subMenu { display: none; position: absolute;}
        .lnb>ul>li:hover .subMenu {display: block;}
        .lnb>ul>li:hover>a{ background-color: lightcoral; }
        .subMenu a:hover { background-color: orangered;}



Resources
 
    </style>

 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>miniProject1</title>
    <style>
    body {
            background-color: #f6f6f6;
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            color: coral;
        }
    </style>

</head>


<body>

<h1> miniProject1 </h1>
    <header>   
    <div class="lnb">
            <ul>
                <li><a href="#">회사소개</a>
                    <ul class="subMenu">
                        <li><a href="introduction.html>" >회사소개</a></li>
                    </ul>
                </li>
                   <li id="signupMenu" style="display: none;"><a href="#">회원가입</a>
                    <ul class="subMenu">
                        <li><a href="<c:url value='/memeber/insertForm'/>" >회원가입</a></li>
                    </ul>
                </li>
                
                   <li id="mypageMenu" style="display: none;"><a href="#">마이페이지</a>
                    <ul class="subMenu">
                        <li><a href="<c:url value='/memeber/mypage'/>" >마이페이지</a></li>
                    </ul>
                </li>
                
                 <li id="memberManagementMenu" style="display: none;"><a href="#">회원관리</a>
                    <ul class="subMenu">
                        <li><a href="<c:url value='/memeber/list'/>" >회원관리</a></li>
                    </ul>
                </li>
                
                
       
                
                <li><a href="#">게시판</a>
                    <ul class="subMenu">
                    <li><a href="<c:url value='/board/list'/>" >게시판</a></li> 
                </ul>
                </li>
                
                
                 <li id="loginMenu" style="display: none;"><a href="#">로그인</a>
                    <ul class="subMenu">
                        <li><a href="member.do?action=loginForm">로그인</a></li>
                    </ul>
                </li>
                
                 <li id="logoutMenu" style="display: none;"><a href="#">로그아웃</a>
                    <ul class="subMenu">
                        <li><a href="member.do?action=logout">로그아웃</a></li>
                    </ul>
                </li>
               
            </ul>
        </div>
 
    </header>


    

    
      <script>
        // 로그인 여부에 따라 회원가입과 마이페이지 메뉴를 표시 또는 숨깁니다.
        /* const isLoggedIn = false; */ // 로그인 여부에 따라 true 또는 false로 설정
        var isLoggedIn = <%= session.getAttribute("loginVO") != null %>;
        var loginIDisBituser = <%= session.getAttribute("managerID") != null%>;
        
        
        const signupMenu = document.getElementById('signupMenu');
        const mypageMenu = document.getElementById('mypageMenu');
        const memberManagementMenu = document.getElementById('memberManagementMenu');
        const loginMenu = document.getElementById('loginMenu');
        const logoutMenu = document.getElementById('logoutMenu');
        
        
        if (isLoggedIn) {
        	logoutMenu.style.display = 'block';
        	if (loginIDisBituser){
        		memberManagementMenu.style.display = 'block';	
        	}else{
        		mypageMenu.style.display = 'block';	
        	}
            
        } else {
            signupMenu.style.display = 'block';
            loginMenu.style.display = 'block';
        }
        
    </script>
</body>
</html>

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!
</h1>
	<a href="<c:url value='/board/list'/>" >게시물 목록</a> <br/>

	<a href="javascript:json1()" >json1 호출</a> <br/>
	<a href="javascript:json2()" >json2 호출</a> <br/>
	<a href="javascript:json3()" >json3 호출</a> <br/>
	<a href="javascript:json4()" >json4 호출</a> <br/>
	<a href="javascript:json51()" >json51 호출</a> <br/>
	<a href="javascript:json52()" >json52 호출</a> <br/>
	<a href="javascript:jsonPath()" >json/abc 호출</a> <br/>
	<a href="javascript:json10()" >json10 호출(200)</a> <br/>
	<a href="javascript:json11()" >json11 호출(500에러)</a> <br/>
	<hr>
	<a href="javascript:all()" >board/all 호출</a> <br/>
	<a href="javascript:findBoard()" >board/findBoard 호출</a> <br/>
	<a href="javascript:addBoard()" >board/addBoard 호출</a> <br/>
	<a href="javascript:updateBoard()" >board/updateBoard 호출</a> <br/>
	<a href="javascript:deleteBoard()" >board/deleteBoard 호출</a> <br/>

<script type="text/javascript" src="<c:url value='/resources/js/common.js'/>"></script>
<script>
function json1() {
	myFetch("<c:url value='/json1'/>", {}, json => {
		console.log("json1->", json);
	})
}

function json2() {
	myFetch("<c:url value='/json2'/>", {}, json => {
		console.log("json2->", json);
	})
}

function json3() {
	myFetch("<c:url value='/json3'/>", {}, json => {
		console.log("json3->", json);
	})
}

function json4() {
	myFetch("<c:url value='/json4'/>", {}, json => {
		console.log("json4->", json);
	})
}

function json51() {
	myFetch("<c:url value='/json5'/>", {}, json => {
		console.log("json5->", json);
	})
}

function json52() {
	myFetch("<c:url value='/json5'/>", {name:"이순신", age:30}, json => {
		console.log("json5->", json);
	})
}

function json10() {
	myFetch("<c:url value='/json10'/>", {}, json => {
		console.log("json10->", json);
	})
}

function json11() {
	myFetch("<c:url value='/json11'/>", {}, json => {
		console.log("json11->", json);
	})
}

function all(){
	fetch("<c:url value='/board/all'/>", {
		method:"GET",
		headers : {"Content-type" : "application/json; charset=utf-8"}
	}).then(res => res.json())
	.then(json => {
		//서버로 부터 받은 결과를 사용해서 처리 루틴 구현  
		console.log("all", json);
	}).catch(error => {
	    console.error(`error: ${error.message}`);
	});
}

function findBoard(){
	fetch("<c:url value='/board/1004'/>", {
		method:"GET",
		headers : {"Content-type" : "application/json; charset=utf-8"}
	}).then(res => res.json())
	.then(json => {
		//서버로 부터 받은 결과를 사용해서 처리 루틴 구현  
		console.log("findBoard", json);
	}).catch(error => {
	    console.error(`error: ${error.message}`);
	});
}

function addBoard(){
	const param = JSON.stringify({writer:"홍길동", title:"제목", content:"내용"});
	fetch("<c:url value='/board'/>", {
			method:"POST",
			body : param,
			headers : {"Content-type" : "application/json; charset=utf-8"}
	}).then(res => res.text())
	.then(text => {
		//서버로 부터 받은 결과를 사용해서 처리 루틴 구현  
		console.log("text", text );
	}).catch(error => {
	    console.error(`error: ${error.message}`);
	});
}

function updateBoard(){
	const param = JSON.stringify({bno:"1004", writer:"홍길동", title:"제목", content:"내용"});
	fetch("<c:url value='/board/1004'/>", {
			method:"PUT",
			body : param,
			headers : {"Content-type" : "application/json; charset=utf-8"}
	}).then(res => res.text())
	.then(text => {
		//서버로 부터 받은 결과를 사용해서 처리 루틴 구현  
		console.log("text", text );
	}).catch(error => {
	    console.error(`error: ${error.message}`);
	});
}

function deleteBoard(){
	fetch("<c:url value='/board/1004'/>", {
			method:"DELETE",
			headers : {"Content-type" : "application/json; charset=utf-8"}
	}).then(res => res.text())
	.then(text => {
		//서버로 부터 받은 결과를 사용해서 처리 루틴 구현  
		console.log("text", text );
	}).catch(error => {
	    console.error(`error: ${error.message}`);
	});
}

</script>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
 --%>