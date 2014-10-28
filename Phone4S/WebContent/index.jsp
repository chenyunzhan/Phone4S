<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap-3.2.0-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
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
	        alert(2);
	    }
    });
});
</script>
<title>Phone4S，您手机的4S店</title>
<style type="text/css">
	div {
		display: block;
	}

	.site-topbar {
		height: 36px;
		border-bottom: 1px solid #dfdfdf;
		font-size: 12px;
		line-height: 36px;
		color: #8c8c8c;
		background: #fafafa;
	}
	
	
	body {
		margin: 0;
		font: 14px/1.5 arial,"Microsoft Yahei","Hiragino Sans GB",sans-serif;
		color: #8c8c8c;
		background-color: #fff;
	}
	
	
	.site-topbar .sep {
		margin: 0 10px;
		color: #dfdfdf;
	}
	
	.site-topbar .topbar-nav {
		float: left;
		_width: 630px;
		padding-left: 20px;
	}
	
	.site-topbar .topbar-info {
		position: relative;
		float: right;
		_width: 400px;
		padding-top: 10px;
		padding-right: 20px;
		line-height: 1.5;
		text-align: right;
	}
	
	
	.site-topbar a {
		color: #8c8c8c;
	}
	
	
	.bs-example {
		margin-right: 0;
		margin-left: 0;
		position: relative;
		padding: 45px 15px 15px;
		margin: 0 50px 15px;
		background-color: #fff;
		border-color: #ddd;
		border-width: 1px;
		border-style: solid;
		border-radius: 4px 4px 0 0;
		-webkit-box-shadow: none;
		box-shadow: none;
	}
	
	.bs-example:after {
		position: absolute;
		top: 15px;
		left: 15px;
		font-size: 12px;
		font-weight: 700;
		color: #959595;
		text-transform: uppercase;
		letter-spacing: 1px;
		content: "热门手机";
	}
</style>
</head>
<body>
<div class="site-topbar">
    <div class="container">
        <div class="topbar-nav">
        	<a href="http://www.mi.com/" onclick="">Phone4S</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" target="_blank" onclick="">苹果手机</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" target="_blank" onclick="">安卓手机</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" target="_blank" onclick="">热门APP</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" target="_blank" onclick="">手机维修</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" target="_blank" onclick="">手机心得</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" target="_blank" onclick="">Phone4S移动版</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" onclick="">选择你的国家</a>
        </div>
        <div class="topbar-info">
            <a href="http://www.phone4s.com/" onclick="">登录</a>
            <span class="sep">|</span><a href="http://www.phone4s.com/" onclick="">注册</a>
        </div>
    </div>
</div>

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
      <!-- 
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Thumbnail label</h3>
            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Thumbnail label</h3>
            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNDIiIGhlaWdodD0iMjAwIj48cmVjdCB3aWR0aD0iMjQyIiBoZWlnaHQ9IjIwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjEyMSIgeT0iMTAwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjE1cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MjQyeDIwMDwvdGV4dD48L3N2Zz4=" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Thumbnail label</h3>
            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
       -->
    </div>
  </div>
<button id="send"></button>
</body>
</html>