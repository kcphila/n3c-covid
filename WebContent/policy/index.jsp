<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Policy"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:policies ID="1">
				<h1><strapi:policiesHeader/></h1>
				<util:markdown2html><strapi:policiesIntroBlock/></util:markdown2html>
						<div class="row flex-wrap">
							<div class="col-3 center">
								<a href="mailto:NCATSDataAccessIncidents@nih.gov" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Report Data Access Incidents</a>
							</div>
							<div class="col-3 center">
								<a href="https://n3c-help.atlassian.net/servicedesk/customer/portal/2/group/3/create/20" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Send Questions</a>
							</div>
							<div class="col-3 center">
								<a href="https://docs.google.com/forms/d/e/1FAIpQLSfXhu8qReLi44kskOvPVfIjXB9qWadOYP7bKrw_H5_EHD332g/viewform" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Report Conduct Concerns</a>
							</div>
						</div>
				
				<div class="row">
					<div class="col-6">
						<h2><strapi:policiesInstitutionHeader/></h2>
						<strapi:foreachPoliciesInstitutionResourcesLinks var="x" sortCriteria="resource_order">
							<strapi:policiesInstitutionResourcesLinks>
								<jsp:include page="../blocks/resource_tile_no_image.jsp">
									<jsp:param name="id" value="${tag_policiesInstitutionResourcesLinks.resourceId}" />
									<jsp:param value="12" name="width"/>
								</jsp:include>
							</strapi:policiesInstitutionResourcesLinks>
						</strapi:foreachPoliciesInstitutionResourcesLinks>
					</div>
					
					<div class="col-6">
						<h2><strapi:policiesUserHeader/></h2>
						<strapi:foreachPoliciesUserResourcesLinks var="x" sortCriteria="resource_order">
							<strapi:policiesUserResourcesLinks>
								<jsp:include page="../blocks/resource_tile_no_image.jsp">
									<jsp:param name="id" value="${tag_policiesUserResourcesLinks.resourceId}" />
									<jsp:param value="12" name="width"/>
								</jsp:include>
							</strapi:policiesUserResourcesLinks>
						</strapi:foreachPoliciesUserResourcesLinks>
					</div>
				</div>
			</strapi:policies>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>