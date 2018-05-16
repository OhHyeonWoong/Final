<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- I was motivated to create this after seeing BhaumikPatel's http://bootsnipp.com/snippets/featured/accordion-menu; I adapted it to a list format rather than a table so that it would be easy to create a nav toggle button when viewed on mobile devices -->
<div class="float_sidebar col-md-3">
  <div id="sidenav1">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sideNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <div class="collapse navbar-collapse" id="sideNavbar">
      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="" class="lbjsidebar_a"><span class="glyphicon glyphicon-home"></span>Home</a> </h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-book"> </span>Research<span class="caret"></span></a> </h4>
          </div>
          <!-- Note: By adding "in" after "collapse", it starts with that particular panel open by default; remove if you want them all collapsed by default --> 
          <div id="collapseOne" class="panel-collapse collapse in">
            <ul class="list-group">
              <li class="navlink2 lbjsidebar_li"><a href="" class="lbjsidebar_a"><span class="glyphicon glyphicon-book"></span>Overview</a></li>
              <li class="lbjsidebar_li"><a class="lbjsidebar_a" href="" class="navlink">Link 1</a></li>
              <li class="lbjsidebar_li"><a class="lbjsidebar_a" href="" class="navlink">Link 2</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 3</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 4</a></li>
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-cog"> </span>Services<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse">
            <ul class="list-group">
              <li class="navlink2 lbjsidebar_li"><a href="" class="navlink lbjsidebar_a"><span class="glyphicon glyphicon-cog"></span>Overview</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 1</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 2</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 3</a></li>
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-calendar"> </span>Calendar<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse">
            <ul class="list-group">
              <li class="navlink2 lbjsidebar_li"><a href="" class="lbjsidebar_a"><span class="glyphicon glyphicon-calendar"></span>Overview</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink">Link 1</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink">Link 2</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink">Link 3</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink">Link 4</a></li>
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-user"></span> About Us<span class="caret"></span></a></h4>
          </div>
          <div id="collapseFour" class="panel-collapse collapse">
            <ul class="list-group">
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 1</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 2</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 3</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 4</a></li>
              <li class="lbjsidebar_li"><a href="" class="navlink lbjsidebar_a">Link 5</a></li>
            </ul>
          </div>
        </div>
        <!-- This is in case you want to add additional links that will only show once the Nav button is engaged; delete if you don't need -->
        <div class="menu-hide">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a href="" class="lbjsidebar_a"><span class="glyphicon glyphicon-new-window"></span>External Link</a> </h4>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a href="" class="lbjsidebar_a"><span class="glyphicon glyphicon-new-window"></span>External Link</a> </h4>
            </div>
          </div>
        </div>
        <!-- end hidden Menu items --> 
      </div>
    </div>
  </div>
</div>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html> -->