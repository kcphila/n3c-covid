<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Leadership"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-12">
				<strapi:leaderships ID="1">
					<strapi:foreachLeadershipsBioGroupsLinks var="idIter" sortCriteria="bio_group_order">
						<strapi:leadershipsBioGroupsLinks>
							<strapi:bioGroups ID="${tag_leadershipsBioGroupsLinks.bioGroupId}">
								<div class="shadow-block">
									<h1><strapi:bioGroupsName /></h1>
									<div class="row flex-wrap">
										<strapi:foreachBiosBioGroupsLinks var="bio" sortCriteria="bio_order">
											<strapi:biosBioGroupsLinks>
												<jsp:include page="../bio/thumbnail.jsp">
													<jsp:param name="id" value="${tag_biosBioGroupsLinks.bioId}"/>
												</jsp:include>
											</strapi:biosBioGroupsLinks>
										</strapi:foreachBiosBioGroupsLinks>
									</div>
								</div>
							</strapi:bioGroups>
						</strapi:leadershipsBioGroupsLinks>
					</strapi:foreachLeadershipsBioGroupsLinks>
				</strapi:leaderships>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>