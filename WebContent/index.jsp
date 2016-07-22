<%@page import="com.DAO.DragDAO"%>
<%@page import="com.Bean.DragBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Bean.IndexPicsBean" %>
<%@ page import="com.Bean.SubCategoryBean" %>
<%@ page import="com.Bean.CategoryBean" %>
<%@ page import="com.DAO.CategoryDAO" %>
<%@ page import="com.DAO.SubCategoryDAO" %>
<%@ page import="com.DAO.IndexPicsDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="com.DAO.ItemDAO"%>
<%@page import="com.Bean.ItemBean"%>
<!DOCTYPE html>
<html style="" class=" supports-js supports-no-touch supports-csstransforms supports-csstransforms3d supports-fontface"><!--<![endif]--><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <link rel="shortcut icon" href="https://cdn.shopify.com/s/files/1/0695/9547/t/4/assets/favicon.png?5279289202530461212" type="image/png">
  <title>
  Monitoring up by Code
  </title>

  
  <!-- Ajaxify Cart Plugin ================================================== -->
  <link href="index_files/ajaxify.css" rel="stylesheet" type="text/css" media="all">
  

  <!-- CSS ================================================== -->
  <link href="index_files/timber.css" rel="stylesheet" type="text/css" media="all">
  <link href="index_files/theme.css" rel="stylesheet" type="text/css" media="all">  
  <link href="index_files/css.css" rel="stylesheet" type="text/css" media="all">

  <!-- Header hook for plugins ================================================== -->
  <script src="index_files/spr.js" async="" type="text/javascript"></script><script src="index_files/analytics.js" async=""></script><script src="index_files/shopify_stats.js" async="" type="text/javascript"></script><script>
//<![CDATA[
      var Shopify = Shopify || {};
      Shopify.shop = "expo-light.myshopify.com";
      Shopify.theme = {"name":"Classic","id":19432452,"theme_store_id":721,"role":"main"};

//]]>
</script>


<script>
//<![CDATA[
    (function() {
      function asyncLoad() {
        var urls = ["\/\/productreviews.shopifycdn.com\/assets\/v4\/spr.js?shop=expo-light.myshopify.com"];
        for (var i = 0; i < urls.length; i++) {
          var s = document.createElement('script');
          s.type = 'text/javascript';
          s.async = true;
          s.src = urls[i];
          var x = document.getElementsByTagName('script')[0];
          x.parentNode.insertBefore(s, x);
        }
      }
      window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad, false);
    })();

//]]>
</script>
<script id="__st">
//<![CDATA[
var __st={"a":6959547,"offset":-14400,"reqid":"a7c3ce0f-4f2b-49d7-b11a-21df5f1a83d7","pageurl":"expo-light.myshopify.com\/","u":"3be275a6fecd","p":"home"};
//]]>
</script>
<script>
//<![CDATA[
      (function() {
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true;
        s.src = '//cdn.shopify.com/s/javascripts/shopify_stats.js?v=6';
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
      })();

//]]>
</script>
<script type="text/javascript">
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-42189134-16', 'auto', {'allowLinker': true});ga('send', 'pageview');
      (function(){
        ga('require', 'linker');
        function addListener(element, type, callback) {
          if (element.addEventListener) {
            element.addEventListener(type, callback);
          }
          else if (element.attachEvent) {
            element.attachEvent('on' + type, callback);
          }
        }
        function decorate(event) {
          event = event || window.event;
          var target = event.target || event.srcElement;
          if (target && (target.action || target.href)) {
            ga(function (tracker) {
              var linkerParam = tracker.get('linkerParam');
              document.cookie = '_shopify_ga=' + linkerParam + '; ' + 'path=/';
            });
          }
        }
        addListener(window, 'load', function(){
          for (var i=0; i<document.forms.length; i++) {
            if(document.forms[i].action && document.forms[i].action.indexOf('/cart') >= 0) {
              addListener(document.forms[i], 'submit', decorate);
            }
          }
          for (var i=0; i<document.links.length; i++) {
            if(document.links[i].href && document.links[i].href.indexOf('/checkout') >= 0) {
              addListener(document.links[i], 'click', decorate);
            }
          }
        })
      }());
    </script><script type="text/javascript" src="index_files/ga_urchin_forms-7ada6895033623ac31caa5468381c85a.js"></script>

  <script src="index_files/jquery.js" type="text/javascript"></script>
  <script src="index_files/modernizr.js" type="text/javascript"></script>

  <%
	
	DragBean dragBean = new DragBean();
	DragDAO dragDAO = new DragDAO();
	dragBean=dragDAO.fetchDragItem();
	int xpos= (int) dragBean.getXpos();
	int ypos= (int) dragBean.getYpos();
%>

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.21.custom.min.js"></script>
<script type="text/javascript"><!--
// sets two variables to store the X and Y position
var xpos; var ypos;
var xpos2; var ypos2;

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
      xpos2 = ui.position.left;
      ypos2 = ui.position.top;
      $("#xposform").val(xpos2);
      $("#yposform").val(ypos2);
      
      var url = "savestate.jsp?xposform=" + xpos2 + "&yposform=" + ypos2;
      window.location.href = url;

    }
  });
  
});

--></script>
  

<link media="screen" href="index_files/spr.css" type="text/css" rel="stylesheet"><script src="index_files/jquery_003.js" type="text/javascript"></script></head>

<body id="monitoringup-classic-theme-by-shopify" class="template-index">
  <%
  String Upload_Directory="C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory/";
  IndexPicsDAO indexPicsDAO = new IndexPicsDAO();
  SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
  CategoryDAO categoryDAO = new CategoryDAO();
  ItemDAO itemDAO = new ItemDAO();

  ArrayList<IndexPicsBean> list_index= indexPicsDAO.showIndexPics();
  ArrayList<SubCategoryBean> list_subcat= subCategoryDAO.showSubCategory();
  ArrayList<CategoryBean> list_cat= categoryDAO.showCategory();
  ArrayList<ItemBean> list_item= itemDAO.showItem();
  %>
  <div id="dg" style="cursor:pointer; static;top:1000px;left: 100px" draggable="true" >Click and Drag<br />
Will alert the X and Y moved direction and distance.</div>

    <div id="AjaxifyDrawer" class="ajaxcart ajaxcart--drawer">
      <div id="AjaxifyCart" class="ajaxcart__content wrapper"></div>
    </div>
  
  

  <div class="header-bar">
  <div class="wrapper medium-down--hide">
    <div class="large--display-table">
      <div class="header-bar__left large--display-table-cell">
        
          <div class="header-bar__module header-bar__message" >
          	<div >
            Monitoring Up by Code
            </div>
          </div>
        
      </div>

      <div class="header-bar__right large--display-table-cell">
        <div class="header-bar__module">
          <a href="CartServlet" class="cart-toggle">
            <span class="icon icon-cart header-bar__cart-icon" aria-hidden="true"></span>
            Cart
            <span class="cart-count header-bar__cart-count hidden-count">0</span>
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
  <div class="wrapper large--hide">
    <button type="button" class="mobile-nav-trigger" id="MobileNavTrigger">
      <span class="icon icon-hamburger" aria-hidden="true"></span>
      Menu
    </button>
    <a href="CartServlet" class="cart-toggle mobile-cart-toggle">
      <span class="icon icon-cart header-bar__cart-icon" aria-hidden="true"></span>
      Cart <span class="cart-count hidden-count">0</span>
    </a>
  </div>
  <ul id="MobileNav" class="mobile-nav large--hide">
  
  
  
  <li class="mobile-nav__link" aria-haspopup="true">
    
      <a href="index.jsp" class="mobile-nav">
        Home
      </a>
    
  </li>
  
  <li class="mobile-nav__link" aria-haspopup="true">
    
      <a href="CollectionServlet" class="mobile-nav__sublist-trigger">
        Catalog
        <span class="icon-fallback-text mobile-nav__sublist-expand">
  <span class="icon icon-plus" aria-hidden="true"></span>
  <span class="fallback-text">+</span>
</span>
<span class="icon-fallback-text mobile-nav__sublist-contract">
  <span class="icon icon-minus" aria-hidden="true"></span>
  <span class="fallback-text">-</span>
</span>
      </a>
      <ul class="mobile-nav__sublist">  
        <%
  		for(int i=0;i<list_cat.size();i++){
			CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
 		 %>
          <li class="mobile-nav__sublist-link">
            <a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id()%>"><%=categoryBean.getCategoryName()%></a>
          </li>
        <%
  			}
        %>
      </ul>
    
  </li>
  
  
  <li class="mobile-nav__link" aria-haspopup="true">
    
      <a href="https://expo-light.myshopify.com/blogs/news" class="mobile-nav">
        Blog
      </a>
    
  </li>
  
  
  <li class="mobile-nav__link" aria-haspopup="true">
    
      <a href="https://expo-light.myshopify.com/pages/about-us" class="mobile-nav">
        About Us
      </a>
    
  </li>
  
  
    
      
      
      
      
      
        <li class="mobile-nav__link" aria-haspopup="true">
  <a href="#" class="mobile-nav__sublist-trigger">
    Shop for
    <span class="icon-fallback-text mobile-nav__sublist-expand">
  <span class="icon icon-plus" aria-hidden="true"></span>
  <span class="fallback-text">+</span>
</span>
<span class="icon-fallback-text mobile-nav__sublist-contract">
  <span class="icon icon-minus" aria-hidden="true"></span>
  <span class="fallback-text">-</span>
</span>
  </a>
  <ul class="mobile-nav__sublist">
  
    
      
      
        <li class="mobile-nav__sublist-link" aria-haspopup="true">
          <a href="https://expo-light.myshopify.com/collections/desktop-pcs" class="mobile-nav__sublist-trigger">
            Desktop PCs
            <span class="icon-fallback-text mobile-nav__sublist-expand">
  <span class="icon icon-plus" aria-hidden="true"></span>
  <span class="fallback-text">+</span>
</span>
<span class="icon-fallback-text mobile-nav__sublist-contract">
  <span class="icon icon-minus" aria-hidden="true"></span>
  <span class="fallback-text">-</span>
</span>
          </a>
          <ul class="mobile-nav__sublist">
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/home-pcs">Home PCs</a>
              </li>
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/business-pcs">Business PCs</a>
              </li>
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/gaming">Gaming PCs</a>
              </li>
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/monitors">Monitors</a>
              </li>
            
          </ul>
        </li>
      
      
  
    
      
      
        <li class="mobile-nav__sublist-link" aria-haspopup="true">
          <a href="https://expo-light.myshopify.com/collections/laptops" class="mobile-nav__sublist-trigger">
            Laptops
            <span class="icon-fallback-text mobile-nav__sublist-expand">
  <span class="icon icon-plus" aria-hidden="true"></span>
  <span class="fallback-text">+</span>
</span>
<span class="icon-fallback-text mobile-nav__sublist-contract">
  <span class="icon icon-minus" aria-hidden="true"></span>
  <span class="fallback-text">-</span>
</span>
          </a>
          <ul class="mobile-nav__sublist">
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/laptops">New Laptops</a>
              </li>
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/laptops/refurbished">Refurbished Laptops</a>
              </li>
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/laptops/accessories">Accessories</a>
              </li>
            
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/laptop-bags">Laptop Bags</a>
              </li>
            
          </ul>
        </li>
      
      
  
    
      
      
        <li class="mobile-nav__sublist-link">
          <a href="https://expo-light.myshopify.com/collections/tablets">Mobile</a>
        </li>
      
      
  
    
      
      
        <li class="mobile-nav__sublist-link">
          <a href="https://expo-light.myshopify.com/collections/storage">Storage</a>
        </li>
      
      
  
    
      
      
        <li class="mobile-nav__sublist-link">
          <a href="https://expo-light.myshopify.com/collections/peripherals">Peripherals</a>
        </li>
      
      
  
    
      
      
        <li class="mobile-nav__sublist-link">
          <a href="https://expo-light.myshopify.com/collections/pc-components">Components</a>
        </li>
      
      
  
  </ul>
</li>
            
      <li class="mobile-nav__link" aria-haspopup="true">
  <a href="#" class="mobile-nav__sublist-trigger">
    Shop by Vendor
    <span class="icon-fallback-text mobile-nav__sublist-expand">
  <span class="icon icon-plus" aria-hidden="true"></span>
  <span class="fallback-text">+</span>
</span>
<span class="icon-fallback-text mobile-nav__sublist-contract">
  <span class="icon icon-minus" aria-hidden="true"></span>
  <span class="fallback-text">-</span>
</span>
  </a>
  <ul class="mobile-nav__sublist">
  
    
      <li class="mobile-nav__sublist-link">
        <a href="https://expo-light.myshopify.com/collections/vendors?q=Acer">Acer</a>
      </li>
      
  
    
      <li class="mobile-nav__sublist-link">
        <a href="https://expo-light.myshopify.com/collections/vendors?q=Apple">Apple</a>
      </li>
      
  
    
      <li class="mobile-nav__sublist-link">
        <a href="https://expo-light.myshopify.com/collections/vendors?q=Archos">Archos</a>
      </li>
      
  
    
      <li class="mobile-nav__sublist-link">
        <a href="https://expo-light.myshopify.com/collections/vendors?q=ASUS">ASUS</a>
      </li>
      
  
    
      
  
    
      <li class="mobile-nav__sublist-link">
        <a href="https://expo-light.myshopify.com/collections/vendors?q=XFX">XFX</a>
      </li>
      
  
  </ul>
</li>

    
  
    
  

  
    
      <li class="mobile-nav__link">
        <a href="https://expo-light.myshopify.com/account/login" id="customer_login_link">Log in</a>
      </li>
      
        <li class="mobile-nav__link">
          <a href="https://expo-light.myshopify.com/account/register" id="customer_register_link">Create account</a>
        </li>
      
    
  
</ul>

</div>


  <header class="site-header" role="banner">
    <div class="wrapper">

      <div class="grid--full large--display-table">
        <div class="grid__item large--one-third large--display-table-cell"  >
          
            <h1 class="site-header__logo large--left" itemscope=""  itemtype="http://schema.org/Organization">
          
           
              <a href="index.jsp"  itemprop="url" >
                <img src="index_files/logo.png" id="dg" alt="MonitoringUp"  itemprop="logo">
              </a>
            
          
            </h1>
          
          
            <p class="header-message large--hide">
              <small>Free shipping on orders over $150</small>
            </p>
          
        </div>
        <div class="grid__item large--two-thirds large--display-table-cell medium-down--hide">
          
<ul class="site-nav" id="AccessibleNav">
  
    
    
    
      <li class="site-nav--active">
        <a href="index.jsp" class="site-nav__link">Home</a>
      </li>
    
  
    
    
    
      <li class="site-nav--has-dropdown" aria-haspopup="true">
        <a href="CollectionServlet" class="site-nav__link">
          Catalog
          <span class="icon-fallback-text">
            <span class="icon icon-arrow-down" aria-hidden="true"></span>
          </span>
        </a>
        <ul class="site-nav__dropdown">
                <%
  		for(int i=0;i<list_cat.size();i++){
			CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
 		 %>
          <li >
            <a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id()%>" class="site-nav__link"><%=categoryBean.getCategoryName()%></a>
          </li>
        <%
  			}
        %>
      </ul>
       
      </li>

      <li>
        <a href="about-us.jsp" class="site-nav__link">About Us</a>
      </li>
    
  
</ul>

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
        <%
		      for(int i=0;i<list_cat.size();i++){
				CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
 		 %>

  <li class="sidebar-sublist">
    <div class="sidebar-sublist__trigger-wrap">
      <a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id()%>" class="sidebar-sublist__has-dropdown ">
        <%=categoryBean.getCategoryName()%>
      </a>
      <button type="button" class="icon-fallback-text sidebar-sublist__expand">
        <span class="icon icon-plus" aria-hidden="true"></span>
        <span class="fallback-text">+</span>
      </button>
      <button type="button" class="icon-fallback-text sidebar-sublist__contract">
        <span class="icon icon-minus" aria-hidden="true"></span>
        <span class="fallback-text">-</span>
      </button>
    </div>
    <ul class="sidebar-sublist__content">
      <%
      		for(int j=0;j<list_subcat.size();j++){
				SubCategoryBean subCategoryBean = (SubCategoryBean) list_subcat.get(j);
				if(subCategoryBean.getCategory().equals(categoryBean.getCategoryName()))
				{
      %>
        <li>
          <a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id()%>&&subcategory_id=<%=subCategoryBean.getSubcategory_id()%>"><%=subCategoryBean.getName()%></a>
        </li>
       <%
				}
      		}
       %>
      
    </ul>
  </li>
	<%
  			}
    %>    

      </ul>
    </nav>

  <nav class="sidebar-module">
    <div class="section-header">
      <p class="section-header__title h4">Shop by Vendor</p>
    </div>
    <ul class="sidebar-module__list">
    <%
    	for(int i=0;i<list_subcat.size();i++){
			SubCategoryBean subCategoryBean = (SubCategoryBean) list_subcat.get(i);
			
			String viewmore="";
			if(i>4){
				viewmore="sidebar-module__hidden-item";
			}
	%>
        <li class="<%=viewmore%>"><a href="index.jsp"><%=subCategoryBean.getName() %></a></li>
	<%
			}
	%>
        
      
    </ul>

    
      <button class="text-link sidebar-module__viewmore">
        <span class="sidebar-module__expand">View more</span>
        <span class="sidebar-module__collapse">View less</span>
      </button>
    
  </nav>





  <nav class="sidebar-module">
    <div class="section-header">
      <p class="section-header__title h4">Special offers</p>
    </div>
    <div>
      <p><a href="#"><img src="index_files/ad.png"></a></p>
    </div>
  </nav>


        </div>
        
        <div class="grid__item large--four-fifths">
         
  <div class="flexslider">
    
  <div style="overflow: hidden; position: relative; height: 325px;" class="flex-viewport">
  	<ul style="width: 800%; transition-duration: 0s; transform: translate3d(-1540px, 0px, 0px);" class="slides">
  		<%
			for(int i=0;i<2;i++){
				IndexPicsBean indexPicsBean = (IndexPicsBean) list_index.get(i);
				String imgURL=Upload_Directory+indexPicsBean.getImgURL();
				String active="";
				if(i==0)
					active="flex-active-slide";
		%>
  		<li style="width: 770px; float: left; display: block;" aria-hidden="true" class="clone">
            <a href="#" class="slide-link">
              <img draggable="true" src="<%=imgURL %>" alt="">
            </a>
          </li>

          <li class="<%=active %>" style="width: 770px; float: left; display: block;">
            <a href="#" class="slide-link">
              <img draggable="true" src="<%=imgURL %>" alt="">
            </a>
          </li>
		<%
			}
		%>
     </ul>
   </div>
   <ol class="flex-control-nav flex-control-paging">
   <li><a class="">1</a></li>
   <li><a class="flex-active">2</a></li>
   </ol>
   <ul class="flex-direction-nav">
   		<li><a class="flex-prev" href="#">Previous</a></li>
   		<li><a class="flex-next" href="#">Next</a></li>
   	</ul>
   	</div>

  <hr class="hr--clear">
  <div class="section-header section-header--large">
  <h2 class="section-header__title--left section-header__title h4">Featured Collections</h2>
  <div class="section-header__link--right medium-down--hide">
    <a href="CollectionServlet" title="Browse our  collection">View all Collections</a>
  </div>
</div>

<div class="grid-uniform grid-link__container">
<%
	for(int i=0;i<3;i++){
		CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
		String imgURL=Upload_Directory+categoryBean.getImgURL();
%>
<div class="grid__item medium-down--one-half one-third text-center">
  

  <a href="collection.jsp?category_id=<%=categoryBean.getCategory_Id() %>" title="Browse our <%=categoryBean.getCategoryName() %>collection" class="grid-link--focus">
    <span style="height: 208px;" class="grid-link__image grid-link__image--collection">
      <span class="grid-link__image-centered">
        
          <img src="<%=imgURL %>" alt="<%=categoryBean.getCategoryName()%>">
        
      </span>
    </span>
    <p class="grid-link__title"><%=categoryBean.getCategoryName() %></p>
    
    <p class="grid-link__meta"><small></small></p>
    
  </a>

</div>
<%
	}
%>

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
<%
	for(int i=0;i<list_item.size();i++){
		ItemBean itemBean = (ItemBean) list_item.get(i);
		String imgURL=Upload_Directory+itemBean.getImgURL();
%>
<div class="grid__item medium-down--one-half large--one-quarter">
  <a href="productDetail.jsp?item_id=<%=itemBean.getItem_id() %>" class="grid-link">
    <span style="height: 208px;" class="grid-link__image grid-link__image--product">
      
      
      <span class="grid-link__image-centered">
        <img src="<%=imgURL %>" alt="<%=itemBean.getName()%>">
      </span>
    </span>
    <p class="grid-link__title"><%=itemBean.getName() %></p>
    <p class="grid-link__meta">
      
      <strong>$<%=itemBean.getPrice() %></strong>
      
    </p>
  </a>
</div>
<%
	}
%>

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
      
    </div>
  </main>

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
                      <span class="fallback-text">Twitter</span>
                    </a>
                  </li>
                
                
                  <li>
                    <a class="icon-fallback-text" href="https://www.facebook.com/vikrant.choudhary.75839" title="Code on Facebook">
                      <span class="icon icon-facebook" aria-hidden="true"></span>
                      <span class="fallback-text">Facebook</span>
                    </a>
                  </li>
                
              </ul>
          </div>
        

        
          <div class="grid__item large--one-quarter medium--one-half">
            <h4>Contact Us</h4>
            <div class="rte">+91-9501 87 3028<br>
				<a href="#">vikrantchoudharylpu@gmail.com</a><br>
					139 Sector-39<br>
				Gurgaon, India<br></div>
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
      <form action="savestate.jsp" id="myform" name="myform" method="get" >
<input type="text" id="xposform" />
<input type="text" id="yposform" />
<input type="button" onclick="dragsave()">
<input type="submit" >
</form>

      <hr>

      <div class="grid">
        <div class="grid__item large--one-half large--text-left medium-down--text-center">
          <p class="site-footer__links">Copyright@2015, MonitoringUp. </p>
        </div>
        
          <div class="grid__item large--one-half large--text-right medium-down--text-center">
            <ul class="inline-list payment-icons">
              
                <li>
                  <span class="icon-fallback-text">
                    <a href="index.jsp" rel="nofollow" target="_blank">Powered by Code</a>
                  </span>
                </li>
              
            </ul>
          </div>
        
      </div>

    </div>

  </footer>


  
    <script src="index_files/jquery_002.js" type="text/javascript"></script>
    <script src="index_files/slider.js" type="text/javascript"></script>
  

  <script src="index_files/fastclick.js" type="text/javascript"></script>
  <script src="index_files/timber.js" type="text/javascript"></script>
  <script src="index_files/theme.js" type="text/javascript"></script>

  

  
    <script src="index_files/handlebars.js" type="text/javascript"></script>
    
  <script id="CartTemplate" type="text/template">
  
    <form action="/cart" method="post" novalidate>
      <div class="ajaxcart__inner">
        {{#items}}
        <div class="ajaxcart__product">
          <div class="ajaxcart__row" data-id="{{id}}">
            <div class="grid">
              <div class="grid__item large--two-thirds">
                <div class="grid">
                  <div class="grid__item one-quarter">
                    <a href="{{url}}" class="ajaxcart__product-image"><img src="{{img}}" alt=""></a>
                  </div>
                  <div class="grid__item three-quarters">
                    <a href="{{url}}" class="h4">{{name}}</a>
                    <p>{{variation}}</p>
                  </div>
                </div>
              </div>
              <div class="grid__item large--one-third">
                <div class="grid">
                  <div class="grid__item one-third">
                    <div class="ajaxcart__qty">
                      <button type="button" class="ajaxcart__qty-adjust ajaxcart__qty--minus" data-id="{{id}}" data-qty="{{itemMinus}}">&minus;</button>
                      <input type="text" class="ajaxcart__qty-num" value="{{itemQty}}" min="0" data-id="{{id}}" aria-label="quantity" pattern="[0-9]*">
                      <button type="button" class="ajaxcart__qty-adjust ajaxcart__qty--plus" data-id="{{id}}" data-qty="{{itemAdd}}">+</button>
                    </div>
                  </div>
                  <div class="grid__item one-third text-center">
                    <p>{{price}}</p>
                  </div>
                  <div class="grid__item one-third text-right">
                    <p>
                      <small><a href="/cart/change?id={{id}}&amp;quantity=0" class="ajaxcart__remove" data-id="{{id}}">Remove</a></small>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        {{/items}}
      </div>
      <div class="ajaxcart__row text-right medium-down--text-center">
        <span class="h3">Subtotal {{totalPrice}}</span>
        <input type="submit" class="{{btnClass}}" name="checkout" value="Checkout">
      </div>
    </form>
  
  </script>
  <script id="DrawerTemplate" type="text/template">
  
    <div id="AjaxifyDrawer" class="ajaxcart ajaxcart--drawer">
      <div id="AjaxifyCart" class="ajaxcart__content {{wrapperClass}}"></div>
    </div>
  
  </script>
  <script id="ModalTemplate" type="text/template">
  
    <div id="AjaxifyModal" class="ajaxcart ajaxcart--modal">
      <div id="AjaxifyCart" class="ajaxcart__content"></div>
    </div>
  
  </script>
  <script id="AjaxifyQty" type="text/template">
  
    <div class="ajaxcart__qty">
      <button type="button" class="ajaxcart__qty-adjust ajaxcart__qty--minus" data-id="{{id}}" data-qty="{{itemMinus}}">&minus;</button>
      <input type="text" class="ajaxcart__qty-num" value="{{itemQty}}" min="0" data-id="{{id}}" aria-label="quantity" pattern="[0-9]*">
      <button type="button" class="ajaxcart__qty-adjust ajaxcart__qty--plus" data-id="{{id}}" data-qty="{{itemAdd}}">+</button>
    </div>
  
  </script>
  <script id="JsQty" type="text/template">
  
    <div class="js-qty">
      <button type="button" class="js-qty__adjust js-qty__adjust--minus" data-id="{{id}}" data-qty="{{itemMinus}}">&minus;</button>
      <input type="text" class="js-qty__num" value="{{itemQty}}" min="1" data-id="{{id}}" aria-label="quantity" pattern="[0-9]*" name="{{inputName}}" id="{{inputId}}">
      <button type="button" class="js-qty__adjust js-qty__adjust--plus" data-id="{{id}}" data-qty="{{itemAdd}}">+</button>
    </div>
  
  </script>

    <script src="index_files/ajaxify.js" type="text/javascript"></script>
    <script>
    jQuery(function($) {
      ajaxifyShopify.init({
        method: 'drawer',
        wrapperClass: 'wrapper',
        formSelector: '#AddToCartForm',
        addToCartSelector: '#AddToCart',
        cartCountSelector: '.cart-count',
        toggleCartButton: '.cart-toggle',
        btnClass: 'btn'
      });
    });
    </script>
</body>
</html>