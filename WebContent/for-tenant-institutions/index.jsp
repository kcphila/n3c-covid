<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="For Investigators"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:tenantInstitutionalEssentials ID="1">
					<h1><strapi:tenantInstitutionalEssentialsHeader/></h1>
					<div class="row flex-wrap">
						<strapi:foreachTenantInstitutionalEssentialsNavTilesLinks var="x" sortCriteria="nav_tile_order">
							<strapi:tenantInstitutionalEssentialsNavTilesLinks>
								<jsp:include page="../blocks/nav_tile.jsp">
									<jsp:param value="${tag_tenantInstitutionalEssentialsNavTilesLinks.navTileId}" name="id" />
								</jsp:include>
							</strapi:tenantInstitutionalEssentialsNavTilesLinks>
						</strapi:foreachTenantInstitutionalEssentialsNavTilesLinks>
					</div>

					<div class="shadow-block">
						<strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks var="y">
							<strapi:tenantInstitutionalEssentialsJoinBlockLinks>
								<jsp:include page="../blocks/text_left.jsp">
									<jsp:param name="id" value="${tag_tenantInstitutionalEssentialsJoinBlockLinks.contentImageBlockLeftId}"/>
									<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
								</jsp:include>
							</strapi:tenantInstitutionalEssentialsJoinBlockLinks>
						</strapi:foreachTenantInstitutionalEssentialsJoinBlockLinks>
					</div>

					<h2><strapi:tenantInstitutionalEssentialsHeader2/></h2>
					<strapi:foreachTenantInstitutionalEssentialsStepLinks var="z" sortCriteria="content_image_block_right_order">
						<strapi:tenantInstitutionalEssentialsStepLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_tenantInstitutionalEssentialsStepLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
								<jsp:param name="width" value="11"/>
							</jsp:include>
						</strapi:tenantInstitutionalEssentialsStepLinks>
					</strapi:foreachTenantInstitutionalEssentialsStepLinks>
					<util:markdown2html><strapi:tenantInstitutionalEssentialsBlock/></util:markdown2html>
				</strapi:tenantInstitutionalEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>