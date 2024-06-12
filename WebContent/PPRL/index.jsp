<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="PPRL"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap main-block">
			<div class="col-2 left-nav-bar">
				<div id="contacts">
					<div class="scrollingHeading">
						<span><strong>Quick Links:</strong></span>
					</div>
					<div class="scrollingItem">
						<a class="nav-link" href="https://www.regenstrief.org/n3c-lhb/" target="_blank">Regenstrief Linkage Honest Broker</a>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="https://datavant.zendesk.com/hc/en-us" target="_blank">Datavant Support</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="mailto:NCATSPartnerships@mail.nih.gov">NCATS Office of Strategic Alliances</a></span>
					</div>
				</div>

				<div id="navigation">
					<div class="scrollingHeading">
						<span><strong>Contents:</strong></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#introduction">Introduction</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#functions">Ways to Participate</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#oversight">Governance</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#faq">FAQ's</a></span>
					</div>
					<div class="scrollingItem">
						<span><a class="nav-link" href="#glossary">Glossary</a></span>
					</div>
				</div>
			</div>
			
			<div class="col-10 right-block">
				<strapi:pprls ID="1">
					<h1><strapi:pprlsHeader/></h1>
					<h2><strapi:pprlsSubheader/></h2>
						<div class="row flex-wrap">
							<div class="col-4 center">
								<a href="https://discovery.biothings.io/dataset?guide=/guide/n3c/dataset" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Browse PPRL Datasets</a>
							</div>
							<div class="col-4 center">
								<a href="https://doi.org/doi:10.5281/zenodo.5165212" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Access PPRL Governance Documents</a>
							</div>
						</div>
					<util:markdown2html><strapi:pprlsStart/></util:markdown2html>
					
					<h2 id="introduction"><strapi:pprlsIntroHeader/></h2>
					<util:markdown2html><strapi:pprlsIntroBlock/></util:markdown2html>
					
					<h2 id="functions"><strapi:pprlsParticipationHeader/></h2>
					<util:markdown2html><strapi:pprlsParticipationBlock1/></util:markdown2html>
					<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image1" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="medium" />
					</jsp:include>
					</div>
					<util:markdown2html><strapi:pprlsParticipationBlock2/></util:markdown2html>
					<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image2" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="medium" />
					</jsp:include>
					</div>
					<util:markdown2html><strapi:pprlsParticipationBlock3/></util:markdown2html>
					<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image3" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="medium" />
					</jsp:include>
					</div>
					<util:markdown2html><strapi:pprlsParticipationBlock4/></util:markdown2html>
					<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="image4" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="medium" />
					</jsp:include>
					</div>
					<util:markdown2html><strapi:pprlsParticipationBlock5/></util:markdown2html>
					
					<h2 id="oversight"><strapi:pprlsGovernanceHeader/></h2>
					<util:markdown2html><strapi:pprlsGovernanceBlock1/></util:markdown2html>
					<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="governance_image1" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="medium" />
					</jsp:include>
					</div>
					<util:markdown2html><strapi:pprlsGovernanceBlock2/></util:markdown2html>
					<div class="center">
					<jsp:include page="../files/related_image_pos.jsp">
						<jsp:param name="id" value="1" />
						<jsp:param name="type" value="api::pprl.pprl" />
						<jsp:param name="field" value="governance_image2" />
						<jsp:param name="pos" value="1" />
						<jsp:param name="format" value="medium" />
					</jsp:include>
					</div>
					<util:markdown2html><strapi:pprlsGovernanceBlock3/></util:markdown2html>
					
					<h2 id="faq"><strapi:pprlsFaqHeader/></h2>
					<util:markdown2html><strapi:pprlsFaqBlock/></util:markdown2html>
					<div class="accordion" id="faqAccordian">
						<strapi:foreachPprlsFaqsLinks var="x" sortCriteria="faq_id">
							<strapi:pprlsFaqsLinks>
								<jsp:include page="../faqs/turndown.jsp">
									<jsp:param value="${tag_pprlsFaqsLinks.faqId}" name="id" />
									<jsp:param value="${Double.valueOf(tag_pprlsFaqsLinks.faqOrder).intValue()}" name="pos" />
								</jsp:include>
							</strapi:pprlsFaqsLinks>
						</strapi:foreachPprlsFaqsLinks>
					</div>
					
					<h2 id="glossary"><strapi:pprlsGlossaryHeader/></h2>
					<util:markdown2html><strapi:pprlsGlossaryBlock/></util:markdown2html>
				</strapi:pprls>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>