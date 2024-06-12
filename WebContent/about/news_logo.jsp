<%@ include file="../_include.jsp"%>
<jsp:include page="../files/related_image.jsp">
	<jsp:param name="type" value="api::press-release.press-release" />
	<jsp:param name="field" value="image" />
	<jsp:param name="id" value="${param.id}" />
	<jsp:param name="format" value="${param.format}" />
</jsp:include>
