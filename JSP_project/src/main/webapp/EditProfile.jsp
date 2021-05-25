<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="Header.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address1").value = roadAddr;

            }
        }).open();
    }
</script>
<style>

	#container {
		position: relative;
		top: 50%;
		left: 50%;
		width: 800px;
		height: 600px;
		margin-left: -400px;
		margin-top: 60px;		
	}
	
	
	label {
    	width:100px;
    	float:left;
    	font-size:16px;
    	line-height:34px;
    	font-weight:bold;
    	text-align:right;
	}
	
	.textField {
		margine: 50px;
	}
	
	input {
		
		/* border: 1px solid #999; */
		outline:0;
		height:34px;
		width: 275px;
		margin-right: 30px;
		margin-left: 30px;
	}
	
	.buttons {
    	width:100px;
    	margin-bottom:5px;
    	line-height:30px;
    	padding:2px 5px;
    	-webkit-border-radius: 5px;
    	-moz-border-radius: 5px;
    	border-radius: 5px;
    	border:1px solid #CCC;
	}
	#editButton {
    	width:415px;
    	margin-bottom:5px;
    	line-height:30px;
    	padding:2px 5px;
    	-webkit-border-radius: 5px;
    	-moz-border-radius: 5px;
    	border-radius: 5px;
    	border:1px solid #CCC;
	}
	.eidt {
		text-align: center;
		display: inline-block;
	}
	
	.edit div {
		margin: 10px;
	}
	hr {
		margin: 35px;
		margin-bottom:60px;
	}
	
</style>
<meta charset="UTF-8">
<title>마이프로필 수정</title>
</head>
<script>
//유효성검사
	function editForm(){
		var form = document.edit
		if(form.myName.value == "") {
			alert("이를을 입력해주세요!")
			form.id.focus();
			return false;
		} else if(form.myNumber.value == ""){
			alert("핸드폰번호를 입력해주세요!")
			form.myNumber.focus();
			return false;
		} else if(form.myAddress.value == ""){
			alert("주소를 입력해주세요!")
			form.myNumber.focus();
			return false;
		}
		form.submit();
	}

</script>
	<body style="background-color:rgb(250,250,250);">
		<div id="container">
			<form name="edit" action="edit.do" method="post"><div class="edit">
				<label id="user"><%session.getAttribute("email"); %></label><br>
				<div>
					<label>이름</label> <input type="text" name="myName" class="textbox" value=${info.userName }> 
				</div>
				<div>
					<label>핸드폰번호</label> <input type="text" name="myNumber" class="textbox" placeholder=" -없이 핸드폰번호를 입력해주세요." value=${info.phoneNumber } > 
				</div>
				<div>
					<label>주소</label> <input type="text" name="address1" class="textbox" readonly value=${info.address }><input type="text" name="address2" class="textbox" placeholder=" 나머지 주소">
					<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기">
				</div>
				<div>
					<label>Git hub</label> <input type="text" name="myGit" class="textbox" value=${info.userGit }> 
				</div>
				<input type="button" value="프로필 수정" onclick="editForm()">
			</div></form>
			<hr>
			<form name="change" action="changePassword.do" method="post"><div class = "changePwd">
				<label>비밀번호 변경</label> <input type="password" name="newPassword" style="font-size:30px;"><input type="button" value="변경" onclick="editForm()">
			</div></form>
			<hr>
			<form name="delete" action="deleteAccount.do" method="post"><div class ="Delete">
				<label>비밀번호</label> <input type="password" name="password"  style="font-size:30px;"><input type="button" value="계정삭제" onclick="deleteForm()">
			</div></form>
		</div>
	</body>
	<%@include file ="Footer.jsp" %> 
</html>
