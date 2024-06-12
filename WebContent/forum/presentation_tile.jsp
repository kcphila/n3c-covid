<%@ include file="../_include.jsp"%>

<strapi:forumPresentations ID="${param.id}">
	<div class="card">
		<div class="card-body">
			<h3 class="card-title">
				<fmt:parseDate  var="date" pattern="yyyy-MM-dd" parseLocale="en_US" ><strapi:forumPresentationsDate /></fmt:parseDate>
				<fmt:formatDate value="${date}" dateStyle="long"/>
			</h3>
			<span class="card-text">
				<b>Topic:</b>
				<util:markdown2html><strapi:forumPresentationsTopic /></util:markdown2html>
			</span>
			<span class="card-text">
				<b>Presenters:</b>
				<util:markdown2html><strapi:forumPresentationsPresenters /></util:markdown2html>
			</span>
		</div>
	</div>
</strapi:forumPresentations>
