<%@ page import="Action.*"%>
<%@ page import="java.util.*"%>
<%Map<String, List<String>> site = SiteAction.getSettings(); %>
</div>
<footer class="footer">
	<div class="container-fluid">
		<hr>
		<p class="pull-right">
			<a href="#">Back to top</a>
		</p>
		<p>
		<div>
			<a href="/home/about.jsp">About Us</a> &middot; <a
				href="/home/contact.jsp">Contact</a> &middot; <a
				href="/home/privacy.jsp">Privacy</a> &middot; <a
				href="/home/terms.jsp">Terms</a>
		</div>
		<br> &copy; <%=site.get("Site_name").get(0)%> <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %> &middot; Developed by SOL &middot; <br>
		<br>
		</p>
	</div>
</footer>
</div>
<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-34629511-1']);
			_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>
</body>
</html>
