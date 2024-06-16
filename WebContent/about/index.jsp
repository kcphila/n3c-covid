<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="About"/>
</jsp:include>


<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:abouts ID="1">
				<div class="row flex-nowrap highlight">
					<div class="col-12 block">
						<util:markdown2html><strapi:aboutsBlock1 /></util:markdown2html>
					</div>
				</div>
				<div class="row flex-nowrap shadow-	block">
					<div class="col-5">
						<jsp:include page="../files/image.jsp">
							<jsp:param value="325" name="id" />
							<jsp:param value="auto" name="format" />
						</jsp:include>
					</div>
					<div class="col-7">
						<util:markdown2html><strapi:aboutsBlock2 /></util:markdown2html>
						<p></p>
						<a href="https://labs.cd2h.org/registration/" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Onboard to N3C</a>
					</div>
				</div>
				<div class="row flex-nowrap block">
					<div class="col-7">
						<util:markdown2html><strapi:aboutsBlock3 /></util:markdown2html>
					</div>
					<div class="col-5">
						<jsp:include page="../youtube/video.jsp">
							<jsp:param value="1" name="id" />
						</jsp:include>
					</div>
				</div>
				<div class="row flex-nowrap highlight">
					<div class="col-12 block">
						<util:markdown2html><strapi:aboutsBlock4 /></util:markdown2html>
					</div>
				</div>
			</strapi:abouts>
			<div class="shadow-block">
				<div class="col-12">
					<h2 class="center">Workstreams</h2>
				</div>
				<div class="col-12 row flex-nowrap center">
					<strapi:workstreams ID="1">
							<strapi:foreachWorkstreamsNavTilesLinks var="x">
								<strapi:workstreamsNavTilesLinks>
									<jsp:include page="../blocks/nav_tile_no_text.jsp">
										<jsp:param value="${tag_workstreamsNavTilesLinks.navTileId}" name="id" />
									</jsp:include>
								</strapi:workstreamsNavTilesLinks>
							</strapi:foreachWorkstreamsNavTilesLinks>
					</strapi:workstreams>
				</div>
			</div>
			<p></p>
			<h2 class="center">N3C Events</h2>
			<jsp:include page="../google-calendar/calendar.jsp"/>
			<p class="center"><a href="<util:applicationRoot/>/calendar">View N3C Calendar</a></p>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>