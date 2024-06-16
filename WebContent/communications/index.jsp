<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Communications"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:communicationMaterials ID="1">
				<h1><strapi:communicationMaterialsHeader/></h1>
				<util:markdown2html><strapi:communicationMaterialsBlock/></util:markdown2html>
				
				<div class="row flex-wrap">
					<strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks var="x" sortCriteria="content_image_block_right_order">
						<strapi:communicationMaterialsContentImageBlockRightsLinks>
							<div class="col col-6">
								<jsp:include page="../blocks/text_right.jsp">
									<jsp:param name="id" value="${tag_communicationMaterialsContentImageBlockRightsLinks.contentImageBlockRightId}"/>
									<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
									<jsp:param name="field" value="image"/>
									<jsp:param name="image_pos" value="1"/>
								</jsp:include>
							</div>
						</strapi:communicationMaterialsContentImageBlockRightsLinks>
					</strapi:foreachCommunicationMaterialsContentImageBlockRightsLinks>
				</div>
			</strapi:communicationMaterials>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>