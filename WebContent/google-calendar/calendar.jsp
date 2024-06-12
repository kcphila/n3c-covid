<%@ include file="../_include.jsp"%>
<script>
	console.log(new Date().toString().split(" "))
</script>

<div class="row block">
	<calendar:calendar name="6l35k1j2vrhj4q167vchh1qvv8@group.calendar.google.com">
		<calendar:eventIterator count="9">
			<div class="card col-4">
				<calendar:event>
					<div class="row">
						<div class="col-2 center event">
							<calendar:eventProperty property="eventMonth" />
							<br>
							<calendar:eventProperty property="eventDay" />
						</div>
						<div class="col-10">
							<a href="<calendar:eventLink/>"><calendar:eventTitle /></a>
							<br>
							<calendar:eventProperty property="eventStartTime" /> - <calendar:eventProperty property="eventEndTime" />
							<calendar:eventProperty property="eventTimeZone" />
						</div>
					</div>
						<script>
							var start = new Date("<calendar:eventStart/>").toString().split(" ");
							var end = new Date("<calendar:eventEnd/>").toString().split(" ");
							console.log("start", "<calendar:eventStart/>", start,new Date("<calendar:eventStart/>"))
						</script>
				</calendar:event>
			</div>
		</calendar:eventIterator>
	</calendar:calendar>
</div>
