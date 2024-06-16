<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="For Researchers"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:tenantResearcherEssentials ID="1">
					<h1><strapi:tenantResearcherEssentialsHeader/></h1>
					<div class="row flex-wrap">
						<strapi:foreachTenantResearcherEssentialsNavTilesLinks var="x" sortCriteria="nav_tile_order">
							<strapi:tenantResearcherEssentialsNavTilesLinks>
								<jsp:include page="../blocks/nav_tile.jsp">
									<jsp:param value="${tag_tenantResearcherEssentialsNavTilesLinks.navTileId}" name="id" />
								</jsp:include>
							</strapi:tenantResearcherEssentialsNavTilesLinks>
						</strapi:foreachTenantResearcherEssentialsNavTilesLinks>
					</div>

					<div class="shadow-block">
						<strapi:foreachTenantResearcherEssentialsJoinBlockLinks var="y">
							<strapi:tenantResearcherEssentialsJoinBlockLinks>
								<jsp:include page="../blocks/text_left.jsp">
									<jsp:param name="id" value="${tag_tenantResearcherEssentialsJoinBlockLinks.contentImageBlockLeftId}"/>
									<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
								</jsp:include>
							</strapi:tenantResearcherEssentialsJoinBlockLinks>
						</strapi:foreachTenantResearcherEssentialsJoinBlockLinks>
					</div>

					<strapi:foreachTenantResearcherEssentialsAccessBlockLinks var="y">
						<strapi:tenantResearcherEssentialsAccessBlockLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_tenantResearcherEssentialsAccessBlockLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:tenantResearcherEssentialsAccessBlockLinks>
					</strapi:foreachTenantResearcherEssentialsAccessBlockLinks>

					<strapi:foreachTenantResearcherEssentialsDomainBlockLinks var="y">
						<strapi:tenantResearcherEssentialsDomainBlockLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_tenantResearcherEssentialsDomainBlockLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:tenantResearcherEssentialsDomainBlockLinks>
					</strapi:foreachTenantResearcherEssentialsDomainBlockLinks>

					<strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks var="y">
						<strapi:tenantResearcherEssentialsGovernanceBlockLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_tenantResearcherEssentialsGovernanceBlockLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:tenantResearcherEssentialsGovernanceBlockLinks>
					</strapi:foreachTenantResearcherEssentialsGovernanceBlockLinks>
				</strapi:tenantResearcherEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>