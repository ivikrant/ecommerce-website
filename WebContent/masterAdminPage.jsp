<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Bean.PageAllowBean"%>
<%@page import="com.DAO.BasicPageAllowDAO"%>
<%@ page import="com.Bean.IndexPicsBean" %>
<%@ page import="com.Bean.SubCategoryBean" %>
<%@ page import="com.Bean.CategoryBean" %>
<%@ page import="com.DAO.CategoryDAO" %>
<%@ page import="com.DAO.SubCategoryDAO" %>
<%@ page import="com.DAO.IndexPicsDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="com.DAO.ItemDAO"%>
<%@page import="com.Bean.ItemBean"%>
<%@page import="com.Bean.PageBean"%>
<%@page import="com.DAO.BasicPageDAO"%>
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
  <script src="index_files/spr.js" type="text/javascript"></script><script src="index_files/analytics.js" ></script><script src="index_files/shopify_stats.js" type="text/javascript"></script><script>
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

<body id="monitoringup-classic-theme-by-shopify" class="template-index">
  <%
  String Upload_Directory="C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory/";
  IndexPicsDAO indexPicsDAO = new IndexPicsDAO();
  SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
  CategoryDAO categoryDAO = new CategoryDAO();
  ItemDAO itemDAO = new ItemDAO();
  BasicPageDAO basicPageDAO = new BasicPageDAO();
  BasicPageAllowDAO basicPageAllowDAO = new BasicPageAllowDAO();

  PageAllowBean pageAllowBean = basicPageAllowDAO.getPageItemDetail(1);
  PageBean pageBean = basicPageDAO.getPageItemDetail(pageAllowBean.getPage_id());
  ArrayList<IndexPicsBean> list_index= indexPicsDAO.showIndexPics();
  ArrayList<SubCategoryBean> list_subcat= subCategoryDAO.showSubCategory();
  ArrayList<CategoryBean> list_cat= categoryDAO.showCategory();
  ArrayList<ItemBean> list_item= itemDAO.showItem();
  
  String logoURL = Upload_Directory + pageBean.getLogoURL();
  String adURL = Upload_Directory + pageBean.getAdURL();
  
  %>
    <div id="AjaxifyDrawer" class="ajaxcart ajaxcart--drawer">
      <div id="AjaxifyCart" class="ajaxcart__content wrapper"></div>
    </div>
  
  

  <div class="header-bar">
  <div class="wrapper medium-down--hide">
    <div class="large--display-table">
   <%
    	if(pageAllowBean.getCompanyLine()==1)
    	{
   %>
    	
      <div class="header-bar__left large--display-table-cell">
        
          <div class="header-bar__module header-bar__message">
          <ul class="header-bar__module header-bar__module--list">
            
              <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
          
            &nbsp;&nbsp;&nbsp;<%=pageBean.getCompanyLine() %> &nbsp;&nbsp;&nbsp;
            <ul class="header-bar__module header-bar__module--list">
            
              <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
          </div>
      </div>
     <%
    	}
     %>

      <div class="header-bar__right large--display-table-cell">
      <%
      		if(pageAllowBean.getCart()==1)
      		{
      %>
        <div class="header-bar__module">
        <ul class="header-bar__module header-bar__module--list">
            
              <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
          <a href="CartServlet" class="cart-toggle">
            <span class="icon icon-cart header-bar__cart-icon" aria-hidden="true"></span>
            <%=pageBean.getCart() %>
            <span class="cart-count header-bar__cart-count hidden-count">0</span>
          </a>
          <ul class="header-bar__module header-bar__module--list">
            
              <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
        </div>
	<%
      		}
	%>
    <%
      		if(pageAllowBean.getLogin()==1)
      		{
    %>
          <span class="header-bar__sep" aria-hidden="true">|</span>
          <ul class="header-bar__module header-bar__module--list">
            
              <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
          <ul class="header-bar__module header-bar__module--list">
            
              <li>
                <a href="login.jsp" id="customer_login_link"><%=pageBean.getLogin() %></a>
              </li>
            
          </ul>
          &nbsp;&nbsp;&nbsp;
          <ul class="header-bar__module header-bar__module--list">
            
              <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
        <%
      		}
      		if(pageAllowBean.getSearch()==1)
      		{
      %>
          &nbsp;&nbsp;&nbsp;
          <div class="header-bar__module header-bar__search">
            <form action="SearchServlet" method="get" role="search">
              
              <input name="query" aria-label="Search our store" class="header-bar__search-input" type="search">
              <button type="submit" class="btn icon-fallback-text header-bar__search-submit">
                <span class="icon icon-search" aria-hidden="true"></span>
                <span class="fallback-text"><%=pageBean.getSearch() %></span>
              </button>
            </form>
          </div>
          
          <ul class="header-bar__module header-bar__module--list">
            
              <li>
              	&nbsp;&nbsp;&nbsp;
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      		</li>
            
          </ul>
        <%
      		}
        %>
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
      <%=pageBean.getCart() %> <span class="cart-count hidden-count">0</span>
    </a>
  </div>
  <ul id="MobileNav" class="mobile-nav large--hide">
  
  
  
  <li class="mobile-nav__link" aria-haspopup="true">
    
      <a href="index.jsp" class="mobile-nav">
        <%=pageBean.getHome() %>
      </a>
    
  </li>
  
  <li class="mobile-nav__link" aria-haspopup="true">
    
      <a href="CollectionServlet" class="mobile-nav__sublist-trigger">
        <%=pageBean.getCatalog() %>
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
    
      <a href="about-us.jsp" class="mobile-nav">
        <%=pageBean.getAboutUs() %>
      </a>
    
  </li>
    
  
  <li class="mobile-nav__link" aria-haspopup="true">
  <%
   		if(pageAllowBean.getShopFor()==1)
    	{
  %>
  	<a href="#" class="mobile-nav__sublist-trigger">
    	<%=pageBean.getShopFor() %>
    <span class="icon-fallback-text mobile-nav__sublist-expand">
  		<span class="icon icon-plus" aria-hidden="true"></span>
  		<span class="fallback-text">+</span>
	</span>
	<span class="icon-fallback-text mobile-nav__sublist-contract">
  		<span class="icon icon-minus" aria-hidden="true"></span>
  		<span class="fallback-text">-</span>
	</span>
  </a>
  <%
    	}
  %>
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
         <%
		   	   	for(int i=0;i<list_cat.size();i++){
					CategoryBean categoryBean = (CategoryBean) list_cat.get(i);
 		 %>
              <li class="mobile-nav__sublist-link">
                <a href="https://expo-light.myshopify.com/collections/home-pcs"><%=categoryBean.getCategoryName() %></a>
              </li>
         <%
		   	   	}
         %>   
         </ul>
       </li>
      
    <%
      		if(pageAllowBean.getShopFor()==1)
      		{
    %>
      <div class="section-header">
        <p class="section-header__title h4"><%=pageBean.getShopFor() %></p>
      </div>
     <%
      		}
     %>
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
    
          </ul>
        </li>
      
        <li class="mobile-nav__sublist-link">
          <a href="https://expo-light.myshopify.com/collections/tablets">Mobile</a>
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
          
          <%
      		if(pageAllowBean.getLogoURL()==1)
      		{
      	%>
      		
      		<li>
      			<a href="MasterPageController.jsp?process=logo&&value=0" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      		</li>
      		
      		
            <h1 class="site-header__logo large--left" itemscope="" itemtype="http://schema.org/Organization">
              <a href="index.jsp" itemprop="url">
                <img src="<%=logoURL %>" alt="MonitoringUp" itemprop="logo">
              </a>  
            </h1>
            
            <li>
      			<a href="MasterPageController.jsp?process=companyline&&value=1" >
        			<span class="icon icon-plus" aria-hidden="true"></span>      
				</a>
      		</li>
      		
          <%
      		}
      		if(pageAllowBean.getCompanyLine()==1)
      		{
      		%>
      		<li>
      			<a href="MasterPageController.jsp?process=companyline&&value=0" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      		</li>
      		
            <p class="header-message large--hide">
            	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
              <small><%=pageBean.getCompanyLine() %></small>
            </p>
            <ul>
            <li>
      			<a href="MasterPageController.jsp?process=logo&&value=1" >
        			<span class="icon icon-plus" aria-hidden="true"></span>      
				</a>
      		</li>
      		</ul>
           <%
      		}
           %>
          
        </div>
        <div class="grid__item large--two-thirds large--display-table-cell medium-down--hide">
          
		<ul class="site-nav" id="AccessibleNav">
    
    <%
      		if(pageAllowBean.getHome()==1)
      		{
    %>
      <li>
      	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      </li>
      <li class="site-nav--active">
        <a href="index.jsp" class="site-nav__link"><%=pageBean.getHome() %></a>
      </li>
      <li>
      			<a href="EnterCategories.jsp" >
        			<span class="icon icon-plus" aria-hidden="true"></span>      
				</a>
      </li>
    <%
      		}
      		if(pageAllowBean.getCatalog()==1)
      		{
     %>
      <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
      <li>
      	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      </li>
      <li class="site-nav--has-dropdown" aria-haspopup="true">
        <a href="CollectionServlet" class="site-nav__link">
          <%=pageBean.getCatalog() %>
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
        <li class="site-nav__link">
        		&nbsp;&nbsp;&nbsp;
            	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      			<a href="EnterCategories.jsp" >
        			<span class="icon icon-plus" aria-hidden="true"></span>      
				</a>
          </li>
      </ul>
       
      </li>
      <li>
      			<a href="EnterCategories.jsp" >
        			<span class="icon icon-plus" aria-hidden="true"></span>      
				</a>
      </li>
      
	<%
      		}
      		if(pageAllowBean.getAboutUs()==1)
      		{
      %>
      <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
      <li>
      	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      </li>
      <li>
        <a href="about-us.jsp" class="site-nav__link"><%=pageBean.getAboutUs() %></a>
      </li>
      <li>
      			<a href="EnterCategories.jsp" >
        			<span class="icon icon-plus" aria-hidden="true"></span>      
				</a>
      </li>
    <%
      		}
    %>
  
</ul>

        </div>
      </div>

    </div>
  </header>

  <main class="wrapper main-content" role="main">
    <div class="grid">
      
        <div class="grid__item large--one-fifth medium-down--hide">

    <nav class="sidebar-module">
    <%
      		if(pageAllowBean.getShopFor()==1)
      		{
      %>
      <div class="section-header">
        <p class="section-header__title h4"><%=pageBean.getShopFor() %></p>
      </div>
     <%
      		}
     %>
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
  <%
      		if(pageAllowBean.getShopBy()==1)
      		{
      %>
    <div class="section-header">
      <p class="section-header__title h4"><%=pageBean.getShopBy() %></p>
    </div>
    <%
      		}
    %>
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
  <%
      		if(pageAllowBean.getSpecialOffers()==1)
      		{
      %>
    <div class="section-header">
      <p class="section-header__title h4"><%=pageBean.getSpecialOffers() %></p>
    </div>
    <%
      		}
      		if(pageAllowBean.getAdURL()==1)
      		{
      %>
    <div>
      <p><a href="#"><img src="<%=adURL%>"></a></p>
    </div>
    <%
      		}
    %>
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
              <img draggable="false" src="<%=imgURL %>" alt="">
            </a>
          </li>

          <li class="<%=active %>" style="width: 770px; float: left; display: block;">
            <a href="#" class="slide-link">
              <img draggable="false" src="<%=imgURL %>" alt="">
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
          <%
      		if(pageAllowBean.getQuickLinks()==1)
      		{
      %>
      	
            <h4><a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      				<%=pageBean.getQuickLinks() %>
      			<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
      		</h4>
          <%
      		}
          %>
            <ul class="site-footer__links">
          <%
      		if(pageAllowBean.getContactUs()==1)
      		{
      %>    
                <li><a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      				</a>
      				<a href="contact-us.jsp"><%=pageBean.getContactUs() %></a>
      				<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      				</a>
      				</li>
        <%
      		}
      		if(pageAllowBean.getfSearch()==1)
      		{
      %>      
                <li>
                	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      				</a>
                	<a href="search.jsp"><%=pageBean.getSearch() %></a>
                	<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      				</a>
                </li>
        <%
      		}
      		if(pageAllowBean.getfAboutUs()==1)
      		{
      %>      
                <li>
                	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      				</a>
                	<a href="about-us.jsp"><%=pageBean.getAboutUs() %></a>
                	<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      				</a>
                </li>
        <%
      		}
        %>      
            </ul>
          </div>
        

        
          <div class="grid__item large--one-quarter medium--one-half">
          <%
      		if(pageAllowBean.getGetConnected()==1)
      		{
      %>
            <h4>
            	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
            		<%=pageBean.getGetConnected() %>
            	<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
            </h4>
          <%
      		}
          %>
              
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
          <%
      		if(pageAllowBean.getfContactUs()==1)
      		{
      	  %>
            <h4>
            	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
            		<%=pageBean.getfContactUs() %>
            	<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
            </h4>
           <%
      		}
           %>
            <div class="rte">
            <%
      		if(pageAllowBean.getPhNo()==1)
      		{
      		%>
      		<%=pageBean.getPhNo() %><br>
      		<%
      		}
      		if(pageAllowBean.getEmail()==1)
      		{
      		%>
				<a href="#"><%=pageBean.getEmail() %></a><br>
			<%
      		}
      		if(pageAllowBean.getAddress1()==1)
      		{
      		%>
					<%=pageBean.getAddress1() %><br>
			<%
      		}
      		if(pageAllowBean.getAddress2()==1)
      		{
      		%>
				<%=pageBean.getAddress2() %><br>
			<%
      		}
      		if(pageAllowBean.getfContactUs()==1)
      		{
			%>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      			<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
      		<%
      			}
      		%>
		</div>
       </div>
        

        
          <div class="grid__item large--one-quarter medium--one-half">
          <%
      		if(pageAllowBean.getNewsletter()==1)
      		{
      	  %>
            <h4>
            	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
            		<%=pageBean.getNewsletter() %>
            	<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
            </h4>
          <%
      		}
      		if(pageAllowBean.getSignupPromo()==1)
      		{
      	  %>
            <p>
            	<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      			&nbsp;&nbsp;
            		<%=pageBean.getSignupPromo() %>
            	&nbsp;&nbsp;
            	<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a>
            </p>
          <%
      		}
          %>
            

<form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="small--hide">
  <input placeholder="your-email@example.com" name="EMAIL" id="mail" aria-label="your-email@example.com" type="email">
  <input class="btn" name="subscribe" id="subscribe" value="Subscribe" type="submit">
</form>

<form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="large--hide medium--hide input-group">
  <input placeholder="your-email@example.com" name="EMAIL" id="mail" class="input-group-field" aria-label="your-email@example.com" type="email">
  <span class="input-group-btn">
    <input class="btn" name="subscribe" id="subscribe" value="Subscribe" type="submit">
  </span>
</form>

          </div>
        
      </div>

      <hr>

      <div class="grid">
      <%
      		if(pageAllowBean.getCopyright()==1)
      		{
      %>
        <div class="grid__item large--one-half large--text-left medium-down--text-center">
          
          <p class="site-footer__links">
          		<a href="CategoryServlet" >
        			<span class="icon icon-minus" aria-hidden="true"></span>
      			</a>
      				<%=pageBean.getCopyright() %>
      			<a href="CategoryServlet" >
        			<span class="icon icon-plus" aria-hidden="true"></span>
      			</a> 
      	   </p>
        </div>
       <%
      		}
      		if(pageAllowBean.getPoweredBy()==1)
      		{
      	%>
          <div class="grid__item large--one-half large--text-right medium-down--text-center">
          			
            <ul class="inline-list payment-icons">
              
                <li>
                	<a href="CategoryServlet" >
        				<span class="icon icon-minus" aria-hidden="true"></span>
      				</a>
                  <span class="icon-fallback-text">
                  	
      				&nbsp;&nbsp;&nbsp;
                    <a href="index.jsp" rel="nofollow" target="_blank"><%=pageBean.getPoweredBy() %></a>
                    &nbsp;&nbsp;&nbsp;
                    
                  </span>
                  <a href="CategoryServlet" >
        				<span class="icon icon-plus" aria-hidden="true"></span>
      				</a>
                </li>
              
            </ul>
          </div>
         <%
      		}
         %>
        
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