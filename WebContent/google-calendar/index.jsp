<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Google Calendar"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<jsp:include page="calendar.jsp"/>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>