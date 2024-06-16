<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Liaisons"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
			<strapi:liaisons ID="1">
				<h1><strapi:liaisonsHeader/></h1>
				<util:markdown2html><strapi:liaisonsBlock/></util:markdown2html>
			</strapi:liaisons>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>