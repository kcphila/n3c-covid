<%@ include file="../_include.jsp"%>

<div class="row main-block shadow-block">
	<div class="col-10">
		<strapi:landingPages ID="1">
			<util:markdown2html><strapi:landingPagesIntroduction/></util:markdown2html>
		</strapi:landingPages>
	</div>
	<div class="col-2 center">
		<jsp:include page="../files/image.jsp">
			<jsp:param name="id" value="537" />
			<jsp:param name="format" value="50%" />
		</jsp:include>
		<p></p>
		<a href="enclave" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Access the Enclave</a>
	</div>
</div>
