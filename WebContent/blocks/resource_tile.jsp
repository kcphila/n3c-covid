<%@ include file="../_include.jsp"%>

<c:set var="format" value="thumbnail"/>
<c:if test="${not empty param.format}">
	<c:set var="format" value="${param.format}"/>
</c:if>

<strapi:resources ID="${param.id}">
	<div class="col col-${param.width}">
		<div class="row block">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="api::resource.resource" />
				<jsp:param name="field" value="graphic" />
				<jsp:param name="pos" value="1" />
				<jsp:param name="format" value="${format}" />
			</jsp:include>
		</div>
		<c:if test="${empty param.suppress || param.suppress=='false' }">
			<div class="row">
				<h4><strapi:resourcesHeader/></h4>
				<util:markdown2html><strapi:resourcesDescription/></util:markdown2html>
			</div>
		</c:if>
	</div>
</strapi:resources>