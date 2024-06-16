<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Team Creation"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:teamCreations ID="1">
				<h1><strapi:teamCreationsTitle/></h1>
				<div class="row flex-wrap">
					<strapi:foreachTeamCreationsNavTilesLinks var="tiles" sortCriteria="nav_tile_order">
						<strapi:teamCreationsNavTilesLinks>
							<div class="col-3">
							<jsp:include page="../blocks/nav_tile.jsp">
								<jsp:param value="${tag_teamCreationsNavTilesLinks.navTileId}" name="id"/>
							</jsp:include>
							</div>
						</strapi:teamCreationsNavTilesLinks>
					</strapi:foreachTeamCreationsNavTilesLinks>
				</div>
			
				<div class="row">
					<div class="col-8">
						<h2><strapi:teamCreationsReadyHeader/></h2>
						<util:markdown2html><strapi:teamCreationsReadyBlock/></util:markdown2html>
					</div>
					<div class="col-4">
						<jsp:include page="../files/related_image.jsp">
							<jsp:param name="type" value="api::team-creation.team-creation" />
							<jsp:param name="field" value="ready_image" />
							<jsp:param name="id" value="1" />
							<jsp:param name="format" value="150px" />
						</jsp:include>
					</div>
				</div>
			
				<div class="row" id="leadership">
					<div class="col-4">
						<jsp:include page="../files/related_image.jsp">
							<jsp:param name="type" value="api::team-creation.team-creation" />
							<jsp:param name="field" value="lead_image" />
							<jsp:param name="id" value="1" />
							<jsp:param name="format" value="150px" />
						</jsp:include>
					</div>
					<div class="col-8">
						<h2><strapi:teamCreationsLeadHeader/></h2>
						<util:markdown2html><strapi:teamCreationsLeadBlock/></util:markdown2html>
						<div class="accordion" id="LeadAccordian">
							<strapi:foreachTeamCreationsLeadFaqsLinks var="faqs" sortCriteria="faq_order">
								<strapi:teamCreationsLeadFaqsLinks>
									<jsp:include page="../faqs/turndown.jsp">
										<jsp:param value="${tag_teamCreationsLeadFaqsLinks.faqId}" name="id" />
										<jsp:param value="${Double.valueOf(tag_teamCreationsLeadFaqsLinks.faqOrder).intValue()}" name="pos" />
										<jsp:param value="LeadAccordian" name="parent"/>
										<jsp:param value="true" name="collapsed"/>
									</jsp:include>
								</strapi:teamCreationsLeadFaqsLinks>
							</strapi:foreachTeamCreationsLeadFaqsLinks>
						</div>
					</div>
				</div>
			
				<div class="row" id="responsibility">
					<div class="col-8">
						<h2><strapi:teamCreationsResponsibilityHeader/></h2>
						<util:markdown2html><strapi:teamCreationsResponsibilityBlock/></util:markdown2html>
						<div class="accordion" id="ResponsibilityAccordian">
							<strapi:foreachTeamCreationsResponsibilityFaqsLinks var="faqs" sortCriteria="faq_order">
								<strapi:teamCreationsResponsibilityFaqsLinks>
									<jsp:include page="../faqs/turndown.jsp">
										<jsp:param value="${tag_teamCreationsResponsibilityFaqsLinks.faqId}" name="id" />
										<jsp:param value="${Double.valueOf(tag_teamCreationsResponsibilityFaqsLinks.faqOrder).intValue()}" name="pos" />
										<jsp:param value="ResponsibilityAccordian" name="parent"/>
										<jsp:param value="true" name="collapsed"/>
									</jsp:include>
								</strapi:teamCreationsResponsibilityFaqsLinks>
							</strapi:foreachTeamCreationsResponsibilityFaqsLinks>
						</div>
					</div>
					<div class="col-4">
						<jsp:include page="../files/related_image.jsp">
							<jsp:param name="type" value="api::team-creation.team-creation" />
							<jsp:param name="field" value="responsibility_image" />
							<jsp:param name="id" value="1" />
							<jsp:param name="format" value="150px" />
						</jsp:include>
					</div>
				</div>
			
				<div class="row" id="resources">
					<div class="col-4">
						<jsp:include page="../files/related_image.jsp">
							<jsp:param name="type" value="api::team-creation.team-creation" />
							<jsp:param name="field" value="resources_image" />
							<jsp:param name="id" value="1" />
							<jsp:param name="format" value="150px" />
						</jsp:include>
					</div>
					<div class="col-8">
						<h2><strapi:teamCreationsResourcesHeader/></h2>
						<util:markdown2html><strapi:teamCreationsResourcesBlock/></util:markdown2html>
						<div class="accordion" id="ResourcesAccordian">
							<strapi:foreachTeamCreationsResourcesFaqsLinks var="faqs" sortCriteria="faq_order">
								<strapi:teamCreationsResourcesFaqsLinks>
									<jsp:include page="../faqs/turndown.jsp">
										<jsp:param value="${tag_teamCreationsResourcesFaqsLinks.faqId}" name="id" />
										<jsp:param value="${Double.valueOf(tag_teamCreationsResourcesFaqsLinks.faqOrder).intValue()}" name="pos" />
										<jsp:param value="ResourcesAccordian" name="parent"/>
										<jsp:param value="true" name="collapsed"/>
									</jsp:include>
								</strapi:teamCreationsResourcesFaqsLinks>
							</strapi:foreachTeamCreationsResourcesFaqsLinks>
						</div>
					</div>
				</div>
			
				<div class="row" id="guidelines">
					<div class="col-8">
						<h2><strapi:teamCreationsGuidelineHeader/></h2>
						<div class="accordion" id="GuidelineAccordian">
							<strapi:foreachTeamCreationsGuidelineFaqsLinks var="faqs" sortCriteria="faq_order">
								<strapi:teamCreationsGuidelineFaqsLinks>
									<jsp:include page="../faqs/turndown.jsp">
										<jsp:param value="${tag_teamCreationsGuidelineFaqsLinks.faqId}" name="id" />
										<jsp:param value="${Double.valueOf(tag_teamCreationsGuidelineFaqsLinks.faqOrder).intValue()}" name="pos" />
										<jsp:param value="GuidelineAccordian" name="parent"/>
										<jsp:param value="true" name="collapsed"/>
									</jsp:include>
								</strapi:teamCreationsGuidelineFaqsLinks>
							</strapi:foreachTeamCreationsGuidelineFaqsLinks>
						</div>
					</div>
					<div class="col-4">
						<jsp:include page="../files/related_image.jsp">
							<jsp:param name="type" value="api::team-creation.team-creation" />
							<jsp:param name="field" value="guideline_image" />
							<jsp:param name="id" value="1" />
							<jsp:param name="format" value="150px" />
						</jsp:include>
					</div>
				</div>
			</strapi:teamCreations>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>