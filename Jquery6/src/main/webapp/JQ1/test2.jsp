<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- jquery 라이브러리 추가 -->
	<script src="../js/jquery-3.6.3.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			//alert("실행");
			// 전체요소 선택자 :  * 
			$("*").css("color","red");
			// 특정 태그 선택자 : 태그명
			$("h2").css("color","green")
			// id 선택자 : #이름 (유일한 값)
			$("#c1").css("color","yellow")
			// class 선택자 : .이름 (중복 값)
			$(".c2").css("color","orange")
			$("label").css("color","green")
			
			// 속성 탐색 선택자
			$('input').css("color","black")
			$('input[type=password]').css('color','blue')
			$('input[type ^=p]').css('color','pink') // 시작값
			$('input[type $=p]').css('color','pink') // 끝값
			
			// 위치 탐색 선택자
			$('tr').css('background','black')
			$('tr:odd').css('background','yellow')
			$('tr:even').css('background','blue')
			$('tr:first').css('background','green')
			
			//alert($('input[type=text]').val() );
			$('input[type=text]').val("busan");
		});
		
	</script>
	
	<style type="text/css">
		h2 {
			color: blue;
		
		}
	</style>
</head>
<body>
	<h2 id="c1"> 부산 아이티윌 </h2>
	<h2 class="c2"> 부산 아이티윌 </h2>
	<h3 id="c1"> 아이티윌 </h3>
	<h3 class="c2"> 아이티윌 </h3>
	
	<hr>
	
	<label> 아이디 : </label> <input type="text" name="id" value="아이티윌"> <br>
  	<label> 비밀번호 : </label> <input type="password" name="pw"> <br>
  	
  	<hr>
  	
  	<table>
  		<tr>
  			<td>이름</td>
  			<td>나이</td>
  			<td>성별</td>
  		</tr>
  		<tr>
  			<td>이름</td>
  			<td>나이</td>
  			<td>성별</td>
  		</tr>
  		<tr>
  			<td>이름</td>
  			<td>나이</td>
  			<td>성별</td>
  		</tr>
  		<tr>
  			<td>이름</td>
  			<td>나이</td>
  			<td>성별</td>
  		</tr>
  	</table>
	
	
	
	
</body>
</html>