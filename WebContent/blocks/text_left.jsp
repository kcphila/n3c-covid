<%@ include file="../_include.jsp"%>

<c:set var="left" value="9"/>
<c:set var="right" value="3"/>

<c:if test="${not empty param.width}">
	<fmt:parseNumber var="width" value="${param.width}" integerOnly="true" parseLocale="en_US" />
	<c:set var="left" value="${width}"/>
	<c:set var="right" value="${12 - width}"/>
</c:if>

<fmt:parseNumber var="pos" value="${param.image_pos}" integerOnly="true" parseLocale="en_US" />

<strapi:contentImageBlockLefts ID="${param.id}">
	<div class="row flex-nowrap block">
		<div class="col-${left}">
			<c:if test="${not empty tag_contentImageBlockLefts.header}">
				<h2><strapi:contentImageBlockLeftsHeader /></h2>
			</c:if>
			<util:markdown2html><strapi:contentImageBlockLeftsContent /></util:markdown2html>
			<c:if test="${not empty tag_contentImageBlockLefts.url}">
				<p></p>
				<a href="<strapi:contentImageBlockLeftsUrl/>" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true"><strapi:contentImageBlockLeftsUrlLabel/></a>
			</c:if>
		</div>
		<div class="col-${right}">
			<jsp:include page="../files/related_image.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="${param.type}" />
				<jsp:param name="field" value="${param.field}" />
				<jsp:param name="format" value="auto" />
			</jsp:include>
		</div>
	</div>
</strapi:contentImageBlockLefts>
