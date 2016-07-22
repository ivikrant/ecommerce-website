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
<%@page import="com.Bean.ReviewBean"%>
<%@page import="com.DAO.ReviewDAO"%>

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

  
  

<link media="screen" href="index_files/spr.css" type="text/css" rel="stylesheet"><script src="index_files/jquery_003.js" type="text/javascript"></script></head>
<%
	if(request.getParameter("item_id")!=null){
%>
<body id="monitoringup-classic-theme-by-shopify" class="template-index">
  <%
  String Upload_Directory="C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory/";
  IndexPicsDAO indexPicsDAO = new IndexPicsDAO();
  SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
  CategoryDAO categoryDAO = new CategoryDAO();
  ItemDAO itemDAO = new ItemDAO();
  ReviewDAO reviewDAO = new ReviewDAO();
  
  ArrayList<IndexPicsBean> list_index= indexPicsDAO.showIndexPics();
  ArrayList<SubCategoryBean> list_subcat= subCategoryDAO.showSubCategory();
  ArrayList<CategoryBean> list_cat= categoryDAO.showCategory();
  ArrayList<ItemBean> list_item= itemDAO.showItem();
  %>
    <div id="AjaxifyDrawer" class="ajaxcart ajaxcart--drawer">
      <div id="AjaxifyCart" class="ajaxcart__content wrapper"></div>
    </div>
  
  

  <div class="header-bar">
  <div class="wrapper medium-down--hide">
    <div class="large--display-table">
      <div class="header-bar__left large--display-table-cell">
        
          <div class="header-bar__module header-bar__message">
            Monitoring Up by Code
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
        <div class="grid__item large--one-third large--display-table-cell">
          
            <h1 class="site-header__logo large--left" itemscope="" itemtype="http://schema.org/Organization">
          
            
              <a href="index.jsp" itemprop="url">
                <img src="index_files/logo.png" alt="MonitoringUp" itemprop="logo">
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
        <li class="<%=viewmore%>"><a href="https://expo-light.myshopify.com/collections/vendors?q=Acer"><%=subCategoryBean.getName() %></a></li>
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
          <div itemscope="" itemtype="http://schema.org/Product">

  <div class="section-header section-header--breadcrumb">
  
  <% 
		String item_id = (String) request.getParameter("item_id");
		ItemBean itemBean = itemDAO.getItemDetail(item_id);
		String imgURL = Upload_Directory+itemBean.getImgURL();
		String imgURL1 = Upload_Directory+itemBean.getImgURL1();
		String imgURL2 = Upload_Directory+itemBean.getImgURL2();
  %>  

<nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
  <a href="index.jsp" title="Back to the frontpage">Home</a>

  

    
      <span aria-hidden="true" class="breadcrumb__sep">></span>
      
        
        <a href="collection.jsp?subcategory_id=<%=itemBean.getSubcategory_id() %>" title=""><%=itemBean.getSubcategory() %></a>
      
    
    <span aria-hidden="true" class="breadcrumb__sep">></span>
    <span><%=itemBean.getName() %></span>

  
</nav>


  </div>

  <div class="product-single">
    <div class="grid product-single__hero">
      <div class="grid__item large--one-half">
        <div style="position: relative; overflow: hidden;" class="product-single__photos image-zoom" id="ProductPhoto">
          
          <img src="<%=imgURL%>" alt="<%=itemBean.getName() %>" id="ProductPhotoImg" data-zoom="<%=imgURL%>">
        <img style="position: absolute; top: -67.2945px; left: -418.959px; width: 800px; height: 592px; border: medium none; max-width: none; max-height: none; opacity: 1;" class="zoomImg" src="<%=imgURL%>"></div>
      </div>
      <div class="grid__item large--one-half">
        
        <h1 itemprop="name"><%=itemBean.getName() %></h1>

        <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
          

          <meta itemprop="priceCurrency" content="CAD">
          <link itemprop="availability" href="http://schema.org/InStock">

          <form action="/cart/add" method="post" enctype="multipart/form-data" id="AddToCartForm">
            <div style="display: none;" class="selector-wrapper"><select id="productSelect-option-0" data-option="option1" class="single-option-selector"><option selected="selected" value="Default Title">Default Title</option></select></div><select style="display: none;" name="id" id="productSelect" class="product-single__variants">
              
                

                  <option selected="selected" value="1102855752">Default Title - $<%=itemBean.getPrice() %> CAD</option>

                
              
            </select>

            <div class="product-single__prices">
              <span id="ProductPrice" class="product-single__price" itemprop="price">$<%=itemBean.getPrice() %></span>

              
            </div>

            <div class="product-single__quantity">
              <label for="Quantity" class="quantity-selector">Quantity</label>
              
  
    <div class="js-qty">
      <button type="button" class="js-qty__adjust js-qty__adjust--minus" data-id="" data-qty="0">-</button>
      <input class="js-qty__num" value="1" min="1" data-id="" aria-label="quantity" pattern="[0-9]*" name="quantity" id="Quantity" type="text">
      <button type="button" class="js-qty__adjust js-qty__adjust--plus" data-id="" data-qty="11">+</button>
    </div>
  
  
            </div>

            <button type="submit" name="add" id="AddToCart" class="btn">
              <span id="AddToCartText">Add to Cart</span>
            </button>
          </form>
        </div>

      </div>
    </div>

    <div class="grid">
      <div class="grid__item large--one-half">
        
          <ul class="product-single__thumbnails grid-uniform" id="ProductThumbs">

            
              <li class="grid__item large--one-third medium-down--one-third">
                <a href="<%=imgURL %>" class="product-single__thumbnail">
                  <img src="<%=imgURL %>" alt="<%=itemBean.getName()%>">
                </a>
              </li>
            <li class="grid__item large--one-third medium-down--one-third">
                <a href="<%=imgURL1 %>" class="product-single__thumbnail">
                  <img src="<%=imgURL1 %>" alt="<%=itemBean.getName()%>">
                </a>
              </li><li class="grid__item large--one-third medium-down--one-third">
                <a href="<%=imgURL2 %>" class="product-single__thumbnail">
                  <img src="<%=imgURL2 %>" alt="<%=itemBean.getName()%>">
                </a>
              </li>
          </ul>
        
      </div>
    </div>
  </div>

  <hr class="hr--clear hr--small">
  <ul class="inline-list tab-switch__nav section-header">
    <li>
      <a href="#desc" data-link="desc" class="tab-switch__trigger h4 section-header__title is-active">Description</a>
    </li>
    
      <li>
        <a href="#review" data-link="review" class="tab-switch__trigger h4 section-header__title">Reviews</a>
      </li>
    
  </ul>
  <div class="tab-switch__content" data-content="desc">
    <div class="product-description rte" itemprop="description">
     	<p> <%=itemBean.getDescription() %> </p>
    </div>
  </div>
  
    <div class="tab-switch__content is-hidden" data-content="review">
      <div id="shopify-product-reviews" class="shopify-product-reviews" data-id="405356152"><style scoped="">
  
  .spr-container {
    padding: 24px;
    border-color: #ECECEC;
     
  }
  .spr-review, .spr-form {
    border-color: #ECECEC;
  }
</style>

<div class="spr-container">
  <div class="spr-header">
    <h2 class="spr-header-title">Customer Reviews</h2>

    <div class="spr-summary" itemscope="" itemtype="http://data-vocabulary.org/Review-aggregate">
      <meta itemprop="itemreviewed" content="Lenovo Thinkpad B50">
      <meta itemprop="votes" content="1">
      
      <span itemprop="rating" itemscope="" itemtype="http://data-vocabulary.org/Rating" class="spr-starrating spr-summary-starrating">
        <meta itemprop="average" content="3.0">
        <meta itemprop="best" content="5">
        <meta itemprop="worst" content="1">
        <i class="spr-icon spr-icon-star" style=""></i><i class="spr-icon spr-icon-star" style=""></i><i class="spr-icon spr-icon-star" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i>
      </span>
      <span class="spr-summary-caption">
        
          
          <span class="spr-summary-actions-togglereviews">Based on 1 review</span>
        
      </span>
      <span class="spr-summary-actions">
        <a href="#" class="spr-summary-actions-newreview" onclick="SPR.toggleForm(405356152);return false">Write a review</a>
      </span>
    </div>
  </div>

  <div class="spr-content">
    <div class="spr-form" id="form_405356152" style="display: none">
    
  <form method="post" action="ReviewServlet" id="new-review-form_405356152" class="new-review-form" onsubmit="SPR.submitForm(this);return false;">
  <input name="review[rating]" type="hidden">
  <input name="item_id" value="<%=item_id %>" type="hidden">

  <h3 class="spr-form-title">Write a review</h3>

  

    
      
	
      <fieldset class="spr-form-contact">
        
          <div class="spr-form-contact-name">
            <label class="spr-form-label" for="review_author_405356152">Name</label>
            <input class="spr-form-input spr-form-input-text " id="review_author_405356152" name="name" placeholder="Enter your name" type="text">
          </div>
        

        
          <div class="spr-form-contact-email">
            <label class="spr-form-label" for="review_email_405356152">Email</label>
            <input class="spr-form-input spr-form-input-email " id="review_email_405356152" name="email" placeholder="john.smith@example.com" type="email">
          </div>
        

        
      </fieldset>
	
      <fieldset class="spr-form-review">

        <div class="spr-form-review-rating">
          <label class="spr-form-label" for="review[rating]">Rating</label>
          <div class="spr-form-input spr-starrating ">
            <a href="#" onclick="SPR.setRating(this);return false;" class="spr-icon spr-icon-star spr-icon-star-empty" data-value="1">&nbsp;</a>
            <a href="#" onclick="SPR.setRating(this);return false;" class="spr-icon spr-icon-star spr-icon-star-empty" data-value="2">&nbsp;</a>
            <a href="#" onclick="SPR.setRating(this);return false;" class="spr-icon spr-icon-star spr-icon-star-empty" data-value="3">&nbsp;</a>
            <a href="#" onclick="SPR.setRating(this);return false;" class="spr-icon spr-icon-star spr-icon-star-empty" data-value="4">&nbsp;</a>
            <a href="#" onclick="SPR.setRating(this);return false;" class="spr-icon spr-icon-star spr-icon-star-empty" data-value="5">&nbsp;</a>
          </div>
        </div>

        <div class="spr-form-review-title">
          <label class="spr-form-label" for="review_title_405356152">Review Title</label>
          <input class="spr-form-input spr-form-input-text " id="review_title_405356152" name="title" placeholder="Give your review a title" type="text">
        </div>

        <div class="spr-form-review-body">
          <label class="spr-form-label" for="review_body_405356152">Body of Review <span class="spr-form-review-body-charactersremaining">(1500)</span></label>
          <div class="spr-form-input">
            <textarea class="spr-form-input spr-form-input-textarea " id="review_body_405356152" data-product-id="405356152" name="review" rows="10" placeholder="Write your comments here"></textarea>
            <script type="text/javascript" charset="utf-8">
              function sprUpdateCount(e){
                var $el = SPR.$(e.currentTarget);
                SPR.$(".spr-form-review-body-charactersremaining").html('(' + (1500 - $el.val().length) + ')');
              }
              SPR.$("textarea[data-product-id=405356152]").keyup(sprUpdateCount).trigger("keyup");
            </script>
          </div>
        </div>
      </fieldset>

      <fieldset class="spr-form-actions">
        <input class="spr-button spr-button-primary button button-primary btn btn-primary" value="Submit Review" type="submit">
      </fieldset>
    
  
</form>
</div>
	<%
		ArrayList<ReviewBean> list_review = reviewDAO.getItemReviews(item_id);
	%>
    <div class="spr-reviews" id="reviews_405356152">

  <%
		for(int i=0;i<list_review.size();i++){
			ReviewBean reviewBean = list_review.get(i);
	%>
    <div class="spr-review" id="spr-review-522709">
      <div class="spr-review-header">
        
        <h3 class="spr-review-header-title"><%=reviewBean.getTitle() %></h3>
        <span class="spr-review-header-byline"><strong><%=reviewBean.getName() %></strong> on <strong><%=reviewBean.getDate() %></strong> ( <%=reviewBean.getTime() %> )</span>
      </div>

      <div class="spr-review-content">
        <p class="spr-review-content-body"><%=reviewBean.getReview() %></p>
      </div>

      

      <div class="spr-review-footer">
        <a href="#" class="spr-review-reportreview" onclick="SPR.reportReview(522709);return false" id="report_522709" data-msg="This review has been reported">Report as Inappropriate</a>
      </div>
    </div>
  <%
		}
  %>

  


</div>
  </div>

</div></div>
    </div>
  

  
    <hr class="hr--clear hr--small">
    <h4 class="small--text-center">Share this Product</h4>
    



<div class="social-sharing  small--text-center" data-permalink="http://expo-light.myshopify.com/products/lenovo-thinkpad-b50">

  
    <a target="_blank" href="https://www.facebook.com/sharer.php?u=http://expo-light.myshopify.com/products/lenovo-thinkpad-b50" class="share-facebook">
      <span class="icon icon-facebook"></span>
      <span class="share-title">Share</span>
      
        
      
    </a>
  

  
    <a target="_blank" href="https://twitter.com/share?url=http://expo-light.myshopify.com/products/lenovo-thinkpad-b50&amp;text=Lenovo%20Thinkpad%20B50" class="share-twitter">
      <span class="icon icon-twitter"></span>
      <span class="share-title">Tweet</span>
      
        <span class="share-count is-loaded">1</span>
      
    </a>
  

  

    
      <a target="_blank" href="https://pinterest.com/pin/create/button/?url=http://expo-light.myshopify.com/products/lenovo-thinkpad-b50&amp;media=http://cdn.shopify.com/s/files/1/0695/9547/products/621591-645880-800_1024x1024.jpeg?v=1421190099&amp;description=Lenovo%20Thinkpad%20B50" class="share-pinterest">
        <span class="icon icon-pinterest"></span>
        <span class="share-title">Pin it</span>
        
          
        
      </a>
    

    
      <a target="_blank" href="http://www.thefancy.com/fancyit?ItemURL=http://expo-light.myshopify.com/products/lenovo-thinkpad-b50&amp;Title=Lenovo%20Thinkpad%20B50&amp;Category=Other&amp;ImageURL=//cdn.shopify.com/s/files/1/0695/9547/products/621591-645880-800_1024x1024.jpeg?v=1421190099" class="share-fancy">
        <span class="icon icon-fancy"></span>
        <span class="share-title">Fancy</span>
      </a>
    

  

  
    <a target="_blank" href="https://plus.google.com/share?url=http://expo-light.myshopify.com/products/lenovo-thinkpad-b50" class="share-google">
      <!-- Cannot get Google+ share count with JS yet -->
      <span class="icon icon-google"></span>
      
        <span class="share-count is-loaded">+1</span>
      
    </a>
  

</div>
  

  
    





  <hr class="hr--clear hr--small">
  <div class="section-header section-header--large">
    <h4 class="section-header__title">More from this collection</h4>
  </div>
  <div class="grid-uniform grid-link__container">
    
    
    
      
        
          
          











<div class="grid__item one-quarter small--one-half">
  <a href="https://expo-light.myshopify.com/collections/laptops/products/dell-latitude-e4300" class="grid-link">
    <span style="height: 130px;" class="grid-link__image grid-link__image--product">
      
      
      <span class="grid-link__image-centered">
        <img src="Lenovo%20Thinkpad%20B50%20%E2%80%93%20MonitoringUp%20%28product%20detail%29_files/Dell_Latitude_E4300_Laptop_large.jpg" alt="Dell Latitude E4300 Refurbished Laptop">
      </span>
    </span>
    <p class="grid-link__title">Dell Latitude E4300 Refurbished Laptop</p>
    <p class="grid-link__meta">
      
      <strong>$169.00</strong>
      
      
        <br><span class="spr-badge" id="spr_badge_405354572" data-rating="0.0">
  
    <span class="spr-starrating spr-badge-starrating"><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i></span>
  

  <span class="spr-badge-caption">
  
    No reviews
  
  </span>
</span>

      
    </p>
  </a>
</div>

        
      
    
      
        
          
          











<div class="grid__item one-quarter small--one-half">
  <a href="https://expo-light.myshopify.com/collections/laptops/products/hp-255-4gb-750gb-ubuntu" class="grid-link">
    <span style="height: 130px;" class="grid-link__image grid-link__image--product">
      
      
      <span class="grid-link__image-centered">
        <img src="Lenovo%20Thinkpad%20B50%20%E2%80%93%20MonitoringUp%20%28product%20detail%29_files/HP_255_Ubuntu_Laptop_large.jpg" alt="HP 255 UBUNTU">
      </span>
    </span>
    <p class="grid-link__title">HP 255 UBUNTU</p>
    <p class="grid-link__meta">
      
      <strong>$229.00</strong>
      
      
        <br><span class="spr-badge" id="spr_badge_405355724" data-rating="0.0">
  
    <span class="spr-starrating spr-badge-starrating"><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i></span>
  

  <span class="spr-badge-caption">
  
    No reviews
  
  </span>
</span>

      
    </p>
  </a>
</div>

        
      
    
      
        
      
    
      
        
          
          











<div class="grid__item one-quarter small--one-half">
  <a href="https://expo-light.myshopify.com/collections/laptops/products/hp-250-g1" class="grid-link">
    <span style="height: 130px;" class="grid-link__image grid-link__image--product">
      
      
      <span class="grid-link__image-centered">
        <img src="Lenovo%20Thinkpad%20B50%20%E2%80%93%20MonitoringUp%20%28product%20detail%29_files/HP_250_G1_Laptop_large.jpg" alt="HP 250 6GB">
      </span>
    </span>
    <p class="grid-link__title">HP 250 6GB</p>
    <p class="grid-link__meta">
      
      <strong>$259.00</strong>
      
      
        <br><span class="spr-badge" id="spr_badge_405355628" data-rating="0.0">
  
    <span class="spr-starrating spr-badge-starrating"><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i></span>
  

  <span class="spr-badge-caption">
  
    No reviews
  
  </span>
</span>

      
    </p>
  </a>
</div>

        
      
    
      
        
          
          











<div class="grid__item one-quarter small--one-half">
  <a href="https://expo-light.myshopify.com/collections/laptops/products/asus-x551ma-4gb-500gb-win-8" class="grid-link">
    <span style="height: 130px;" class="grid-link__image grid-link__image--product">
      
      
      <span class="grid-link__image-centered">
        <img src="Lenovo%20Thinkpad%20B50%20%E2%80%93%20MonitoringUp%20%28product%20detail%29_files/610248-620638-800_large.jpg" alt="Asus X551MA">
      </span>
    </span>
    <p class="grid-link__title">Asus X551MA</p>
    <p class="grid-link__meta">
      
      <strong>$269.00</strong>
      
      
        <br><span class="spr-badge" id="spr_badge_405353496" data-rating="0.0">
  
    <span class="spr-starrating spr-badge-starrating"><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i><i class="spr-icon spr-icon-star-empty" style=""></i></span>
  

  <span class="spr-badge-caption">
  
    No reviews
  
  </span>
</span>

      
    </p>
  </a>
</div>

        
      
    
  </div>


  

</div>

<script src="Lenovo%20Thinkpad%20B50%20%E2%80%93%20MonitoringUp%20%28product%20detail%29_files/option_selection-87ab3c47afdd94e7292ed3925ae1bc31.js" type="text/javascript"></script>
<script>
  var selectCallback = function(variant, selector) {
    timber.productPage({
      variant: variant,
      selector: selector
    });
  };

  jQuery(function($) {
    new Shopify.OptionSelectors('productSelect', {
      product: {"id":405356152,"title":"Lenovo Thinkpad B50","handle":"lenovo-thinkpad-b50","description":"\u003cp\u003e\u003cem\u003eThis is a demonstration store. You can purchase this product from \u003ca href=\"http:\/\/www.pcukshop.co.uk\/\" target=\"_blank\"\u003ePCUK Computers\u003c\/a\u003e\u003c\/em\u003e\u003c\/p\u003e\u003cp\u003e\u003cspan style=\"color: #ff0000;\"\u003e\u003cstrong\u003eIn store price £249\u003c\/strong\u003e\u003c\/span\u003e\u003c\/p\u003e\n\u003cp\u003e\u003cspan\u003eProcessor\u003c\/span\u003e\u003c\/p\u003e\n\u003cul\u003e\n\u003cli\u003eIntel BTM Celeron 2840 2.16GHz\u003c\/li\u003e\n\u003cli\u003eTurbo boost up to 2.13GHz\u003c\/li\u003e\n\u003cli\u003e1MB Cache\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eMemory\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e4GB 1600MHz DDR3 SDRAM\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eHard drive\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e500GB SATA\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eOptical Drive\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eDVD burner\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eSoftware\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eOperating System: Windows 8.1 64\u003c\/li\u003e\n\u003cli\u003eBing\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eDisplay\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e39.6 cm (15.6\") diagonal LED-backlit\u003c\/li\u003e\n\u003cli\u003eResolution: 1366 x 768\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eGraphics\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e\u003cspan\u003eIntel HD Graphics\u003c\/span\u003e\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eAudio\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eStereo Speakers with Dolby Advanced Audio certification\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eInput Devices\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eTouchpad and keyboard\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eNetworking\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eWifi \u003cspan xml:lang=\"EN-US\" lang=\"EN-US\"\u003e802.11BGN\u003c\/span\u003e\n\u003c\/li\u003e\n\u003cli\u003e\u003cspan xml:lang=\"EN-US\" lang=\"EN-US\"\u003eBluetooth\u003c\/span\u003e\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003ePower Supply\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e\u003cspan xml:lang=\"EN-CA\" lang=\"EN-CA\"\u003eUp to 5 hours (Bay Trail-M processor)\u003c\/span\u003e\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eDimensions\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eWidth 38 cm\u003c\/li\u003e\n\u003cli\u003eDepth 26.2 cm\u003c\/li\u003e\n\u003cli\u003eHeight 2.47 cm\u003c\/li\u003e\n\u003cli\u003eWeight 2.15 kg\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eInterfaces\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e1 x USB 3.0,\u003c\/li\u003e\n\u003cli\u003e2 x USB 2.0,\u003c\/li\u003e\n\u003cli\u003e1 x HDMI,\u003c\/li\u003e\n\u003cli\u003e1 x RJ45,\u003c\/li\u003e\n\u003cli\u003e1 x Audio Combo Jack\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eExpansion\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e4in1 card reader (SD, SDHC, SDXC, MMC)\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eWarranty \/ Misc\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e1 Year Manufacturer Warranty\u003c\/li\u003e\n\u003cli\u003e720p Camera\u003c\/li\u003e\n\u003c\/ul\u003e","published_at":"2014-07-17T10:07:00-04:00","created_at":"2015-01-13T18:01:38-05:00","vendor":"Lenovo","type":"Laptop","tags":["15.6\"","320GB","4GB","Windows 8"],"price":22900,"price_min":22900,"price_max":22900,"available":true,"price_varies":false,"compare_at_price":null,"compare_at_price_min":0,"compare_at_price_max":0,"compare_at_price_varies":false,"variants":[{"id":1102855752,"title":"Default Title","options":["Default Title"],"option1":"Default Title","option2":null,"option3":null,"price":22900,"weight":3000,"compare_at_price":null,"inventory_quantity":1,"inventory_management":null,"inventory_policy":"deny","available":true,"sku":"665844","requires_shipping":true,"taxable":true,"barcode":null,"featured_image":null}],"images":["\/\/cdn.shopify.com\/s\/files\/1\/0695\/9547\/products\/621591-645880-800.jpeg?v=1421190099","\/\/cdn.shopify.com\/s\/files\/1\/0695\/9547\/products\/621592-645880-800.jpeg?v=1421190101","\/\/cdn.shopify.com\/s\/files\/1\/0695\/9547\/products\/621595-645880-800.jpeg?v=1421190102"],"featured_image":"\/\/cdn.shopify.com\/s\/files\/1\/0695\/9547\/products\/621591-645880-800.jpeg?v=1421190099","options":["Title"],"content":"\u003cp\u003e\u003cem\u003eThis is a demonstration store. You can purchase this product from \u003ca href=\"http:\/\/www.pcukshop.co.uk\/\" target=\"_blank\"\u003ePCUK Computers\u003c\/a\u003e\u003c\/em\u003e\u003c\/p\u003e\u003cp\u003e\u003cspan style=\"color: #ff0000;\"\u003e\u003cstrong\u003eIn store price £249\u003c\/strong\u003e\u003c\/span\u003e\u003c\/p\u003e\n\u003cp\u003e\u003cspan\u003eProcessor\u003c\/span\u003e\u003c\/p\u003e\n\u003cul\u003e\n\u003cli\u003eIntel BTM Celeron 2840 2.16GHz\u003c\/li\u003e\n\u003cli\u003eTurbo boost up to 2.13GHz\u003c\/li\u003e\n\u003cli\u003e1MB Cache\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eMemory\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e4GB 1600MHz DDR3 SDRAM\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eHard drive\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e500GB SATA\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eOptical Drive\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eDVD burner\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eSoftware\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eOperating System: Windows 8.1 64\u003c\/li\u003e\n\u003cli\u003eBing\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eDisplay\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e39.6 cm (15.6\") diagonal LED-backlit\u003c\/li\u003e\n\u003cli\u003eResolution: 1366 x 768\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eGraphics\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e\u003cspan\u003eIntel HD Graphics\u003c\/span\u003e\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eAudio\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eStereo Speakers with Dolby Advanced Audio certification\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eInput Devices\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eTouchpad and keyboard\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eNetworking\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eWifi \u003cspan xml:lang=\"EN-US\" lang=\"EN-US\"\u003e802.11BGN\u003c\/span\u003e\n\u003c\/li\u003e\n\u003cli\u003e\u003cspan xml:lang=\"EN-US\" lang=\"EN-US\"\u003eBluetooth\u003c\/span\u003e\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003ePower Supply\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e\u003cspan xml:lang=\"EN-CA\" lang=\"EN-CA\"\u003eUp to 5 hours (Bay Trail-M processor)\u003c\/span\u003e\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eDimensions\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003eWidth 38 cm\u003c\/li\u003e\n\u003cli\u003eDepth 26.2 cm\u003c\/li\u003e\n\u003cli\u003eHeight 2.47 cm\u003c\/li\u003e\n\u003cli\u003eWeight 2.15 kg\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eInterfaces\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e1 x USB 3.0,\u003c\/li\u003e\n\u003cli\u003e2 x USB 2.0,\u003c\/li\u003e\n\u003cli\u003e1 x HDMI,\u003c\/li\u003e\n\u003cli\u003e1 x RJ45,\u003c\/li\u003e\n\u003cli\u003e1 x Audio Combo Jack\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eExpansion\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e4in1 card reader (SD, SDHC, SDXC, MMC)\u003c\/li\u003e\n\u003c\/ul\u003e\n\u003cspan\u003eWarranty \/ Misc\u003c\/span\u003e\n\u003cul\u003e\n\u003cli\u003e1 Year Manufacturer Warranty\u003c\/li\u003e\n\u003cli\u003e720p Camera\u003c\/li\u003e\n\u003c\/ul\u003e"},
      onVariantSelected: selectCallback,
      enableHistoryState: true
    });

    // Add label if only one product option and it isn't 'Title'. Could be 'Size'.
    

    // Hide selectors if we only have 1 variant and its title contains 'Default'.
    
      $('.selector-wrapper').hide();
    
  });
</script>
        
      
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
<%
	}else{
		response.sendRedirect("error.jsp");
	}
%>
</html>