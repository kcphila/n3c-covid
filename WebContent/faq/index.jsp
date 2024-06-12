<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="FAQs"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-2 left-nav-bar">
				<div id="navigation">
					<div class="scrollingHeading">
						<span><strong>Contents:</strong></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#related-links">Related Links</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#data-enclave">N3C Data Enclave</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#domain-teams">Domain Teams</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#phenotype">PhenoType &amp; Data Acquisition</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#ingestion">Data Ingestion &amp; Harmonization</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#analytics">Collaborative Analytics</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#synthetic">Synthetic Data</a></span>
					</div>
				</div>
			</div>
			
			<div class="col-10 right-block">
				<strapi:faqLists ID="1">
					<h1 id="related-links"><strapi:faqListsHeader /></h1>
					<h2><strapi:faqListsSubheader /></h2>
					<util:markdown2html><strapi:faqListsIntroBlock /></util:markdown2html>

					<h2 id="data-enclave"><strapi:faqListsEnclaveHeader /></h2>
					<div class="accordion" id="enclaveAccordian">
						<strapi:foreachFaqListsEnclaveFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:faqListsEnclaveFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_faqListsEnclaveFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_faqListsEnclaveFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="enclaveAccordian" name="parent" />
								</jsp:include>
							</strapi:faqListsEnclaveFaqsLinks>
						</strapi:foreachFaqListsEnclaveFaqsLinks>
					</div>

					<h2 id="domain-teams"><strapi:faqListsDomainHeader /></h2>
					<div class="accordion" id="domainAccordian">
						<strapi:foreachFaqListsDomainFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:faqListsDomainFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_faqListsDomainFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_faqListsDomainFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="domainAccordian" name="parent" />
								</jsp:include>
							</strapi:faqListsDomainFaqsLinks>
						</strapi:foreachFaqListsDomainFaqsLinks>
					</div>

					<h2 id="phenotype"><strapi:faqListsPhenotypeHeader /></h2>
					<div class="accordion" id="phenotypeAccordian">
						<strapi:foreachFaqListsPhenotypeFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:faqListsPhenotypeFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_faqListsPhenotypeFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_faqListsPhenotypeFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="phenotypeAccordian" name="parent" />
								</jsp:include>
							</strapi:faqListsPhenotypeFaqsLinks>
						</strapi:foreachFaqListsPhenotypeFaqsLinks>
					</div>

					<h2 id="ingestion"><strapi:faqListsHarmonizationHeader /></h2>
					<div class="accordion" id="harmonizationAccordian">
						<strapi:foreachFaqListsHarmonizationFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:faqListsHarmonizationFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_faqListsHarmonizationFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_faqListsHarmonizationFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="harmonizationAccordian" name="parent" />
								</jsp:include>
							</strapi:faqListsHarmonizationFaqsLinks>
						</strapi:foreachFaqListsHarmonizationFaqsLinks>
					</div>

					<h2 id="analytics"><strapi:faqListsAnalyticsHeader /></h2>
					<div class="accordion" id="analyticsAccordian">
						<strapi:foreachFaqListsAnalyticsFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:faqListsAnalyticsFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_faqListsAnalyticsFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_faqListsAnalyticsFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="analyticsAccordian" name="parent" />
								</jsp:include>
							</strapi:faqListsAnalyticsFaqsLinks>
						</strapi:foreachFaqListsAnalyticsFaqsLinks>
					</div>

					<h2 id="synthetic"><strapi:faqListsSyntheticHeader /></h2>
					<div class="accordion" id="syntheticAccordian">
						<strapi:foreachFaqListsSyntheticFaqsLinks var="x" sortCriteria="faq_order">
							<strapi:faqListsSyntheticFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_faqListsSyntheticFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_faqListsSyntheticFaqsLinks.faqOrder).intValue()}" name="pos" />
									<jsp:param value="faq1" name="prefix" />
									<jsp:param value="syntheticAccordian" name="parent" />
								</jsp:include>
							</strapi:faqListsSyntheticFaqsLinks>
						</strapi:foreachFaqListsSyntheticFaqsLinks>
					</div>
				</strapi:faqLists>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>