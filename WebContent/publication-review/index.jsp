<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Publication Review"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:publicationReviews ID="1">
				<h1><strapi:publicationReviewsHeader/></h1>
				<strapi:foreachPublicationReviewsIntroBlockLinks var="x">
					<strapi:publicationReviewsIntroBlockLinks>
						<jsp:include page="../blocks/text_left.jsp">
							<jsp:param name="id" value="${tag_publicationReviewsIntroBlockLinks.contentImageBlockLeftId}" />
							<jsp:param name="type" value="api::content-image-block-left.content-image-block-left" />
							<jsp:param name="field" value="image" />
							<jsp:param name="image_pos" value="1" />
						</jsp:include>
					</strapi:publicationReviewsIntroBlockLinks>
				</strapi:foreachPublicationReviewsIntroBlockLinks>
				
				<div class="col=4">
					<a href="https://national-covid-cohort-collaborative.github.io/guide-to-n3c-v1/" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true"> View The Researcher's Guide to N3C</a>
				</div>

				<h2><strapi:publicationReviewsHeader2/></h2>
				<util:markdown2html><strapi:publicationReviewsFaqBlock1/></util:markdown2html>
				<div class="accordion" id="faq1Accordian">
					<strapi:foreachPublicationReviewsFaqs1Links var="faqs" sortCriteria="faq_order">
						<strapi:publicationReviewsFaqs1Links>
							<jsp:include page="../faqs/turndown.jsp">
								<jsp:param value="${tag_publicationReviewsFaqs1Links.faqId}" name="id" />
								<jsp:param value="${Double.valueOf(tag_publicationReviewsFaqs1Links.faqOrder).intValue()}" name="pos" />
								<jsp:param value="faq1" name="prefix"/>
								<jsp:param value="faq1Accordian" name="parent"/>
							</jsp:include>
						</strapi:publicationReviewsFaqs1Links>
					</strapi:foreachPublicationReviewsFaqs1Links>
				</div>
				<p></p>
				<util:markdown2html><strapi:publicationReviewsFaqBlock2/></util:markdown2html>
				<div class="accordion" id="faq2Accordian">
					<strapi:foreachPublicationReviewsFaqs2Links var="faqs" sortCriteria="faq_order">
						<strapi:publicationReviewsFaqs2Links>
							<jsp:include page="../faqs/turndown.jsp">
								<jsp:param value="${tag_publicationReviewsFaqs2Links.faqId}" name="id" />
								<jsp:param value="${Double.valueOf(tag_publicationReviewsFaqs2Links.faqOrder).intValue()}" name="pos" />
								<jsp:param value="faq2Accordian" name="parent"/>
							</jsp:include>
						</strapi:publicationReviewsFaqs2Links>
					</strapi:foreachPublicationReviewsFaqs2Links>
				</div>

				<p></p>
				<util:markdown2html><strapi:publicationReviewsBlock2/></util:markdown2html>

				<p></p>
				<util:markdown2html><strapi:publicationReviewsBlock3/></util:markdown2html>
			</strapi:publicationReviews>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>