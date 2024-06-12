<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Webinars and Information Sessions"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<strapi:presentations ID="1">
			<div class="main-block">
				<h1>Webinars and Information Sessions</h1>
				<div class="row flex-wrap">
					<strapi:foreachPresentationsYouTubeVideosLinks var="idIter" sortCriteria="you_tube_video_order">
						<strapi:presentationsYouTubeVideosLinks>
							<div class="col-6">
								<jsp:include page="../youtube/video.jsp">
									<jsp:param value="${tag_presentationsYouTubeVideosLinks.youTubeVideoId }" name="id" />
								</jsp:include>
							</div>
						</strapi:presentationsYouTubeVideosLinks>
					</strapi:foreachPresentationsYouTubeVideosLinks>
				</div>
			</div>
		</strapi:presentations>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>