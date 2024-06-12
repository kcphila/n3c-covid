<%@ include file="../_include.jsp"%>

<div class="row flex-nowrap main-block">
	<div class="col-4">
		<jsp:include page="../files/image.jsp">
			<jsp:param name="id" value="371" />
			<jsp:param name="format" value="90%" />
		</jsp:include>
	</div>
	<div class="col-8">
		<jsp:include page="../blocks/ehr_stats.jsp" />
		<jsp:include page="../blocks/admin_stats.jsp" />
		<p></p>
		<a href="<util:applicationRoot/>/dashboard" class="btn btn-primary btn-n3c active" role="button" aria-pressed="true">Explore the Full N3C Dashboard</a>
	</div>
</div>
