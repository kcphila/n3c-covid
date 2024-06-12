<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Tools"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:tools ID="1">
					<h1><strapi:toolsHeader/></h1>
					<strapi:foreachToolsDescriptionLinks var="x">
						<strapi:toolsDescriptionLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_toolsDescriptionLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:toolsDescriptionLinks>
					</strapi:foreachToolsDescriptionLinks>
					
					<h2><strapi:toolsHeader2/></h2>
					<util:markdown2html><strapi:toolsBlock1/></util:markdown2html>
					<strapi:foreachToolsToolLinks var="x" sortCriteria="content_image_block_right_order">
						<strapi:toolsToolLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_toolsToolLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:toolsToolLinks>
					</strapi:foreachToolsToolLinks>
				</strapi:tools>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>
