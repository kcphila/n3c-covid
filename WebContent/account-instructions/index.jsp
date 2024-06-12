<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Account Instructions"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="block">
				<strapi:accountCreations ID="1">
					<h1><strapi:accountCreationsHeader/></h1>
					<strapi:foreachAccountCreationsIntroLinks var="x">
						<strapi:accountCreationsIntroLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_accountCreationsIntroLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:accountCreationsIntroLinks>
					</strapi:foreachAccountCreationsIntroLinks>
					
					<div class="center shade">
						<h3><strapi:accountCreationsBeforeStartingHeader/></h3>
						<util:markdown2html><strapi:accountCreationsBeforeStartingBlock/></util:markdown2html>
					</div>

					<h2><strapi:accountCreationsHeader2/></h2>
					<strapi:foreachAccountCreationsInstructionsLinks var="x" sortCriteria="content_image_block_right_order">
						<strapi:accountCreationsInstructionsLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_accountCreationsInstructionsLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
								<jsp:param name="width" value="11"/>
							</jsp:include>
						</strapi:accountCreationsInstructionsLinks>
					</strapi:foreachAccountCreationsInstructionsLinks>
				</strapi:accountCreations>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>