<jsp:include page="/layout/header.jsp" flush="true" />
<%@ page import="Action.*"%>
<%@ page import="java.util.*"%>

<%
	/**
	 * Updates:
	 * 	1. Added site name to bottom header
	 */
	Map<String, List<String>> site = SiteAction.getSettings();
%>
<link href="/css/index.css" rel="stylesheet">

<!-- carousel 2 -->
<link rel="stylesheet" type="text/css" href="circularCarousel/css/style.css">
<link rel="stylesheet" type="text/css" href="circularCarousel/css/jquery.jscrollpane.css">
<!-- carousel 2 -->
</div>
<ul class="nav nav-tabs">
  <li class="active"><a href="#">Welcome to the <% if(site!=null){ out.print(site.get("Site_name").get(0)); } %> Store</a></li>
  <li><a href="/home/contact.jsp">Contact</a></li>
  <li><a href="/home/about.jsp">About Us</a></li>
</ul>
<div class="container-fluid">

<%
Map<String, List<String>> feats = ProductAction.getFeatured();
if(feats != null){
%>

<h3>Featured Items</h3>
<div class="thumbnail">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="carousel slide" id="myCarousel">
				<div class="carousel-inner">
				<%
					List<String> featProductIDs = feats.get("Product_ID");
					System.out.println(featProductIDs.size());
					int i = 0;
				/*1*/	while(i<featProductIDs.size()){
						Map<String, List<String>> featProduct;
						Map<String, List<String>> featProductImage;
						String img = "http://placehold.it/200x200";
						String title = "Title";
						String link = "/product/list.jsp";
				%>
					<div class="item<%= i==0 ? " active" : "" %>">
						<!--  <ul class="thumbnails">-->
						<% /*2*/ for(int j=0; j < 4; j++) {
							if(i < featProductIDs.size()){
								System.out.println(i);
								System.out.println(j);
								featProduct = ProductAction.getProductByID(Integer.parseInt(featProductIDs.get(i)));
								featProductImage = ImageAction.getImages(featProductIDs.get(i));
								if(featProductImage != null){
									img = featProductImage.get("Image").get(0);
									title = featProduct.get("Name").get(0);
									link = featProductIDs.get(i);
								}
								i++;
							}%>
	                        <div class="span3">
								<div class="thumbnail">
									<img src="<%= img %>" alt="">
								</div>
								<div class="caption">
									<h5 style="text-align: center">
										<a href="/product?id=<%= link %>">
											<%= title%>
										</a>
									</h5>
								</div>
							</div>
						<% img = "http://placehold.it/500x500";
						title = "Title";
						link = "/product/list.jsp";} /*2*/ %>
						<!--</ul> -->	
					</div>
					<%}/*1*/  %>
					<%} %>
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">&#139;</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">&#155;</a>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/layout/footer.jsp" flush="true" />