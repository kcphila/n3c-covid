<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="For Researchers"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:researcherEssentials ID="1">
					<h1><strapi:researcherEssentialsHeader/></h1>
					<div class="row flex-wrap">
						<strapi:foreachResearcherEssentialsNavTilesLinks var="x" sortCriteria="nav_tile_order">
							<strapi:researcherEssentialsNavTilesLinks>
								<jsp:include page="../blocks/nav_tile.jsp">
									<jsp:param value="${tag_researcherEssentialsNavTilesLinks.navTileId}" name="id" />
								</jsp:include>
							</strapi:researcherEssentialsNavTilesLinks>
						</strapi:foreachResearcherEssentialsNavTilesLinks>
					</div>

					<div class="shadow-block">
						<strapi:foreachResearcherEssentialsJoinBlockLinks var="y">
							<strapi:researcherEssentialsJoinBlockLinks>
								<jsp:include page="../blocks/text_left.jsp">
									<jsp:param name="id" value="${tag_researcherEssentialsJoinBlockLinks.contentImageBlockLeftId}"/>
									<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
								</jsp:include>
							</strapi:researcherEssentialsJoinBlockLinks>
						</strapi:foreachResearcherEssentialsJoinBlockLinks>
						<div class="col=4">
							<a href="https://national-covid-cohort-collaborative.github.io/guide-to-n3c-v1/" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true"> View The Researcher's Guide to N3C</a>
						</div>
					</div>

					<strapi:foreachResearcherEssentialsAccessBlockLinks var="y">
						<strapi:researcherEssentialsAccessBlockLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsAccessBlockLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsAccessBlockLinks>
					</strapi:foreachResearcherEssentialsAccessBlockLinks>

					<strapi:foreachResearcherEssentialsDomainBlockLinks var="y">
						<strapi:researcherEssentialsDomainBlockLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsDomainBlockLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsDomainBlockLinks>
					</strapi:foreachResearcherEssentialsDomainBlockLinks>

					<strapi:foreachResearcherEssentialsGovernanceBlockLinks var="y">
						<strapi:researcherEssentialsGovernanceBlockLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_researcherEssentialsGovernanceBlockLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:researcherEssentialsGovernanceBlockLinks>
					</strapi:foreachResearcherEssentialsGovernanceBlockLinks>
				</strapi:researcherEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>