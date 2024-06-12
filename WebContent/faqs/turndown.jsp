<%@ include file="../_include.jsp"%>

<c:choose>
	<c:when test="${not empty param.parent}">
		<c:set var="parent">${param.parent}</c:set>
	</c:when>
	<c:otherwise>
		<c:set var="parent">faqAccordian</c:set>
	</c:otherwise>
</c:choose>

<strapi:faqs ID="${param.id}">
	<div class="card">
		<div class="card-header" id="heading${param.pos}">
			<h2 class="mb-0">
				<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#${parent}_collapse${param.pos}" <c:choose><c:when test="${param.pos == 1}">aria-expanded="true"</c:when><c:otherwise>aria-expanded="false"</c:otherwise></c:choose> aria-controls="collapse${param.pos}">
					<util:markdown2html><strapi:faqsQuestion /></util:markdown2html>
				</button>
			</h2>
		</div>

		<div id="${parent}_collapse${param.pos}" class="collapse" aria-labelledby="heading${param.pos}" data-parent="#${parent}">
			<div class="card-body">
				<util:markdown2html><strapi:faqsAnswer /></util:markdown2html>
			</div>
		</div>
	</div>
</strapi:faqs>
