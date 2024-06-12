<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Enclave"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:enclaveEssentials ID="1">
			<div class="main-block">
					<h1><strapi:enclaveEssentialsHeader /></h1>
					<strapi:foreachEnclaveEssentialsDescriptionLinks var="x">
						<strapi:enclaveEssentialsDescriptionLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_enclaveEssentialsDescriptionLinks.contentImageBlockLeftId}" />
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left" />
								<jsp:param name="field" value="image" />
								<jsp:param name="image_pos" value="1" />
							</jsp:include>
						</strapi:enclaveEssentialsDescriptionLinks>
					</strapi:foreachEnclaveEssentialsDescriptionLinks>
					<div class="block">
						<util:markdown2html><strapi:enclaveEssentialsBlock1 /></util:markdown2html>
					</div>

				<div class="row flex-nowrap shadow-block">
					<strapi:foreachEnclaveEssentialsUserTilesLinks var="x" sortCriteria="content_image_block_left_order">
						<strapi:enclaveEssentialsUserTilesLinks>
							<div class="col-6 block">
								<jsp:include page="../blocks/text_left.jsp">
									<jsp:param name="id" value="${tag_enclaveEssentialsUserTilesLinks.contentImageBlockLeftId}" />
									<jsp:param name="type" value="api::content-image-block-left.content-image-block-left" />
									<jsp:param name="field" value="image" />
								</jsp:include>
							</div>
						</strapi:enclaveEssentialsUserTilesLinks>
					</strapi:foreachEnclaveEssentialsUserTilesLinks>
				</div>
			</div>
			<div class="row flex-wrap main-block">
				<strapi:foreachEnclaveEssentialsNavTilesLinks var="x" sortCriteria="content_image_block_left_order">
					<strapi:enclaveEssentialsNavTilesLinks>
						<jsp:include page="../blocks/text_left_card.jsp">
							<jsp:param name="id" value="${tag_enclaveEssentialsNavTilesLinks.contentImageBlockLeftId}" />
							<jsp:param name="type" value="api::content-image-block-left.content-image-block-left" />
							<jsp:param name="field" value="image" />
						</jsp:include>
					</strapi:enclaveEssentialsNavTilesLinks>
				</strapi:foreachEnclaveEssentialsNavTilesLinks>
			</div>
		</strapi:enclaveEssentials>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>