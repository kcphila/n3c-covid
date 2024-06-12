<%@ include file="../_include.jsp"%>
<style>
.card img {
    max-width:150px;
    height:auto;
}
</style>
<div class="col-3">
	<div class="center">
	<jsp:include page="headshot.jsp">
		<jsp:param name="id" value="${param.id}"/>
	</jsp:include>
	</div>
	<div class="center">
	<strapi:bios ID="${param.id}">
		<strapi:biosFirstName />
		<strapi:biosLastName /><c:if test="${not empty tag_bios.title}">, <strapi:biosTitle /></c:if>
		<br>
		<strapi:biosOrganization />
	</strapi:bios>
	</div>
</div>
