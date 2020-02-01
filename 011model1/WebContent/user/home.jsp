<%@ page contentType="text/html;charset=euc-kr" %>

<%@ page import="spring.model1.service.user.vo.UserVO" %>

<!-- 
		1. �α��� ����Ȯ�� :: Work Flow Control (����� �ڵ�)
			�� �α��� : �α��� ȭ�� display
			�α��� : �̹� �α��� �� ȸ������ display
		2. �α��� Ȯ����...
			�α����� ȸ���� session ObjectScope�� userVO ��ü�� ����, active�� true
			UserVO ��ü�� ���� �� UserVO�� active�� true/false �Ǵ�
-->

<% UserVO userVO = (UserVO)session.getAttribute("userVO"); %>

<!-- #. �� �α����� ȸ��  -->
<% if( userVO == null || !userVO.isActive()) { %>
	<jsp:forward page="logon.jsp" />
<% } %>

<!-- #. �α����� ȸ�� -->
<html>
	<head></head>
	<body>
		<p>Simple Model1 Examples</p>
		<p> ȯ���մϴ�. : <%= userVO.getUserId() %> �� </p>
	</body>
</html>