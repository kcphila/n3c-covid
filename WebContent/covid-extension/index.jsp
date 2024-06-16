<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="COVID Agreement Extensions"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-2">
				&nbsp;
			</div>
			
			<div class="col-8 right-block">
				<strapi:covidExtensions ID="1">
					<h1><strapi:covidExtensionsTitle/></h1>
					
					<br>
					<div class="shadow-block">
						<strapi:foreachCovidExtensionsFileLinkagesLinks var="x" sortCriteria="id desc">
							<strapi:covidExtensionsFileLinkagesLinks>
								<p>
									<strapi:fileLinkages ID="${tag_covidExtensionsFileLinkagesLinks.fileLinkageId}">
										<b>
											<jsp:include page="../files/link.jsp">
												<jsp:param value="${tag_fileLinkages.ID}" name="id" />
												<jsp:param value="api::file-linkage.file-linkage" name="type" />
												<jsp:param value="Media" name="field" />
												<jsp:param value="${tag_fileLinkages.label}" name="anchor" />
											</jsp:include>
										</b>
										<strapi:fileLinkagesDescription />
									</strapi:fileLinkages>
								</p>
							</strapi:covidExtensionsFileLinkagesLinks>
						</strapi:foreachCovidExtensionsFileLinkagesLinks>
					</div>
					<br>
					
					<util:markdown2html><strapi:covidExtensionsTextBlock1/></util:markdown2html>
					
					<h2 id="data-enclave">FAQs</h2>
					<div class="accordion" id="enclaveAccordian">
						<strapi:foreachCovidExtensionsFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:covidExtensionsFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_covidExtensionsFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_covidExtensionsFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="enclaveAccordian" name="parent" />
								</jsp:include>
							</strapi:covidExtensionsFaqsLinks>
						</strapi:foreachCovidExtensionsFaqsLinks>
					</div>
				</strapi:covidExtensions>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>