<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Domain Teams"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:domains ID="1">
				<h1>N3C Domain Teams</h1>
				<div class="row flex-nowrap block">
					<div class="col-3">
						<jsp:include page="../files/image.jsp">
							<jsp:param value="329" name="id" />
							<jsp:param value="small" name="format" />
						</jsp:include>
					</div>
					<div class="col-x">
						<util:markdown2html><strapi:domainsBlock1 /></util:markdown2html>
					</div>
				</div>
				<div class="row flex-nowrap block">
					<div class="col-6">
						<util:markdown2html><strapi:domainsBlock2 /></util:markdown2html>
						<div class="row flex-wrap">
							<div class="col=6 center">
								<a href="../team-creation/" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Start a Domain Team</a>
							</div>
							<div class="col=6 center">
								<a href="https://n3c-help.atlassian.net/servicedesk/customer/portal/2" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Domain Team Support</a>
							</div>
						</div>
					</div>
					<div class="col-6">
						<jsp:include page="../youtube/video.jsp">
							<jsp:param value="2" name="id" />
							<jsp:param value="false" name="footer" />
						</jsp:include>
					</div>
				</div>

				<div class="block">
					<h2 class="center">Domain Teams</h2>
					<div class="row flex-wrap">
						<strapi:foreachDomainsDomainTeamsLinks var="domains" sortCriteria="domain_team_order">
							<strapi:domainsDomainTeamsLinks>
								<strapi:domainTeams ID="${tag_domainsDomainTeamsLinks.domainTeamId}">
									<div class="card col-4 shade-blue">
										<h3><a href="<util:applicationRoot/>/<strapi:domainTeamsAlias/>"><strapi:domainTeamsName /></a></h3>
										<util:markdown2html><strapi:domainTeamsSummary /></util:markdown2html>
									</div>
								</strapi:domainTeams>
							</strapi:domainsDomainTeamsLinks>
						</strapi:foreachDomainsDomainTeamsLinks>
					</div>
				</div>

				<div class="block">
					<h2 class="center">Cross Cutting Teams</h2>
					<div class="row flex-wrap">
						<strapi:foreachDomainsCrossCuttingTeamsLinks var="domains" sortCriteria="domain_team_order">
							<strapi:domainsCrossCuttingTeamsLinks>
								<strapi:domainTeams ID="${tag_domainsCrossCuttingTeamsLinks.domainTeamId}">
									<div class="card col-4 shade-blue">
										<h3><a href="<util:applicationRoot/>/<strapi:domainTeamsAlias/>"><strapi:domainTeamsName /></a></h3>
										<util:markdown2html><strapi:domainTeamsSummary /></util:markdown2html>
									</div>
								</strapi:domainTeams>
							</strapi:domainsCrossCuttingTeamsLinks>
						</strapi:foreachDomainsCrossCuttingTeamsLinks>
					</div>
				</div>
			</strapi:domains>
			<h2 class="center">Domain Teams Calendar</h2>
			<jsp:include page="../calendar/domain_teams.jsp" />
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>