<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Account Checklist"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="block">
				<strapi:accountChecklists ID="1">
					<h1><strapi:accountChecklistsHeader/></h1>
					<div class="center">
						<h2><strapi:accountChecklistsHeader2/></h2>
						<util:markdown2html><strapi:accountChecklistsIntro/></util:markdown2html>
					</div>
					<util:markdown2html><strapi:accountChecklistsChecklist/></util:markdown2html>
					<div class="center">
						<util:markdown2html><strapi:accountChecklistsTrailer/></util:markdown2html>
					</div>
				</strapi:accountChecklists>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>