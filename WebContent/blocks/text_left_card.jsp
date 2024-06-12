<%@ include file="../_include.jsp"%>

<strapi:contentImageBlockLefts ID="${param.id}">
	<div class="card col-6">
		<div class="row">
			<div class="col col-3">
				<jsp:include page="../files/related_image.jsp">
					<jsp:param name="id" value="${param.id}" />
					<jsp:param name="type" value="${param.type}" />
					<jsp:param name="field" value="${param.field}" />
					<jsp:param name="format" value="auto" />
				</jsp:include>
			</div>
			<div class="col col-9">
				<h2><strapi:contentImageBlockLeftsHeader /></h2>
				<util:markdown2html><strapi:contentImageBlockLeftsContent /></util:markdown2html>
				<div class="center">
					<a href="<strapi:contentImageBlockLeftsUrl/>"><strapi:contentImageBlockLeftsUrlLabel/></a>
				</div>
			</div>
		</div>
	</div>
</strapi:contentImageBlockLefts>
