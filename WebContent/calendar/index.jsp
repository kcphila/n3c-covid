<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Calendar"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="main-block">
			<strapi:calendars ID="1">
				<h1><strapi:calendarsHeader/></h1>
			</strapi:calendars>
			<p><iframe class="airtable-embed" src="https://airtable.com/embed/appmqBqfXMg2SF2A1/shrYLFFYflL5mb5rm?backgroundColor=purpleLight&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="100%" style="background: transparent; border: 1px solid #ccc;"></iframe></p>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>