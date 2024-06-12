<%@ include file="../_include.jsp"%>

<div class="row flex-nowrap">
	<div class="col-md-8 mx-auto">
		<div class="row banner-slick slick-test">
			<div class="card hover-card_noshadow mb-2">
				<jsp:include page="../files/image.jsp">
					<jsp:param value="369" name="id" />
					<jsp:param value="medium" name="format" />
					<jsp:param value="d-block w-100" name="clss" />
				</jsp:include>
			</div>
		</div>
	</div>
</div>

<script>
	
	$('.banner-slick').slick({
		arrows: false,
		dots: true,
		draggable: true,
		slidesToShow: 1,
		infinite: true,
		slidesToScroll: 1,
		centerMode: false,
		centerPadding: '40px',
		autoplay: true,
		autoplaySpeed: 10000,
		responsive: [
		    {
		      breakpoint: 1200,
		      settings: {
		        arrows: false,
		        centerMode: false,
		        centerPadding: '40px',
		        slidesToShow: 2
		      }
		    },
		    {
		      breakpoint: 700,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '40px',
		        slidesToShow: 1
		      }
		    }
		  ]
	});

</script>
