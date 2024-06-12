<%@ include file="../_include.jsp"%>

<div class="row main-block">
	<div class="col-3">
		<jsp:include page="../files/image.jsp">
			<jsp:param name="id" value="697" />
			<jsp:param name="format" value="50%" />
		</jsp:include>
	</div>
	<div class="col-9 block">
		<strapi:landingPages ID="1">
			<div class="row testimonial-slick slick-test">
				<strapi:foreachLandingPagesTestimonialsLinks sortCriteria="testimonial_id" var="iterator">
					<strapi:landingPagesTestimonialsLinks>
						<div class="card hover-card_noshadow mb-2">
							<strapi:testimonials ID="${tag_landingPagesTestimonialsLinks.testimonialId}">
								<util:markdown2html><strapi:testimonialsQuote /></util:markdown2html>
								<util:markdown2html><strapi:testimonialsAuthor /></util:markdown2html>
							</strapi:testimonials>
						</div>
					</strapi:landingPagesTestimonialsLinks>
				</strapi:foreachLandingPagesTestimonialsLinks>
			</div>
		</strapi:landingPages>
	</div>
</div>

<script>
	
	$('.testimonial-slick').slick({
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
