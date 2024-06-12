<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Brochure"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="col-12 center">
			<strapi:brochures ID="1">
				<h1><strapi:brochuresHeader /></h1>
				<p><a href="../files/download.jsp?id=1&type=api::brochure.brochure&field=pdf"><strapi:brochuresPdfLinkHeader /></a></p>
				
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="1" />
					<jsp:param name="type" value="api::brochure.brochure " />
					<jsp:param name="field" value="image" />
					<jsp:param name="format" value="large" />
				</jsp:include>
			</strapi:brochures>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>