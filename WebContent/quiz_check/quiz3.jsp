<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quiz3</title>
<style type="text/css">
span{
color:red;
}

</style>
<script type="text/javascript">
function check(){
	var flag= false;
	var point = document.getElementsByClassName("langs");//class를 이용 byId와 다르게 컬렉션 개념 
	var count=0;
	for(i=0;i<point.length;i++){
		if(point[i].checked){
			count++;
		}
	}
		if(count<2){
			alert("2개 이상 선택하세요");
		}else{
			flag=true; //물어보기
		}
	
	return flag;
}
function id_check(){
	
	var flag= false;
	page="id_check.jsp"
	
	var xml= new XMLHttpRequest();
	xml.onreadystatechange=function(){
		if(this.readyState==4&&this.status==200){
			var result = this.responseText;
			var msg = document.getElementById("msg");
			if(result=="true"){
				msg.innerHTML="사용가능한 아이디 입니다."
			}else{
				msg.innerHTML="사용불가능한 아이디 입니다."
		
			}
		}
	}
	xml.open("GET",page,true);
	xml.send();
	
		return flag;
}

</script>
</head>
<body>
<%
String[] lang= (String[])session.getAttribute("key");
if(lang==null){
	lang= new String[]{"0","","",""}; // 초기화 코드 null 값 제거 
}
for(String value:lang){
	out.print(value+" ");
}


%>
<form action="process_data.jsp" method="post">
아이디 :<input type="text" name="id"><span id="msg"></span><button onclick="return id_check()">아이디체크</button><br>
<input type="checkbox" name="lang" value="0" class="langs" <%=lang[0].equals("0")?"checked":""%>>자바
<input type="checkbox" name="lang" value="1" class="langs" <%=lang[1].equals("1")?"checked":""%>>파이썬
<input type="checkbox" name="lang" value="2" class="langs" <%=lang[2].equals("2")?"checked":""%>>C#
<input type="checkbox" name="lang" value="3" class="langs" <%=lang[3].equals("3")?"checked":""%>>C++
<input type="submit" value="전송" onclick="return check()">

</form>


</body>
</html>