<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
  padding: 0px;
  text-align: center;
  font-size: 35px;
  color: white;
}
.header_logo h1{
    font: bold 40px 'arial';
    padding-top: 10px;
    letter-spacing: 2px;
}
.header_sublogo p{
    font: 15px 'arial';
    letter-spacing: 2px;
    margin-top: 3px;
}

.header_logo ul li{
    display: inline-block;
}
.header_logo ul li a{
    display: block;
    font-size: 20px;
    color : rgb(0, 0, 0);
    margin:  0px 5px
}    
.header_logo ul li a:hover{
    color: rgb(94, 103, 228);
    }

.menu ul{
    margin-top: 50px;
     background-color: #f1f1f1;
}
.menu ul li{
    display: inline-block;
}
.menu ul li a{
    display: block;
    font-size: 20px;
    color : rgb(0, 0, 0);
    margin:  0px 15vh
}
.menu ul li a:hover{
    color: rgb(94, 103, 228);
    }

article {
  float: center;
  padding: 20px;
  width: 100%;
  background-color: white;
  height: 600px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section::after {
  content: "";
  display: table;
  clear: both;
}

 footer{
     background: #111;
     height: auto;
     width: 100vw;
     font-family:  "open sans";
     padding-top: 20px;
     color: #fff;
 }
 .footer_info{
     display: flex;
     align-items: center;
     justify-content: center;
     flex-direction: column;
    }
 .footer_info h2{
     font-size: 1.8rem;
     font-weight: 400;
     text-transform: capitalize;
     line-height: 3rem;
    }   
 .footer_info p{
    max-width: 600px;
    margin: 1px auto;
    line-height: 20px;
    font-size: 11px;
    color:  rgba(255, 255, 255, 0.39);
    }    
.foot_link{
    list-style: none;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 5px 0 5px 0;
}
.foot_link li{
    margin: 0 10px;
}
.foot_link a{
    text-decoration: none;
    color : #fff;
    font-size: 13px;
}
.foot_link a:hover{
    color: rgb(94, 103, 228);
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

  <header class="header">
       <div class="header_logo">
            
            <a href="" class="title"><h1>마음만은 TOP 개발자</h1></a>              
        </div>
        <div class="header_sublogo">
            <p>Developer Review Site</p>
        </div>
    <nav>
       <div class="menu">
            <ul>
                <li><a href="">개발자의 물건</a> </li>
                <li><a href="">개발자의 아이디어</a> </li>
                <li><a href="">공지사항</a> </li>
            </ul>
       </div>
     </nav>
        
    </header>
  
<section>
  <article>
   <center>
   <form action="ViewBoard.do" method="post"  align="center">
  		<c:forEach items="${update}" var="TipUpdateBoardDto">
		
			제목 : <input type="text" class="form-control"  rows="1" cols="200" placeholder="제목을 입력하세요."value="${TipUpdateBoardDto.tTitle }">
			<br>
			<br>

	 			
	 		 <class="file-uploader" enctype="multipart/form-data" value=" ${TipUpdateBoardDto.tImg }">
	   			 <p>사진추가:</p>
	 		 <div class="file-chooser">
	   			 <input class="file-chooser__input" type="file" multiple>
	 		 </div>
		</class>
		<br>	
			설명 :<br>
				<textarea class="form-control" rows="16" cols="50" placeholder="입력하세요." value=" ${TipUpdateBoardDto.tContent }"></textarea>
				<br>
				<br>
				<input type="submit" value="수정" style="background-color:lightgray">
				<input type="submit" value="확인" style="background-color:lightgray">
				<input type="submit" value="삭제" style="background-color:lightgray">
		</c:forEach>
		</form>
  </article>
  </center>
</section>

<footer>
        <div class="footer_info">
            <h2> 나는야 개발자 </h2>
            
            <ul class="foot_link">
                <li><a href="">회사소개</a></li>
                <li>I</li>
                <li><a href="">1:1문의</a></li>
                <li>I</li>
                <li><a href="">기부</a></li>
                <li>I</li>
                <li><a href="">이용약관</a></li>
                <li>I</li>
                <li><a href="">개인정보취급방침</a></li>
           </ul>
            
            <p class="adress">상호 : 나는야개발자(주) <span style="margin:0 3px">|</span>  소재지 : 서울특별시 서초구 강남대로 279, 5층(서초동, 백향빌딩) 
            <br>사업자 등록번호 : 000-00-00000 </a> <span style="margin:0 3px">|</span>  개인정보관리책임자 : 우영진영 
            <br> Tel : 0000-0000 <span style="margin:0 3px">|</span>  Fax : 000-000-0000  <span style="margin:0 3px">|</span>   Email : admin@imdev.com 
            <br>고객님은 저희 사이트에 매료되었으므로 매일 방문할것입니다
            <br>Copyright 나는야개발자 All Right Reserved</p>
            
        </div>
    </footer>
</body>
</html>