<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script>
		alert('입력된 정보랑 일치하는 회원이 없습니다.');
		location.href="${root}/user/lost_password";
</script>
