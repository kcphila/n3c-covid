<%@ include file="../_include.jsp"%>

<strapi:resources ID="${param.id}">
	<div class="col col-${param.width} block">
		<h4><strapi:resourcesHeader/></h4>
		<util:markdown2html><strapi:resourcesDescription/></util:markdown2html>
		<c:if test="${not empty tag_resources.url}">
			<a href="<strapi:resourcesUrl/>"><strapi:resourcesUrlLabel/></a>
		</c:if>
	</div>
</strapi:resources>