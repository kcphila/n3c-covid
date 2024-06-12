<%@ include file="../_include.jsp"%>
<jsp:include page="../files/related_image.jsp">
	<jsp:param name="type" value="api::bio.bio" />
	<jsp:param name="field" value="headshot" />
	<jsp:param name="id" value="${param.id}" />
	<jsp:param name="format" value="150px" />
</jsp:include>
