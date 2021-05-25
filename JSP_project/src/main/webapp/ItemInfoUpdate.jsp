<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@include file="Header.jsp"%>
<style>
* {
	box-sizing: border-box;
}

input[type="submit"] {
	margin-top: 10px;
	text-align: center;
	width: 30%;
	height: 32px;
	background: #16a085;
	border: none;
	border-radius: 2px;
	color: #FFF;
}

input[type="submit"]:hover, input[type="submit"]:focus {
	opacity: 0.8;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
	transition: 0.1s ease;
}

input[type="submit"]:active {
	opacity: 1;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
	transition: 0.1s ease;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;

* {
	margin: 0px;
	padding: 0px;
	list-style: none;
	text-decoration: none;
	color: black;
	font-family: 'Noto Sans KR', sans-serif;
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
	align: center;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media ( max-width : 1000px) {
	nav, article {
		width: 100%;
		height: auto;
	}
}
</style>
</head>
<body>

	<!-- 게시판 글 수정 양식 영역 시작 -->
	<div class="container">
		<div class="row">
		<article>
			<section>
				<form action="ItemInfoUpdate.do" method="post"
					enctype="multipart/form-data">
					<input type="hidden" value="${read.i_num}" name="I_NUM">
					<div style="text-align: center;">
						<h2>물건리뷰 수정하기</h2>
						</div>
					<table class="table table-bordered"
						style="margin-left: auto; margin-right: auto; text-align: left;" width=1300 border=0 cellpadding=2>
						<!-- <tr>
							<th colspan="2"
								style="background-color: #eee; text-align: center;">물건리뷰
								수정하기</th>
						</tr> -->
						<tr>
							<th>글 제목 </th>
							<td><input type="text" name="I_TITLE" placeholder="글 제목" class="form-control" value="${read.i_title}"></td>
						</tr>
						<tr>
							<th>카테고리 </th>
							<td><select name="I_CATEGORY">
									<option value="none">선택하세요</option>
									<option value="컴퓨터" selected="selected">컴퓨터</option>
									<option value="악세사리" selected="selected">악세사리</option>
									<option value="책상" selected="selected">책상</option>
									<option value="기타" selected="selected">기타</option>
							</select></td>
						</tr>

						<tr>
							<th>사진</th>
							<td><c:set var="requestFilePath" value="${read.i_image }" />
								<c:choose>
									<c:when test="${!empty requestFilePath}">
										<a href="${read.i_image }" download>${fileName }</a>
									</c:when>
									<c:otherwise>
										<a>첨부파일 없음</a>
									</c:otherwise>
								</c:choose> <!-- 이미지 수정을 위해서 기존 파일 경로도 전송해야하므로 히든아이템으로 유지한다. --> <input
								type="hidden" name="oldFilePath" value="${read.i_image }">
								<input type="file" name="I_IMAGE"></td>
						</tr>
						<tr>
							<th>첨부파일 미리보기</th>
							<td><img width="300" src="${read.i_image }"/></td>
						</tr>
						<tr>
						<th>내용</th>
							<td><textarea style="margin: 0px; width: 1160px; height: 386px;" name="I_CONTENT"
									class="form-control" placeholder="내용을 입력하세요.">${read.i_content}</textarea></td>
						</tr>
					</table>
						<div style="text-align: center;">
					<input type="submit" value="수정하기"> <a href="list.do">목록보기</a>
					</div>
				</form>
			</section>
			</article>
		</div>
	</div>

	<footer>
		<%@include file="Footer.jsp"%>
	</footer>
</body>
</html>