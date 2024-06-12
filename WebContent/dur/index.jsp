<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Data Use Requests"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:durRequests ID="1">
				<h1><strapi:durRequestsHeader/></h1>
				
				<h2><strapi:durRequestsRequestHeader/></h2>
				<util:markdown2html><strapi:durRequestsRequestBlock/></util:markdown2html>
				
				<h3><strapi:durRequestsOverviewHeader/></h3>
				<util:markdown2html><strapi:durRequestsOverviewBlock/></util:markdown2html>
				
				<h3><strapi:durRequestsProcessHeader/></h3>
				<h4><strapi:durRequestsPrereqHeader/></h4>
				<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::dur-request.dur-request" />
						<jsp:param name="field" value="prereq_graphic" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="small" />
					</jsp:include>
				</div>
				<util:markdown2html><strapi:durRequestsPrereqBlock/></util:markdown2html>
				
				<h4><strapi:durRequestsSubmitHeader/></h4>
				<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::dur-request.dur-request" />
						<jsp:param name="field" value="submit_graphic" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="small" />
					</jsp:include>
				</div>

				<util:markdown2html><strapi:durRequestsSubmitBlock/></util:markdown2html>
				<util:markdown2html><strapi:durRequestsSubmitBlock2/></util:markdown2html>
				<util:markdown2html><strapi:durRequestsSubmitBlock3/></util:markdown2html>
			</strapi:durRequests>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>