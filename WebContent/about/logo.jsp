<%@ include file="../_include.jsp"%>
<jsp:include page="../files/related_image.jsp">
	<jsp:param name="type" value="api::partner.partner" />
	<jsp:param name="field" value="logo" />
	<jsp:param name="id" value="${param.id}" />
	<jsp:param name="format" value="auto-height" />
</jsp:include>
