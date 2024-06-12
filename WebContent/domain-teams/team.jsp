<%@ include file="../_include.jsp"%>
<html>
<strapi:domainTeams ID="${param.id}">
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Domain Teams - ${tag_domainTeams.name }"/>
</jsp:include>
</strapi:domainTeams>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:domainTeams ID="${param.id}">
				<c:choose>
					<c:when test="${tag_domainTeams.crossCutting}">
						<h1>N3C Cross Cutting Team: <strapi:domainTeamsName /></h1>
					</c:when>
					<c:otherwise>
						<h1>N3C Domain Team: <strapi:domainTeamsName /></h1>
					</c:otherwise>
				</c:choose>
				<h2>Mission</h2>
				<div class="row flex-wrap">
					<div class="col-9">
						<util:markdown2html><strapi:domainTeamsDescription /></util:markdown2html>
					</div>
					<div class="col-3 center">
						<c:if test="${not empty tag_domainTeams.joinUrl}">
							<jsp:include page="../files/image.jsp">
								<jsp:param value="329" name="id" />
								<jsp:param value="scale" name="format" />
							</jsp:include>
							<br>
							<a href="<strapi:domainTeamsJoinUrl/>"><strapi:domainTeamsJoinLinkText /></a>
						</c:if>
					</div>
				</div>
				<div class="row flex-wrap">
					<strapi:foreachDomainTeamsYouTubeVideosLinks var="x">
						<strapi:domainTeamsYouTubeVideosLinks>
						<div class="col-6">
							<jsp:include page="../youtube/video.jsp">
								<jsp:param value="${tag_domainTeamsYouTubeVideosLinks.youTubeVideoId }" name="id" />
							</jsp:include>
						</div>
						</strapi:domainTeamsYouTubeVideosLinks>
					</strapi:foreachDomainTeamsYouTubeVideosLinks>
				</div>
				<p></p>
				<div class="row flex-wrap">
					<div class="col-12">
						<div class="block center">
							<b>First Time Users:</b> To get started with N3C and gain access to the N3C Data Enclave, please view the <a href="<util:applicationRoot/>/for-researchers">Researcher Essentials</a> webpage.
							<br>
							<b>For Questions or Comments:</b> Please access the <a href="https://n3c-help.atlassian.net/servicedesk/customer/portal/2">N3C Support Desk</a> and click on "Request Domain Team Support".
						</div>
					</div>
				</div>
				<div class="row flex-wrap">
					<c:if test="${not empty tag_domainTeams.googleDriveUrl}">
						<div class="card col-4 shade">
							<div style="text-align: center;">
								<jsp:include page="../files/image.jsp">
									<jsp:param value="338" name="id" />
									<jsp:param value="thumbnail" name="format" />
								</jsp:include>
							</div>
							<div class="center">
								Google Drive:<br><a href="<strapi:domainTeamsGoogleDriveUrl/>"><strapi:domainTeamsGoogleDriveLinkText /></a>
							</div>
						</div>
					</c:if>
					<c:if test="${not empty tag_domainTeams.googleGroupEmail}">
						<div class="card col-4 shade">
							<div style="text-align: center;">
								<jsp:include page="../files/image.jsp">
									<jsp:param value="336" name="id" />
									<jsp:param value="thumbnail" name="format" />
								</jsp:include>
							</div>
							<div class="center">
								Google Group:<br><a href="mailto:<strapi:domainTeamsGoogleGroupEmail/>"><strapi:domainTeamsGoogleGroupEmail /></a>
							</div>
						</div>
					</c:if>
					<c:if test="${not empty tag_domainTeams.slackUrl}">
						<div class="card col-4 shade">
							<div style="text-align: center;">
								<jsp:include page="../files/image.jsp">
									<jsp:param value="361" name="id" />
									<jsp:param value="thumbnail" name="format" />
								</jsp:include>
							</div>
							<div class="center">
								Slack Channel:<br><a href="<strapi:domainTeamsSlackUrl/>"><strapi:domainTeamsSlackLinkText /></a>
							</div>
						</div>
					</c:if>
				</div>
	
				<h2>Leadership</h2>
				<div class="row flex-wrap">
				<strapi:foreachDomainTeamsLeadsLinks var="idIter">
					<strapi:domainTeamsLeadsLinks>
						<jsp:include page="../bio/thumbnail.jsp">
							<jsp:param value="${tag_domainTeamsLeadsLinks.bioId}" name="id"/>
						</jsp:include>
					</strapi:domainTeamsLeadsLinks>
				</strapi:foreachDomainTeamsLeadsLinks>
				</div>
			</strapi:domainTeams>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>