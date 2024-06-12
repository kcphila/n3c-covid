<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Onboarding"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:onboardings ID="1">
					<h1><strapi:onboardingsHeader /></h1>
					<h2>
						<jsp:include page="../files/related_image_pos.jsp">
							<jsp:param name="id" value="1" />
							<jsp:param name="type" value="api::onboarding.onboarding" />
							<jsp:param name="field" value="left_header_image" />
							<jsp:param name="pos" value="1" />
							<jsp:param name="format" value="5%" />
						</jsp:include>
						<strapi:onboardingsSubheader />
					</h2>
					
					<div class="shadow-block">
						<h3><strapi:onboardingsRegistrationHeader/></h3>
						<strapi:foreachOnboardingsStepLinks var="x" sortCriteria="content_image_block_right_order">
							<strapi:onboardingsStepLinks>
								<jsp:include page="../blocks/text_right.jsp">
									<jsp:param name="id" value="${tag_onboardingsStepLinks.contentImageBlockRightId}"/>
									<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
									<jsp:param name="width" value="11"/>
								</jsp:include>
							</strapi:onboardingsStepLinks>
						</strapi:foreachOnboardingsStepLinks>
					</div>
					
					<div class="row flex-wrap block">
						<strapi:foreachOnboardingsNavTilesLinks var="x" sortCriteria="nav_tile_order">
							<strapi:onboardingsNavTilesLinks>
							<div class="col-3">
								<jsp:include page="../blocks/nav_tile.jsp">
									<jsp:param value="${tag_onboardingsNavTilesLinks.navTileId}" name="id" />
									<jsp:param value="top" name="image_pos" />
									<jsp:param value="button" name="link_format" />
								</jsp:include>
							</div>
							</strapi:onboardingsNavTilesLinks>
						</strapi:foreachOnboardingsNavTilesLinks>
					</div>
				
					<div class="col-9 center shadow-block">
						<util:markdown2html><strapi:onboardingsBlock/></util:markdown2html>
					</div>
				
					<util:markdown2html><strapi:onboardingsBlock2/></util:markdown2html>
				</strapi:onboardings>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>