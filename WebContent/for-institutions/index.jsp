<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="For Investigators"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:institutionalEssentials ID="1">
					<h1><strapi:institutionalEssentialsHeader/></h1>
					<div class="row flex-wrap">
						<strapi:foreachInstitutionalEssentialsNavTilesLinks var="x" sortCriteria="nav_tile_order">
							<strapi:institutionalEssentialsNavTilesLinks>
								<jsp:include page="../blocks/nav_tile.jsp">
									<jsp:param value="${tag_institutionalEssentialsNavTilesLinks.navTileId}" name="id" />
								</jsp:include>
							</strapi:institutionalEssentialsNavTilesLinks>
						</strapi:foreachInstitutionalEssentialsNavTilesLinks>
					</div>

					<div class="shadow-block">
						<strapi:foreachInstitutionalEssentialsJoinBlockLinks var="y">
							<strapi:institutionalEssentialsJoinBlockLinks>
								<jsp:include page="../blocks/text_left.jsp">
									<jsp:param name="id" value="${tag_institutionalEssentialsJoinBlockLinks.contentImageBlockLeftId}"/>
									<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
								</jsp:include>
							</strapi:institutionalEssentialsJoinBlockLinks>
						</strapi:foreachInstitutionalEssentialsJoinBlockLinks>
					</div>

					<h2><strapi:institutionalEssentialsHeader2/></h2>
					<strapi:foreachInstitutionalEssentialsStepLinks var="z" sortCriteria="content_image_block_right_order">
						<strapi:institutionalEssentialsStepLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_institutionalEssentialsStepLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
								<jsp:param name="width" value="11"/>
							</jsp:include>
						</strapi:institutionalEssentialsStepLinks>
					</strapi:foreachInstitutionalEssentialsStepLinks>
					<util:markdown2html><strapi:institutionalEssentialsBlock/></util:markdown2html>
				</strapi:institutionalEssentials>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>