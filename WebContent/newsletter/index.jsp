<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Newsletter"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap">
			<div class="col-xs-8">
				<strapi:newsletters ID="1">
					<h1><strapi:newslettersHeader/></h1>
					<strapi:foreachNewslettersNewsletterIssuesLinks var="x">
						<strapi:newslettersNewsletterIssuesLinks>
							<strapi:newsletterIssues ID="${tag_newslettersNewsletterIssuesLinks.newsletterIssueId}">
								<h3><a href="<strapi:newsletterIssuesUrl/>"><strapi:newsletterIssuesIssue/></a></h3>
							</strapi:newsletterIssues>
						</strapi:newslettersNewsletterIssuesLinks>
					</strapi:foreachNewslettersNewsletterIssuesLinks>
				</strapi:newsletters>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>