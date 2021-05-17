<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 20px;
  text-align: center;
  font-size: 35px;
  color: white;
}
/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 600px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 600px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section::after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: black;
  padding: 20px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 1000px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>
<header>
 <h1>마음만은 탑 개발자</h1>
</header>

<section>
  <nav>
    <ul>
      <li><a href="#">개발자들의 도구</a></li><br>
      <li><a href="#">개발자의 아이디어</a></li><br>
      <li><a href="#">공지사항</a></li><br>
    </ul>
  </nav>
  
  <article>
   <form action="TipUpdateBoard.do" method="post"  align="center">
  
		<c:forEach items="${view}" var="TipViewBoardDto">
			제목 : <input type="text" class="form-control"  rows="1" cols="200" placeholder="제목을 입력하세요." value="${TipViewBoardDto.tTitle }">
			<br>
			<br>
	 
	 		 <class="file-uploader" enctype="multipart/form-data">${TipViewBoardDto.tImage }
	   			 <p>사진추가: </p>
	 		 <div class="file-chooser">
	   			 <input class="file-chooser__input" type="file" multiple >
	 		 </div>
		</class>
		<br>	
			설명 :<br>
				<textarea class="form-control" rows="16" cols="50" placeholder="입력하세요.">${TipViewBoardDto.tContent }</textarea>
				<br>
				<br>
				<input type="submit" value="수정" style="background-color:lightgray"><a href="TipUpdateBoard.do"></a>
				<input type="submit" value="확인" style="background-color:lightgray"><a href="TipViewBoard.do"></a>
				<input type="submit" value="삭제" style="background-color:lightgray">
				</c:forEach>
		</form>
  </article>
</section>

<footer>
  <address>Contact webmaster for more information. 070-1234-5678<br>
					서울시 용산구 한남동 123-23(2층, 개발자들)
			</address>
			<p>Copyright © 나는야 개발자!.co.,Ltd. All rights reserved.</p>
</footer>
</body>
</html>