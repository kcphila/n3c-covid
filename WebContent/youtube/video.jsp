<%@ include file="../_include.jsp"%>

<strapi:youTubeVideos ID="${param.id}">
	<h4><strapi:youTubeVideosHeader /></h4>
	<c:choose>
		<c:when test='${tag_youTubeVideos.url}.contains("open.spotify.com")'>
			<iframe
				style="border-radius:12px"
				src="${tag_youTubeVideos.url}"
				width="${tag_youTubeVideos.width}" height="${tag_youTubeVideos.height}" frameBorder="0" allowfullscreen=""
				allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy">
			</iframe>
		</c:when>
		<c:otherwise>
			<iframe width="${tag_youTubeVideos.width}" height="${tag_youTubeVideos.height}" frameborder="0" allowfullscreen="allowfullscreen"
				src="${tag_youTubeVideos.url}">
			</iframe>
		</c:otherwise>
	</c:choose>
	<c:if test="${empty param.footer || param.footer == 'true'}">
		<util:markdown2html><strapi:youTubeVideosFooter/></util:markdown2html>
	</c:if>
</strapi:youTubeVideos>
