<%@ include file="../_include.jsp"%>

<c:set var="format" value="thumbnail"/>
<c:if test="${not empty param.format}">
	<c:set var="format" value="${param.format}"/>
</c:if>

<strapi:navTiles ID="${param.id}">
	<div class="tile center">
		<c:if test="${param.image_pos == 'top'}">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="api::nav-tile.nav-tile" />
				<jsp:param name="field" value="icon" />
				<jsp:param name="pos" value="1" />
				<jsp:param name="format" value="${format}" />
			</jsp:include>
		</c:if>
		<c:if test="${not empty tag_navTiles.header}">
			<div class="center">
				<h4><strapi:navTilesHeader /></h4>
			</div>
		</c:if>
		<c:if test="${param.image_pos != 'top'}">
			<jsp:include page="../files/related_image_pos.jsp">
				<jsp:param name="id" value="${param.id}" />
				<jsp:param name="type" value="api::nav-tile.nav-tile" />
				<jsp:param name="field" value="icon" />
				<jsp:param name="pos" value="1" />
				<jsp:param name="format" value="${format}" />
			</jsp:include>
		</c:if>
		<c:if test="${not empty tag_navTiles.block}">
			<div class="center">
				<util:markdown2html><strapi:navTilesBlock/></util:markdown2html>
			</div>
		</c:if>
		<div class="center">
			<c:choose>
				<c:when test="${param.link_format == 'button' }">
					<a class="btn btn-primary btn-n3c active" href="<strapi:navTilesUrl/>"><strapi:navTilesUrlLabel /></a>
				</c:when>
				<c:otherwise>
					<a href="<strapi:navTilesUrl/>"><strapi:navTilesUrlLabel /></a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</strapi:navTiles>