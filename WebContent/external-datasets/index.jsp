<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="External Datasets"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<strapi:externalDatasets ID="1">
					<h1><strapi:externalDatasetsHeader/></h1>
					<strapi:foreachExternalDatasetsDescriptionLinks var="x">
						<strapi:externalDatasetsDescriptionLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_externalDatasetsDescriptionLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:externalDatasetsDescriptionLinks>
					</strapi:foreachExternalDatasetsDescriptionLinks>
						<div class="row flex-wrap">
							<div class="col-3 center">
								<a href="#browse" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Browse Datasets</a>
							</div>
							<div class="col-3 center">
								<a href="#request" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Request Datasets</a>
							</div>
							<div class="col-3 center">
								<a href="#support" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Dataset Support</a>
							</div>
						</div>

					<div class="row flex-nowrap shadow-block" id="browse">
						<div class="col-6">
							<util:markdown2html><strapi:externalDatasetsBlock1/></util:markdown2html>
						</div>
						<div class="col-6">
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<strapi:foreachExternalDatasetsYouTubeVideoLinks var="x">
								<strapi:externalDatasetsYouTubeVideoLinks>
									<jsp:include page="../youtube/video.jsp">
										<jsp:param value="${tag_externalDatasetsYouTubeVideoLinks.youTubeVideoId}" name="id" />
										<jsp:param value="false" name="footer"/>
									</jsp:include>
								</strapi:externalDatasetsYouTubeVideoLinks>
							</strapi:foreachExternalDatasetsYouTubeVideoLinks>
						</div>
					</div>

					<div id="request"></div>
					<strapi:foreachExternalDatasetsIngestionLinks var="x">
						<strapi:externalDatasetsIngestionLinks>
							<jsp:include page="../blocks/text_right.jsp">
								<jsp:param name="id" value="${tag_externalDatasetsIngestionLinks.contentImageBlockRightId}"/>
								<jsp:param name="type" value="api::content-image-block-right.content-image-block-right"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:externalDatasetsIngestionLinks>
					</strapi:foreachExternalDatasetsIngestionLinks>

					<div class="center">
						<jsp:include page="../files/related_image.jsp">
							<jsp:param name="id" value="1" />
							<jsp:param name="type" value="api::external-dataset.external-dataset" />
							<jsp:param name="field" value="graphic" />
							<jsp:param name="format" value="large" />
						</jsp:include>
					</div>

					<div id="support"></div>
					<strapi:foreachExternalDatasetsSupportLinks var="x">
						<strapi:externalDatasetsSupportLinks>
							<jsp:include page="../blocks/text_left.jsp">
								<jsp:param name="id" value="${tag_externalDatasetsSupportLinks.contentImageBlockLeftId}"/>
								<jsp:param name="type" value="api::content-image-block-left.content-image-block-left"/>
								<jsp:param name="field" value="image"/>
								<jsp:param name="image_pos" value="1"/>
							</jsp:include>
						</strapi:externalDatasetsSupportLinks>
					</strapi:foreachExternalDatasetsSupportLinks>
				</strapi:externalDatasets>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>