<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="News"/>
</jsp:include>


<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
	</div>
	<div class="main-block">
	<strapi:newsItems ID="1">
		<h2>N3C in the News</h2>
		<strapi:foreachNewsItemsPressReleasesLinks var="items" usePressReleases="true" sortCriteria="date desc">
			<strapi:newsItemsPressReleasesLinks>
				<strapi:pressReleases ID="${tag_newsItemsPressReleasesLinks.pressReleaseId}">
					<div class="row flex-nowrap">
						<div class="col col-3">
							<jsp:include page="news_logo.jsp">
								<jsp:param name="id" value="${tag_pressReleases.ID}" />
								<jsp:param name="format" value="thumbnail" />
							</jsp:include>
						</div>
						<div class="col col-9">
							<h4><a href="<strapi:pressReleasesUrl/>"><strapi:pressReleasesTitle/></a></h4>
							<util:markdown2html><strapi:pressReleasesDescription/></util:markdown2html>
						</div>
					</div>
				</strapi:pressReleases>
			</strapi:newsItemsPressReleasesLinks>
		</strapi:foreachNewsItemsPressReleasesLinks>
	</strapi:newsItems>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>