<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="PHASTR"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-2 left-nav-bar">
				<div class="scrollingHeading">
					<div id="scrollingItem">
						<span> <a class="nav-link" href="#projects"> <i aria-hidden="true" class="fa fa-search"></i> Open Questions</a></span>
						<hr class="scrollingHR" />
					</div>
					<div id="scrollingItem">
						<span> <a class="nav-link" href="#about"> <i aria-hidden="true" class="fa fa-info-circle"></i> About</a></span>
						<hr class="scrollingHR" />
					</div>
					<div id="scrollingItem">
						<span> <a class="nav-link" href="#eligibility"> <i aria-hidden="true" class="fa fa-check-circle"></i> Eligibility</a></span>
						<hr class="scrollingHR" />
					</div>
					<div id="scrollingItem">
						<span> <a class="nav-link" href="#submission"> <i aria-hidden="true" class="fa fa-sign-in"></i> Application</a></span>
						<hr class="scrollingHR" />
					</div>
					<div id="scrollingItem">
						<span> <a class="nav-link" href="#quickstart"> <i aria-hidden="true" class="fa fa-rocket"></i> Quick Start</a></span>
						<hr class="scrollingHR" />
					</div>
					<div id="scrollingItem">
						<span> <a class="nav-link" href="#faqs"> <i aria-hidden="true" class="fa fa-question-circle"></i> FAQ's</a></span>
					</div>
					<div id="email" style="text-align: center; margin-top: 20px;">
						<span> <a class="nav-link" href="mailto:PublicHealth@nih.gov" style="font-size: 12px" target="_blank"> <i aria-hidden="true" class="fa fa-envelope"
								style="font-size: 12px; color: unset;"></i> PublicHealth@nih.gov</a></span>
					</div>
				</div>
			</div>
			<div class="col-10 right-block">
				<h1>N3C Public Health Answers to Speed Tractable Results (PHASTR)</h1>
				<strapi:phastrs ID="1">
					<a id="projects"></a>
					<h3>The following questions are open for application:</h3>
					<div class="row flex-wrap">
						<strapi:foreachPhastrsPublicHealthQuestionsLinks var="phqs" sortCriteria="public_health_question_order">
							<strapi:phastrsPublicHealthQuestionsLinks>
								<jsp:include page="tile.jsp">
									<jsp:param value="${tag_phastrsPublicHealthQuestionsLinks.publicHealthQuestionId}" name="id"/>
								</jsp:include>
							</strapi:phastrsPublicHealthQuestionsLinks>
						</strapi:foreachPhastrsPublicHealthQuestionsLinks>
					</div>
					<hr>
					<a id="about"></a>
					<util:markdown2html><strapi:phastrsAbout /></util:markdown2html>
					<hr>
					<a id="eligibility"></a>
					<util:markdown2html><strapi:phastrsEligibility /></util:markdown2html>
					<hr>
					<a id="submission"></a>
					<util:markdown2html><strapi:phastrsSubmission /></util:markdown2html>
					<hr>
					<a id="quickstart"></a>
					<util:markdown2html><strapi:phastrsQuickStart /></util:markdown2html>
					<hr>
					<a id="faqs"></a><h3>FAQs</h3>
					<div class="accordion" id="faqAccordian">
						<strapi:foreachPhastrsFaqsLinks var="faqs" sortCriteria="faq_order">
							<strapi:phastrsFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_phastrsFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_phastrsFaqsLinks.faqOrder).intValue()}" name="pos" />
								</jsp:include>
							</strapi:phastrsFaqsLinks>
						</strapi:foreachPhastrsFaqsLinks>
					</div>
				</strapi:phastrs>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>