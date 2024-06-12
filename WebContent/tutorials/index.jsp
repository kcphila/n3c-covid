<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Tutorials"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-wrap main-block">
			<strapi:tutorials ID="1">
				<h1><strapi:tutorialsHeader /></h1>
				<util:markdown2html><strapi:tutorialsBlock /></util:markdown2html>
				<strapi:foreachTutorialsYouTubeVideosLinks var="x" sortCriteria="you_tube_video_order">
					<div class="col-6">
						<strapi:tutorialsYouTubeVideosLinks>
							<jsp:include page="../youtube/video.jsp">
								<jsp:param value="${tag_tutorialsYouTubeVideosLinks.youTubeVideoId}" name="id" />
							</jsp:include>
						</strapi:tutorialsYouTubeVideosLinks>
					</div>
				</strapi:foreachTutorialsYouTubeVideosLinks>
			</strapi:tutorials>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>