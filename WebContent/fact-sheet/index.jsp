<%@ include file="../_include.jsp"%>
<html>
<jsp:include page="../head.jsp">
	<jsp:param name="page" value="Fact Sheet"/>
</jsp:include>

<body>
	<div class="container-fluid">
		<jsp:include page="../header.jsp">
			<jsp:param value="5" name="navbar"/>
			<jsp:param value="2" name="profile"/>
		</jsp:include>
		<div class="row flex-nowrap">
			<div class="col-2">
				&nbsp;
			</div>
			<div class="col-8">
				<strapi:factSheets ID="1">
					<h1><strapi:factSheetsHeader /></h1>

					<div style="text-align: center; font-size: 16px;">
						<div class="row" style="display: flex; flex-direction: row; flex-wrap: wrap; padding: 10px; margin-bottom: 20px;">
							<div class="col-12" style="margin-bottom: 20px;">
								<h2><strong>Release Set:</strong> <span id="date">&nbsp;</span></h2>
							</div>

							<div class="col-12 col-md-6">
								<p>
									<strong>Phenotype:</strong> Versions 2.1 &amp; 2.2<br /> <strong>Target Common Data Model:</strong> OMOP 5.3.1<br /> <strong>CDM Mapping version:</strong> v.1.1<br /> <strong>Production
										version:</strong> <span id="production_date">&nbsp;</span>
								</p>
							</div>

							<div class="col-12 col-md-6">
								<p>
									<strong>OMOP Vocabulary Version:</strong> V5.0 06-NOV-20<br /> <strong>Vocabulary Update:</strong> 2020-12-10<br /> <strong>Source Common Data Models:</strong><br /> OMOP 5.2.0, 5.3.1
									PCORnet 5.1, 5.3 ACT 2.01, 3.0
								</p>
							</div>
						</div>

						<div class="row shadow-block"
							style="display: flex; flex-direction: row; flex-wrap: wrap; font-size: 20px; ">
							<div class="col-12 col-md-6">
								<p>
									<strong><i aria-hidden="true" class="fa-regular fa-hospital"> </i> Sites:</strong> <span id="sites">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa fa-user"> </i> Persons:</strong> <span id="persons">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa fa-plus"> </i> COVID+ Cases:</strong> <span id="positive">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa fa-table"> </i> Total Number of Rows:</strong> <span id="rows">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa fa-user-md"> </i> Clinical Observations:</strong> <span id="observations">&nbsp;</span>
								</p>
							</div>

							<div class="col-12 col-md-6">
								<p>
									<strong><i aria-hidden="true" class="fa fa-heartbeat"> </i> Lab Results:</strong> <span id="results">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa fa-id-card"> </i> Medication Records:</strong> <span id="records">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa fa-list"> </i> Procedures:</strong> <span id="procedures">&nbsp;</span>
								</p>

								<p>
									<strong><i aria-hidden="true" class="fa-regular fa-calendar-plus"> </i> Visits:</strong> <span id="visits">&nbsp;</span>
								</p>
							</div>
						</div>

						<div class="block">
							<util:markdown2html><strapi:factSheetsBlock3 /></util:markdown2html>
						</div>
					</div>
				</strapi:factSheets>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
		$
				.getJSON(
						"https://covid.cd2h.org/dashboard/feeds/embedded_fact_sheet.jsp",
						function(json) {
							var data = $.parseJSON(JSON.stringify(json));

							$('#date').text(data['release_date']);
							$('#production_date').text(data['release_name']);

							$('#sites').text(data['sites_ingested']);
							$('#persons').text(data['person_rows']);
							$('#positive')
									.text(data['covid_positive_patients']);
							$('#rows').text(data['total_rows']);
							$('#observations').text(data['observation_rows']);
							$('#results').text(data['measurement_rows']);
							$('#records').text(data['drug_exposure_rows']);
							$('#procedures').text(data['procedure_rows']);
							$('#visits').text(data['visit_rows']);
						});
	</script>
</body>
</html>