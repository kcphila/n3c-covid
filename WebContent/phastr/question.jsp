<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="PHASTR Question - "/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp" />
		<div class="row flex-nowrap">
			<strapi:publicHealthQuestions ID="${param.id}">
				<div class="main-block">
					<h1><strapi:publicHealthQuestionsTitle /></h1>
					<h3>Contract Description</h3>
					<util:markdown2html><strapi:publicHealthQuestionsDescription /></util:markdown2html>
					<h3>Contract Aims</h3>
					<util:markdown2html><strapi:publicHealthQuestionsAims /></util:markdown2html>
					<h3>Analysis Plan / Research Method</h3>
					<util:markdown2html><strapi:publicHealthQuestionsAnalysisPlan /></util:markdown2html>
					<h3>Expected Results</h3>
					<util:markdown2html><strapi:publicHealthQuestionsExpectedResults /></util:markdown2html>
					<h3>Inclusion Criteria</h3>
					<util:markdown2html><strapi:publicHealthQuestionsInclusionCriteria /></util:markdown2html>
					<h3>Exclusion Criteria</h3>
					<util:markdown2html><strapi:publicHealthQuestionsExclusionCriteria /></util:markdown2html>
					<h3>Phenotype</h3>
					<util:markdown2html><strapi:publicHealthQuestionsPhenotype /></util:markdown2html>
					<h3>Deliverables</h3>
					<util:markdown2html><strapi:publicHealthQuestionsDeliverables /></util:markdown2html>
				</div>
				<div class="col col-12 col-lg-3 side-col">
					<div class="shade-blue">
					<b>Application Open Date</b><br>
					<strapi:publicHealthQuestionsOpenDate/><br>
					<b>Application Close Date</b><br>
					<strapi:publicHealthQuestionsCloseDate/><br>
					<b>Number of Contracts</b><br>
					<strapi:publicHealthQuestionsContractCount/><br>
					<b>Contract Amount</b><br>
					<strapi:publicHealthQuestionsContractAmount/><br>
					<b>Length of Contract</b><br>
					<strapi:publicHealthQuestionsContractLength/><br>
					<b>Contact</b><br>
					<strapi:publicHealthQuestionsContact/><br>
					<b>Email</b><br>
					<a href="mailto:<strapi:publicHealthQuestionsContactEmail/>"><strapi:publicHealthQuestionsContactEmail/></a><br>
					</div>
				</div>
			</strapi:publicHealthQuestions>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>