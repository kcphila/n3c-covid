<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Standards and Forms"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:forms ID="1">
				<h1><strapi:formsHeader/></h1>
				<h2><strapi:formsSubheader/></h2>
				<util:markdown2html><strapi:formsBlock/></util:markdown2html>
				<div class="row flex-wrap">
					<strapi:foreachFormsContentImageBlockRightsLinks var="x" sortCriteria="content_image_block_right_order">
						<strapi:formsContentImageBlockRightsLinks>
							<div class="col-6">
								<jsp:include page="../blocks/text_right.jsp">
									<jsp:param name="id" value="${tag_formsContentImageBlockRightsLinks.contentImageBlockRightId}"/>
									<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
									<jsp:param name="width" value="8"/>
								</jsp:include>
							</div>
						</strapi:formsContentImageBlockRightsLinks>
					</strapi:foreachFormsContentImageBlockRightsLinks>
				</div>
			</strapi:forms>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>