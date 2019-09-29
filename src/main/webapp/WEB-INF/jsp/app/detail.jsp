<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>

<t:master title="${app.getTitle()}">

<jsp:attribute name="content">
<div class="row">
   <div class="col-md-12" itemscope itemtype="http://schema.org/MobileApplication">
      <div class="block block-themed">
         <div class="block-header bg-light">
            <h3 class="block-title"><a href="/">Home</a> » ${app.getTitle()} </h3>
            <div class="addthis_inline_share_toolbox"></div>
         </div>

         <%-- partials --%>
         <jsp:include page="partials/_main.jsp" />
         <jsp:include page="partials/_description.jsp" />
      </div>
   </div>
      <jsp:include page="partials/_comment.jsp" />
</div>

</jsp:attribute>

<jsp:attribute name="stylesheet">

<link rel="stylesheet" id="css-profile" href="/vendor/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet" id="css-profile" href="/vendor/owlcarousel/assets/owl.theme.default.min.css">

<link rel="stylesheet" id="css-fancybox" href="/vendor/fancybox/jquery.fancybox.min.css">
<style>

#screenshots .item {
  background: #ececec;
  padding: 10px 10px;
  margin: 5px;
  color: #FFF;
  border-radius: 3px;
  text-align: center;
}
.owl-theme .owl-nav {
  /*default owl-theme theme reset .disabled:hover links */
}
.owl-theme .owl-nav [class*='owl-'] {
  -webkit-transition: all .3s ease;
  transition: all .3s ease;
}
.owl-theme .owl-nav [class*='owl-'].disabled:hover {
  background-color: #D6D6D6;
}
#screenshots.owl-theme {
  position: relative;
}
#screenshots.owl-theme .owl-next,
#screenshots.owl-theme .owl-prev {
  width: 22px;
  height: 40px;
  margin-top: -40px;
  position: absolute;
  top: 50%;
}
#screenshots.owl-theme .owl-prev {
  left: 10px;
}
#screenshots.owl-theme .owl-next {
  right: 10px;
}
</style>
</jsp:attribute>

<jsp:attribute name="javascript">
<script src="/vendor/owlcarousel/owl.carousel.min.js"></script>
<script src="/vendor/fancybox/jquery.fancybox.min.js"></script>

<script>
   $(document).ready(function() {

      $('.owl-carousel').owlCarousel({
                  loop: true,
                  autoplay:true,
                  items : 5,
                  slideSpeed : 2000,
                  nav: true,
                  dots: true,
                  loop: false,
                  navText: ['<svg width="100%" height="100%" viewBox="0 0 11 20"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M9.554,1.001l-8.607,8.607l8.607,8.606"/></svg>','<svg width="100%" height="100%" viewBox="0 0 11 20" version="1.1"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M1.054,18.214l8.606,-8.606l-8.606,-8.607"/></svg>'],

                  responsiveClass: true,

                  responsive: {
                     0: {
                     items: 1,
                     nav: true
                     },
                     300: {
                     items: 3,
                     nav: false
                     },
                     1000: {
                     items: 5,
                     nav: true
                     }
                  }
         });

    });
</script>
</jsp:attribute>

</t:master>
