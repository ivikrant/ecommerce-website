<%@page import="com.Bean.ItemBean"%>
<%@page import="com.Bean.CategoryBean"%>
<%@page import="com.Bean.SubCategoryBean"%>
<%@page import="com.Bean.IndexPicsBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bean.PageBean"%>
<%@page import="com.Bean.PageAllowBean"%>
<%@page import="com.DAO.BasicPageAllowDAO"%>
<%@page import="com.DAO.BasicPageDAO"%>
<%@page import="com.DAO.ItemDAO"%>
<%@page import="com.DAO.CategoryDAO"%>
<%@page import="com.DAO.SubCategoryDAO"%>
<%@page import="com.DAO.IndexPicsDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.DragDAO"%>
<%@page import="com.Bean.DragBean"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
    <link rel="stylesheet" href="scc/StyleSheet.css" />
    <link rel="stylesheet" href="scc/head_banner.css"/>
    <link rel="stylesheet" href="scc/styles.css" />
    <link rel="stylesheet" href="scc/nav.css"/>
    <link rel="stylesheet" href="scc/main.css"/>
    
    <link rel="shortcut icon" href="https://cdn.shopify.com/s/files/1/0695/9547/t/4/assets/favicon.png?5279289202530461212" type="image/png">
    
    <%
	
	DragBean dragBean = new DragBean();
	DragBean dragBean2 = new DragBean();
	DragBean dragBean3 = new DragBean();
	
	DragDAO dragDAO = new DragDAO();
	dragBean=dragDAO.fetchDragItem(4);
	dragBean2=dragDAO.fetchDragItem(5);
	dragBean3=dragDAO.fetchDragItem(6);
	
	
	int xpos= dragBean.getXpos();
	int ypos= dragBean.getYpos();
	
	int xpos2= dragBean2.getXpos();
	int ypos2= dragBean2.getYpos();
	
	int xpos3= dragBean.getXpos();
	int ypos3= dragBean.getYpos();

	%>

    <style type="text/css">
<!--
#dg {
 cursor:pointer;
 position: absolute;
 top: <%=ypos%>%;
 left: <%=xpos%>%;
}

#dr {
 cursor:pointer;
 position: absolute;
 top: <%=ypos2%>%;
 left: <%=xpos2%>%;
}

#dt {
 cursor:pointer;
 position: absolute;
 top: <%=ypos3%>%;
 left: <%=xpos3%>%;
}

--></style>


	
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>

	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    
    <script type="text/javascript" src="scc/script.js"></script>
    
    <!-- Start Slider HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	
	
	<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript"><!--
// sets two variables to store the X and Y position
var xpos; var ypos;
var xpos2; var ypos2;
var xpos3; var ypos3;
var xpos4; var ypos4;
var rtop; var rwidth;

$(document).ready(function() {
  // sets draggable the element with id="dg"
  $('#dg').draggable({
    // get the initial X and Y position when dragging starts
    start: function(event, ui) {
      xpos = ui.position.left;
      ypos = ui.position.top;
    },
    // when dragging stops
    stop: function(event, ui) {
      // calculate the dragged distance, with the current X and Y position and the "xpos" and "ypos"
      
      xpos2 = ui.position.left/($(window).width())*100 ;
      ypos2 = ui.position.top/($(document).height())*100 ;
      alert('The DIV was moved,\n\n'+ xpos2+ ' pixels \n'+ ypos2+ ' pixels');
      var urlSave = "savestate.jsp?id=dg&xposform=" + xpos2 + "&yposform=" + ypos2;
      
      $.ajax({
    	  url : urlSave,
    	  type : 'get'
      }).done(function(data){
    	 console.log(data);
      });

    }
  });

  $('#dr').draggable({
	    // get the initial X and Y position when dragging starts
	    start: function(event, ui) {
	      xpos = ui.position.left;
	      ypos = ui.position.top;
	    },
	    // when dragging stops
	    stop: function(event, ui) {
	      // calculate the dragged distance, with the current X and Y position and the "xpos" and "ypos"
	      
	      xpos3 = ui.position.left/($(window).width())*100 ;
	      ypos3 = ui.position.top/($(document).height())*100 ;
	      var urlSave = "savestate.jsp?id=dr&xposform=" + xpos3 + "&yposform=" + ypos3;
	      
	      $.ajax({
	    	  url : urlSave,
	    	  type : 'get'
	      }).done(function(data){
	    	 console.log(data);
	      });
	      

	    }
	  });
  
  // sets draggable the element with id="dt"
  $('#dt').draggable({
    // get the initial X and Y position when dragging starts
    start: function(event, ui) {
      xpos = ui.position.left;
      ypos = ui.position.top;
    },
    // when dragging stops
    stop: function(event, ui) {
      // calculate the dragged distance, with the current X and Y position and the "xpos" and "ypos"
      
      xpos4 = ui.position.left/($(window).width())*100 ;
      ypos4 = ui.position.top/($(document).height())*100 ;
      alert('The DIV was moved,\n\n'+ xpos4+ ' pixels \n'+ ypos4+ ' pixels');
      var urlSave = "savestate.jsp?id=dt&xposform=" + xpos4 + "&yposform=" + ypos4;
      
      $.ajax({
    	  url : urlSave,
    	  type : 'get'
      }).done(function(data){
    	 console.log(data);
      });

    }
  });

});

--></script>

	
	
</head>
<body>
    
      <%
  
  String Upload_Directory="C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory/";
  IndexPicsDAO indexPicsDAO = new IndexPicsDAO();
  SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
  CategoryDAO categoryDAO = new CategoryDAO();
  ItemDAO itemDAO = new ItemDAO();
  BasicPageDAO basicPageDAO = new BasicPageDAO();
  BasicPageAllowDAO basicPageAllowDAO = new BasicPageAllowDAO();
  
  PageAllowBean pageAllowBean = basicPageAllowDAO.getPageItemDetail(2);
  PageBean pageBean = basicPageDAO.getPageItemDetail(pageAllowBean.getPage_id());
  ArrayList<IndexPicsBean> list_index= indexPicsDAO.showIndexPics();
  ArrayList<SubCategoryBean> list_subcat= subCategoryDAO.showSubCategory();
  ArrayList<CategoryBean> list_cat= categoryDAO.showCategory();
  ArrayList<ItemBean> list_item= itemDAO.showItem();
  
  String logoURL = Upload_Directory + pageBean.getLogoURL();
  String adURL = Upload_Directory + pageBean.getAdURL();
  
  %>
  
        <div class="header-bar">
            <div class="wrapper medium-down--hide">
                <div class="large--display-table">
                    <div class="header-bar__left large--display-table-cell">
						<div id="dr">
                        <div  class="header-bar__module header-bar__message">
                            Monitoring Up by Code
                        </div>
                        </div>

                    </div>

                    <div class="header-bar__right large--display-table-cell">
                        <div class="header-bar__module">
                            <a href="CartServlet" class="cart-toggle">
                                <span class="icon icon-cart header-bar__cart-icon" aria-hidden="true"></span>
                                Cart
                                
                            </a>
                        </div>


                        <span class="header-bar__sep" aria-hidden="true">|</span>
                        <ul class="header-bar__module header-bar__module--list">

                            <li>
                                <a href="login.jsp" id="customer_login_link">Log in</a>
                            </li>

                        </ul>



                        <div class="header-bar__module header-bar__search">
                            <form action="SearchServlet" method="get" role="search">

                                <input name="query" aria-label="Search our store" class="header-bar__search-input" type="search">
                                <button type="submit" class="btn icon-fallback-text header-bar__search-submit">
                                    <span class="icon icon-search" aria-hidden="true"></span>
                                    <span class="fallback-text">Search</span>
                                </button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            </div>
    <header class="site-header" role="banner">
        <div class="wrapper">

            <div class="grid--full large--display-table">
                <div class="grid__item large--one-third large--display-table-cell">
					
					<div id="dg">
                    <h1 class="site-header__logo large--left" itemscope="" itemtype="http://schema.org/Organization">


                        <a href="index.jsp" itemprop="url" >
                            <img src="index_files/logo.png" alt="MonitoringUp" itemprop="logo" id="">
                        </a>

                    </h1>
                    </div>
        <p class="header-message large--hide">
                        <small>Free shipping on orders over $150</small>
                    </p>
                    <div id="dt">
                    <nav id="primary_nav_wrap">
                        <ul>
                            <li class="current-menu-item">
                            	<a href="#">Home</a></li>
                            <li>
                                <a href="#">Products</a>
                                <ul>
                                    <li style="margin-left: 100px;margin-top:-40px;"><a href="#">Sub Menu 1</a></li>
                                    <li><a href="#" style="margin-left: 100px;">Sub Menu 2</a></li>
                                    
                                 </ul>   
                            
                            <li><a href="#">ContactUs</a></li>
                        </ul>
                    </nav>
                    </div>

                </div>
            </div>

                </div>
    </header>

    <main class="wrapper main-content" role="main">
        <div class="grid">

            <div class="grid__item large--one-fifth medium-down--hide">

                <nav class="sidebar-module">
                    <div class="section-header">
                        <p class="section-header__title h4">Shop for</p>
                    </div>
                    <ul class="sidebar-module__list">


                        <li class="sidebar-sublist">
                            <div class="sidebar-sublist__trigger-wrap">
                                <a href="collection.jsp?category_id=1" class="sidebar-sublist__has-dropdown ">
                                    Desktop PCs
                                </a>

                            </div>
                            
                        </li>


                        <li class="sidebar-sublist">
                            <div class="sidebar-sublist__trigger-wrap">
                                <a href="collection.jsp?category_id=2" class="sidebar-sublist__has-dropdown ">
                                    Laptop
                                </a>
                                
                            </div>
                            
                        </li>


                        <li class="sidebar-sublist">
                            <div class="sidebar-sublist__trigger-wrap">
                                <a href="collection.jsp?category_id=3" class="sidebar-sublist__has-dropdown ">
                                    Mobile
                                </a>
                                
                            </div>
                            
                        </li>


                        


                    </ul>
                </nav>


                <nav class="sidebar-module">
                    <div class="section-header">
                        <p class="section-header__title h4">Shop by Vendor</p>
                    </div>
                    <ul class="sidebar-module__list">

                        <li class=""><a href="index.jsp">Home PCs</a></li>

                        <li class=""><a href="index.jsp">Apple</a></li>


                    </ul>

                </nav>





                <nav class="sidebar-module">
                    <div class="section-header">
                        <p class="section-header__title h4">Special offers</p>
                    </div>
                    <div>
                        <p><a href="#"><img src=""C:/Users/db2admin/workspace/WebBuilder/WebContent/index_files/ad.png" width="20" height="20" style="display: none !important; visibility: hidden !important; opacity: 0 !important; background-position: 1px 1px;"></a></p>
                    </div>
                </nav>



            </div>

      
            <div class="grid__item large--four-fifths">

                <div class="flexslider">

                    <div style="overflow: hidden; position: relative; height: 400px;" class="flex-viewport">
                       <!-- Start Slider BODY section -->
		<div id="wowslider-container1">
		<div class="ws_images"><ul>
		<li><a href="http://wowslider.com/vi"><img src="data1/images/slide_1.jpg" alt="bootstrap slider" title="slide_1" id="wows1_0"/></a></li>
		<li><img src="data1/images/slide_2.jpg" alt="slide_2" title="slide_2" id="wows1_1"/></li>
		</ul></div>
		<div class="ws_bullets"><div>
		<a href="#" title="slide_1"><span><img src="data1/tooltips/slide_1.jpg" alt="slide_1"/>1</span></a>
		<a href="#" title="slide_2"><span><img src="data1/tooltips/slide_2.jpg" alt="slide_2"/>2</span></a>
		</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com/vi">bootstrap carousel</a> by WOWSlider.com v8.2</div>
		<div class="ws_shadow"></div>
		</div>	
		<script type="text/javascript" src="engine1/wowslider.js"></script>
		<script type="text/javascript" src="engine1/script.js"></script>
		<!-- End Slider BODY section -->

                    </div>
                    </div>


                <hr class="hr--clear">
                <div class="section-header section-header--large">
                    <h2 class="section-header__title--left section-header__title h4">Featured Collections</h2>
                    <div class="section-header__link--right medium-down--hide">
                        <a href="CollectionServlet" title="Browse our  collection">View all Collections</a>
                    </div>
                </div>

                <div class="grid-uniform grid-link__container">

                    <div class="grid__item medium-down--one-half one-third text-center">


                        <a href="collection.jsp?category_id=1" title="Browse our Desktop PCscollection" class="grid-link--focus">
                            <span  class="grid-link__image grid-link__image--collection">
                                <span   class="grid-link__image-centered">

                                    <img height=150px width=200px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/642173-658956-800_large.jpg" alt="Desktop PCs">

                                </span>
                            </span>
                            <p class="grid-link__title">Desktop PCs</p>

                            <p class="grid-link__meta"><small></small></p>

                        </a>

                    </div>

                    <div class="grid__item medium-down--one-half one-third text-center">


                        <a href="collection.jsp?category_id=2" title="Browse our Laptopcollection" class="grid-link--focus">
                            <span class="grid-link__image grid-link__image--collection">
                                <span class="grid-link__image-centered">

                                    <img height=150px width=200px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/collection-laptops_medium.png" alt="Laptop">

                                </span>
                            </span>
                            <p class="grid-link__title">Laptop</p>

                            <p class="grid-link__meta"><small></small></p>

                        </a>

                    </div>

                    <div class="grid__item medium-down--one-half one-third text-center">


                        <a href="collection.jsp?category_id=3" title="Browse our Mobilecollection" class="grid-link--focus">
                            <span  class="grid-link__image grid-link__image--collection">
                                <span class="grid-link__image-centered">

                                    <img height=180px width=220px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/616573-641288-800_large.jpeg" alt="Mobile">
									
									</br>
                            <p class="grid-link__title">Mobile</p>			
                                </span>
                            </span>


                            

                        </a>

                    </div>


                </div>
                <small class="view-more">
                    <a href="CollectionServlet" title="Browse our Storage collection">View all Collections</a>
                </small>




                <hr class="hr--clear">





                <div class="section-header section-header--large">
                    <h2 class="section-header__title--left section-header__title h4">

                        Featured Items

                    </h2>
                    <div class="section-header__link--right medium-down--hide">
                        <a href="ItemServlet" title="Browse all items in the collection">View all Items</a>
                    </div>
                </div>

                <div class="grid-uniform grid-link__container">

                    <div class="grid__item medium-down--one-half large--one-quarter">
                        <a href="productDetail.jsp?item_id=1" class="grid-link">
                            <span style="height: 0px;" class="grid-link__image grid-link__image--product">


                                <span class="grid-link__image-centered">
                                    <img height=150px width=180px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/l1.jpeg" alt="Lenovo Thinkpad B50">
                                </span>
                            </span>
                            <p class="grid-link__title">Lenovo Thinkpad B50</p>
                            <p class="grid-link__meta">

                                <strong>$299</strong>

                            </p>
                        </a>
                    </div>

                    <div class="grid__item medium-down--one-half large--one-quarter">
                        <a href="productDetail.jsp?item_id=2" class="grid-link">
                            <span style="height: 0px;" class="grid-link__image grid-link__image--product">


                                <span class="grid-link__image-centered">
                                    <img height=150px width=180px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/624693-584159-800_1024x1024.jpeg" alt="Asus X550CC i5">
                                </span>
                            </span>
                            <p class="grid-link__title">Asus X550CC i5</p>
                            <p class="grid-link__meta">

                                <strong>$479</strong>

                            </p>
                        </a>
                    </div>

                    <div class="grid__item medium-down--one-half large--one-quarter">
                        <a href="productDetail.jsp?item_id=3" class="grid-link">
                            <span style="height: 0px;" class="grid-link__image grid-link__image--product">


                                <span class="grid-link__image-centered">
                                    <img height=150px width=180px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/488768-397366-800_1024x1024.jpeg" alt="Samsung E1200">
                                </span>
                            </span>
                            <p class="grid-link__title">Samsung E1200</p>
                            <p class="grid-link__meta">

                                <strong>$23.98</strong>

                            </p>
                        </a>
                    </div>

                    <div class="grid__item medium-down--one-half large--one-quarter">
                        <a href="productDetail.jsp?item_id=4" class="grid-link">
                            <span style="height: 0px;" class="grid-link__image grid-link__image--product">


                                <span class="grid-link__image-centered">
                                    <img height=150px width=180px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/Coolermaster_k350_1024x1024.jpeg" alt="Coolermaster Six Core Gaming PC">
                                </span>
                            </span>
                            <p class="grid-link__title">Coolermaster Six Core Gaming PC</p>
                            <p class="grid-link__meta">

                                <strong>$499</strong>

                            </p>
                        </a>
                    </div>
                    
                    </br>
                    
                    <div class="grid__item medium-down--one-half large--one-quarter">
                        <a href="productDetail.jsp?item_id=4" class="grid-link">
                            <span style="height: 0px;" class="grid-link__image grid-link__image--product">


                                <span class="grid-link__image-centered">
                                    <img height=150px width=180px src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/Coolermaster_k350_1024x1024.jpeg" alt="Coolermaster Six Core Gaming PC">
                                </span>
                            </span>
                            <p class="grid-link__title">Coolermaster Six Core Gaming PC</p>
                            <p class="grid-link__meta">

                                <strong>$499</strong>

                            </p>
                        </a>
                    </div>


                </div>
                <small class="view-more">
                    <a href="ItemServlet" title="Browse our Storage collection">View all Items</a>
                </small>




                <hr class="hr--clear">

                <div class="section-header section-header--large">
                    <h2 class="section-header__title h4">We offer products from</h2>
                </div>
                <div class="rte">
                    <img src="index_files/brands.png">
                </div>




            </div>
    </main>
    
    <hr class="hr--clear">
    
    <footer class="site-footer small--text-center" role="contentinfo">

        <div class="wrapper">

            <div class="grid-uniform ">











                <div class="grid__item large--one-quarter medium--one-half">
                    <h4>Quick Links</h4>
                    <ul class="site-footer__links">

                        <li><a href="contact-us.jsp">Contact Us</a></li>

                        <li><a href="search.jsp">Search</a></li>

                        <li><a href="about-us.jsp">About Us</a></li>

                    </ul>
                </div>



                <div class="grid__item large--one-quarter medium--one-half">
                    <h4>Get Connected</h4>

                    <ul class="inline-list social-icons">

                        <li>
                            <a class="icon-fallback-text" href="https://twitter.com/vikrantlpu" title="Code on Twitter">
                                <span class="icon icon-twitter" aria-hidden="true"></span>
                                <span class="fallback-text"><img alt="twitter" src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/twitter.png"></span>
                            </a>
                        </li>


                        <li>
                            <a class="icon-fallback-text" href="https://www.facebook.com/vikrant.choudhary.75839" title="Code on Facebook">
                                <span class="icon icon-facebook" aria-hidden="true"></span>
                                <span class="fallback-text"><img alt="facebook" src="C:/Users/db2admin/workspace/WebBuilder/WebContent/Upload_Directory/twitter.png"> </span>
                            </a>
                        </li>

                    </ul>
                </div>



                <div class="grid__item large--one-quarter medium--one-half">
                    <h4>Contact Us</h4>
                    <div class="rte">
                        +91-9501 87 3028<br>
                        <a href="#">vikrantchoudharylpu@gmail.com</a><br>
                        139 Sector-39<br>
                        Gurgaon, India<br>
                    </div>
                </div>



                <div class="grid__item large--one-quarter medium--one-half">
                    <h4>Newsletter</h4>
                    <p>Sign up for promotions</p>


                    <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="small--hide">
                        <input placeholder="your-email@example.com" name="EMAIL" id="mail" aria-label="your-email@example.com" autocorrect="off" autocapitalize="off" type="email">
                        <input class="btn" name="subscribe" id="subscribe" value="Subscribe" type="submit">
                    </form>
                    <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="large--hide medium--hide input-group">
                        <input placeholder="your-email@example.com" name="EMAIL" id="mail" class="input-group-field" aria-label="your-email@example.com" autocorrect="off" autocapitalize="off" type="email">
                        <span class="input-group-btn">
                            <input class="btn" name="subscribe" id="subscribe" value="Subscribe" type="submit">
                        </span>
                    </form>

                </div>

            </div>
            

            <hr>

            <div class="grid">

			<ul>
			<li>
                    <div class="site-footer__links" align="left">Copyright@2015, MonitoringUp. </div>
                            
                                <a href="index.jsp" rel="nofollow" target="_blank" ><div align="right">Powered by Code</div></a>
			</li>
			</ul>
            </div>

        </div>

    </footer>
            </body>
</html>
    