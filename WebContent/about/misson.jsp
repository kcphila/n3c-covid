<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Mission"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-12">
				<strapi:missions ID="1">
					<div class="row flex-nowrap">
						<div class="col-6">
							<util:markdown2html><strapi:missionsBlock1 /></util:markdown2html>
						</div>
						<div class="col-6">
							<util:markdown2html><strapi:missionsBlock2 /></util:markdown2html>
						</div>
					</div>
					<div class="row flex-nowrap">
						<div class="col-12 block">
							<h1>Agency Partners</h1>
							<strapi:foreachMissionsPartnerGroupsLinks var="idIter" sortCriteria="partner_group_order">
								<strapi:missionsPartnerGroupsLinks>
									<strapi:partnerGroups ID="${tag_missionsPartnerGroupsLinks.partnerGroupId}">
										<div class="subblock">
											<h2><strapi:partnerGroupsName /></h2>
											<div class="row flex-wrap">
												<strapi:foreachPartnersPartnerGroupLinks var="partners" sortCriteria="partner_order">
													<strapi:partnersPartnerGroupLinks>
														<strapi:partners ID="${tag_partnersPartnerGroupLinks.partnerId}">
															<div class="col col-3">
																<a href="${tag_partners.url}">
																<jsp:include page="logo.jsp">
																	<jsp:param name="id" value="${tag_partners.ID}" />
																	<jsp:param name="format" value="thumbnail" />
																</jsp:include>
																</a>
															</div>
														</strapi:partners>
													</strapi:partnersPartnerGroupLinks>
												</strapi:foreachPartnersPartnerGroupLinks>
											</div>
										</div>
									</strapi:partnerGroups>
								</strapi:missionsPartnerGroupsLinks>
							</strapi:foreachMissionsPartnerGroupsLinks>
						</div>
					</div>
				</strapi:missions>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>