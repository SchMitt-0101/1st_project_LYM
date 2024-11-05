<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 외부 CSS 파일(resources/css/default.css) 연결하기 -->
<!-- 외부 자원 접근을 위한 경로 지정 시 컨텍스트루트부터 탐색하지 않고 서버 상의 루트부터 탐색함 -->
<!-- 프로젝트명이 포함되는 상대경로로 지정하는 것이 안전하다! -->
<link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<!-- 기본 메뉴 표시 영역 - inc/top.jsp 페이지 삽입 -->
		<!-- 상대경로를 사용하여 top.jsp 페이지를 지정할 경우 -->
		<!-- 1) 현재 index.jsp 파일 경로(views) 기준으로 inc/top.jsp 지정 -->
<%-- 		<jsp:include page="inc/top.jsp"></jsp:include> --%>
		<!-- 2) 루트(/) 기준으로 inc/top.jsp 지정 -->
		<!-- 스프링 뷰페이지 기준 루트는 webapp 디렉토리이므로 나머지 경로 기술해야함 -->
		<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
	</header>
	<article>
		<h1>회원가입 완료</h1>
		<table>
			<tr>
				<th>
					인증메일이 발송되었습니다.<br>
					이메일 인증 수행 후 로그인이 가능합니다.<br>
				</th>
			</tr>
			<tr>
				<th>
					<input type="button" value="홈으로" onclick="location.href='./'">
					<input type="button" value="로그인" onclick="location.href='MemberLogin'">
				</th>
			</tr>
		</table>
	</article>
	<footer>
		<!-- 회사 소개영역(inc/bottom.jsp) 페이지 삽입 -->
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
	</footer>
</body>
</html>