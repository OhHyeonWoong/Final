<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- I was motivated to create this after seeing BhaumikPatel's http://bootsnipp.com/snippets/featured/accordion-menu; I adapted it to a list format rather than a table so that it would be easy to create a nav toggle button when viewed on mobile devices -->
<div class="col-md-3 float_sidebar">
  <div id="sidenav1">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sideNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <div class="collapse navbar-collapse" id="sideNavbar">
      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#lbjMyPage" class="lbjsidebar_a"><span class="glyphicon glyphicon-user"></span>개인정보보기</a> </h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" href="#lbjnowreservationInfo"><span class="glyphicon glyphicon-book"> </span>현재예약정보</a> </h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" href="#lbjpreservationInfo"><span class="glyphicon glyphicon-book"></span>지난이용정보</a> </h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" href="#lbjQnA"><span class="glyphicon glyphicon-question-sign"> </span>나의QnA</a> </h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" href="#lbjmyReport"><span class="glyphicon glyphicon-ban-circle"></span> 나의신고글</a></h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" href="#lbjmyItem"><span class="glyphicon glyphicon-shopping-cart"></span> 나의아이템</a></h4>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a class="lbjsidebar_a" href="#doktop"><span class="glyphicon glyphicon-arrow-up"></span> 위로가기</a></h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>