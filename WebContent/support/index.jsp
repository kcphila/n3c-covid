<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Support"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:supports ID="1">
					<h1><strapi:supportsHeader/></h1>
					<util:markdown2html><strapi:supportsBlock/></util:markdown2html>
				</strapi:supports>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>