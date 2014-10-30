<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common_top.jsp" %>
<script>
$(function(){
	$.ajax({
	    type: "GET",
	    url: "getGoodsPhone.do",
	    contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    success: function(data){
	        $('#resText').empty();  
	        var html = ''; 
	        $.each(data, function(goodsPhoneIndex, goodsPhone){
	            html += '<div class="col-sm-6 col-md-3">'+
	              '<div class="thumbnail">'+
	                '<img data-src="holder.js/100%x200" alt="100%x200" src="'+ goodsPhone['goodsPhonePhoto'] + '" style="height: 300px; width: 100%; display: block;">'+
	                '<div class="caption">'+
	                  '<h3>'+ goodsPhone['goodsPhoneName'] + '</h3>'+
	                  '<p>' + goodsPhone['goodsPhoneSummary'] + '</p>'+
	                  '<p><a href="#" class="btn btn-primary" role="button">＋购物车</a> <a href="#" class="btn btn-default" role="button">查看详情</a></p>'+
	                '</div>'+
	              '</div>'+
	            '</div>';
	        });
	        $('#resText').html(html);
	    },
	    error: function (msg) {
	        alert("抱歉，加载商品失败。");
	    }
    });
});
</script>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="http://img02.taobaocdn.com/imgextra/i2/1733402933/TB2JdJBapXXXXXBXXXXXXXXXXXX_!!1733402933.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="http://img01.taobaocdn.com/imgextra/i1/1733402933/TB2tfwVaXXXXXbLXpXXXXXXXXXX_!!1733402933.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="http://img01.taobaocdn.com/imgextra/i1/1733402933/TB2FCENaXXXXXaTXpXXXXXXXXXX_!!1733402933.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br><br>
<div class="bs-example">
   <div class="row" id="resText">
     <div class="col-sm-6 col-md-3">
       <div class="thumbnail">
         <img data-src="holder.js/100%x200" alt="100%x200" src="http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752" style="height: 300px; width: 100%; display: block;">
         <div class="caption">
           <h3>iPhone 6</h3>
           <p>选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 6 及两台 iPhone 6 Plus。</p>
           <p><a href="#" class="btn btn-primary" role="button">＋购物车</a> <a href="#" class="btn btn-default" role="button">查看详情</a></p>
         </div>
       </div>
     </div>
   </div>
 </div>
<%@include file="common_bottom.jsp" %>