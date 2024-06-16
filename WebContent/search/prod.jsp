<%@ include file="../_include.jsp"%>
<%@ taglib prefix="lucene" uri="http://icts.uiowa.edu/lucene"%>

<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Search"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap main-block">
			<div class="col-xs-8">
				<lucene:search lucenePath="/home/dave/transition/n3c_index" label="content" queryParserName="standard" queryString="${param.query}" useConjunctionByDefault="true">
							<div id="results-box">
								<div id="results-header-box">
									<h2 id="results-header">Search Results:</h2>
									<p>Result Count: <lucene:count /></p>
								</div>
								<div id="results-table" onscroll="scrollFunction()">
									<table style="width:100%">
	  									<tr>
	    									<th>Page</th>
	    									<th>URL</th>
	  									</tr>
										<lucene:searchIterator>
											<tr>
												<td><a href="<lucene:hit label="url" />"><lucene:hit label="title" /></a></td>
												<td><a href="<lucene:hit label="url" />"><lucene:hit label="url" /></a></td>
											<tr>
										</lucene:searchIterator>
									</table>
								</div>
							</div>
				</lucene:search>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>