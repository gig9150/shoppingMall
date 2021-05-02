<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script>
	alert('아이디나 비밀번호중 하나가 다릅니다.');
	location.href="${root}/user/login";
</script>