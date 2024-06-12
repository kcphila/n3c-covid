<%@ include file="../_include.jsp"%>

<sql:query var="media" dataSource="jdbc/STRAPITagLib">
	select
		url
	from
		strapi.files,strapi.files_related_morphs
	where related_id = ?::int
	  and file_id=files.id
	  and related_type = ?
	  and field = ?
	<sql:param>${param.id}</sql:param>
	<sql:param>${param.type}</sql:param>
	<sql:param>${param.field}</sql:param>
</sql:query>
<c:forEach items="${media.rows}" var="row" varStatus="rowCounter">
	<a href="<util:propertyValue propertyFile='strapi' name='strapi-path'/>${row.url}">${param.anchor}</a>
</c:forEach>
