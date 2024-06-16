<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Acknowledgements"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:acknowledgements ID="1">
				<h1><strapi:acknowledgementsHeader/></h1>
				<util:markdown2html><strapi:acknowledgementsBlock/></util:markdown2html>
				<div class="row flex-wrap">
					<strapi:foreachAcknowledgementsContentImageBlockRightsLinks var="x" sortCriteria="content_image_block_right_order">
						<strapi:acknowledgementsContentImageBlockRightsLinks>
							<div class="col col-12">
								<jsp:include page="../blocks/text_right.jsp">
									<jsp:param name="id" value="${tag_acknowledgementsContentImageBlockRightsLinks.contentImageBlockRightId}" />
									<jsp:param name="type" value="api::content-image-block-right.content-image-block-right" />
									<jsp:param name="field" value="image" />
									<jsp:param name="image_pos" value="1" />
									<jsp:param name="width" value="10" />
									<jsp:param name="copy" value="true" />
								</jsp:include>
							</div>
						</strapi:acknowledgementsContentImageBlockRightsLinks>
					</strapi:foreachAcknowledgementsContentImageBlockRightsLinks>
				</div>
			</strapi:acknowledgements>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>