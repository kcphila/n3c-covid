<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Training"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="main-block">
			<strapi:trainings ID="1">
				<h1><strapi:trainingsHeader/></h1>
				<util:markdown2html><strapi:trainingsBlock1/></util:markdown2html>
				
				<div class="row flex-wrap">
					<strapi:foreachTrainingsYouTubeVideosLinks var="x" sortCriteria="you_tube_video_order">
						<strapi:trainingsYouTubeVideosLinks>
							<div class="col-6">
								<jsp:include page="../youtube/video.jsp">
									<jsp:param value="${tag_trainingsYouTubeVideosLinks.youTubeVideoId }" name="id" />
								</jsp:include>
							</div>
						</strapi:trainingsYouTubeVideosLinks>
					</strapi:foreachTrainingsYouTubeVideosLinks>
				</div>
				
				<h2><strapi:trainingsPortalHeader/></h2>
				<util:markdown2html><strapi:trainingsPortalBlock/></util:markdown2html>
				<div class="row flex-wrap">
					<strapi:foreachTrainingsPortalResourcesLinks var="x" sortCriteria="resource_order">
						<strapi:trainingsPortalResourcesLinks>
							<jsp:include page="../blocks/resource_tile.jsp">
								<jsp:param name="id" value="${tag_trainingsPortalResourcesLinks.resourceId}" />
								<jsp:param value="6" name="width"/>
								<jsp:param value="true" name="suppress"/>
								<jsp:param value="80%" name="format"/>
							</jsp:include>
						</strapi:trainingsPortalResourcesLinks>
					</strapi:foreachTrainingsPortalResourcesLinks>
				</div>
				
				<h2><strapi:trainingsCommunityHeader/></h2>
				<util:markdown2html><strapi:trainingsCommunityBlock/></util:markdown2html>
				
				<h3><strapi:trainingsEugHeader/></h3>
				<util:markdown2html><strapi:trainingsEugBlock/></util:markdown2html>
				<util:markdown2html><strapi:trainingsEugBlock2/></util:markdown2html>
				
				<div class="row flex-wrap">
					<strapi:foreachTrainingsEugYouTubeVideosLinks var="x" sortCriteria="you_tube_video_order">
						<strapi:trainingsEugYouTubeVideosLinks>
							<div class="col-6">
								<jsp:include page="../youtube/video.jsp">
									<jsp:param value="${tag_trainingsEugYouTubeVideosLinks.youTubeVideoId }" name="id" />
								</jsp:include>
							</div>
						</strapi:trainingsEugYouTubeVideosLinks>
					</strapi:foreachTrainingsEugYouTubeVideosLinks>
				</div>
				
				<h3><strapi:trainingsSharedResourceHeader/></h3>
				<util:markdown2html><strapi:trainingsSharedResourceBlock/></util:markdown2html>
				<div class="row flex-wrap">
					<strapi:foreachTrainingsSharedResourcesLinks var="x" sortCriteria="resource_order">
						<strapi:trainingsSharedResourcesLinks>
							<jsp:include page="../blocks/resource_tile.jsp">
								<jsp:param name="id" value="${tag_trainingsSharedResourcesLinks.resourceId}" />
								<jsp:param value="3" name="width"/>
							</jsp:include>
						</strapi:trainingsSharedResourcesLinks>
					</strapi:foreachTrainingsSharedResourcesLinks>
				</div>
				
				<h3><strapi:trainingsAdditionalResourcesHeader/></h3>
				<div class="row flex-wrap">
					<strapi:foreachTrainingsAdditionalResourcesLinks var="x" sortCriteria="resource_order">
						<strapi:trainingsAdditionalResourcesLinks>
							<jsp:include page="../blocks/resource_tile_no_image.jsp">
								<jsp:param name="id" value="${tag_trainingsAdditionalResourcesLinks.resourceId}" />
								<jsp:param value="3" name="width"/>
							</jsp:include>
						</strapi:trainingsAdditionalResourcesLinks>
					</strapi:foreachTrainingsAdditionalResourcesLinks>
				</div>
			</strapi:trainings>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>