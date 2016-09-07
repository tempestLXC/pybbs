<#include "./common/layout.ftl">
<@html page_title="首页 - ${siteTitle!}">

<!--幻灯 -->
<div class="slide wrap">
  <div id="demo01" class="flexslider">
	<ul class="slides" id="myButton">
		<li><a href="#"><div class="img"><img src="/static/image/banner/01.jpg" /></div></a></li>
		<li><a href="#"><div class="img"><img src="/static/image/banner/02.jpg" /></div></a></li>
	</ul>
  </div>
</div>
<!--幻灯 -->

<script type="text/javascript" src="/static/js/slider.js"></script>
<script type="text/javascript">
$(function(){
	$('#demo01').flexslider({
		animation: "slide",
		direction:"horizontal",
		easing:"swing"
	});
});
</script>


<!--活动推荐 -->
<div class="wrap activity">
   <ul>
      <li><a href="#"><img src="/static/image/add/02.jpg" /></a></li>
	  <li><a href="#"><img src="/static/image/add/03.jpg" /></a></li>
	  <li><a href="#"><img src="/static/image/add/04.jpg" /></a></li>
	  <li><a href="#"><img src="/static/image/add/05.jpg" /></a></li>
   </ul>
</div>
<!--活动推荐 -->

<div class="clear"></div>

<!--首页推荐 -->
<div class="index">
  <div class="wrap">
     
	 <!--标题 -->
	 <div class="nav_title">
	    <h3>首页推荐<span>这不仅仅是头条，更是一种最求！</span></h3> 
		<em><a href="upload_file.html">发表作品</a></em>
	 </div>
	 <!--标题 -->

      <!--列表 -->
	  <#include "./components/topics.ftl"/>
	  <@topics/>
      <!--列表 -->

  </div>
</div>
<!--首页推荐 -->



<!--分页 -->
<div class="pages">
  <a href="#" class="pr"><img src="/static/image/left_jt.png" /></a>
  <a href="#">1</a>
  <a href="#" class="now">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <span>...</span>
  <a href="#" class="pr"><img src="/static/image/right_jt.png" /></a>
</div>
<!--分页 -->


<!--广告 -->
<div class="ad wrap"><img src="/static/image/add/07.jpg" /></div>
<!--广告 -->


<!--推荐设计师 -->
<div class="design wrap">
   	 <!--标题 -->
	 <div class="nav_title">
	    <h3>推荐设计师</h3> 
	 </div>
	 <!--标题 -->
	 <ul>
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	   
	   <li>
	      <span class="design_pic"><a href="#"><img src="/static/image/add/01.jpg" /></a></span>
		  <span class="design_name">
		     <h3><a href="#">吴剑design</a></h3>
			 <p>原 腾讯ecd 视觉设计师；京东高级视觉设计师</p>
		  </span>
	   </li>
	 </ul>
</div>
<!--推荐设计师 -->

<div style="clear:both"></div>

<!--友情链接 -->
<div class="link">
   <div class="wrap">
      
	<!--标题 -->
	 <div class="nav_title">
	    <h3>友情链接</h3> 
	 </div>
   <!--标题 -->
   
    <a href="#">八度</a>
	<a href="#">MICU设计</a>
	<a href="#">阿新网页设计</a>
	<a href="#">uehtm酷站推荐</a>
	<a href="#">互联网的一些事</a>
	<a href="#">视觉中国</a>
	<a href="#">茶图素材网</a>
    <a href="#">八度</a>
	<a href="#">MICU设计</a>
	<a href="#">阿新网页设计</a>
	<a href="#">uehtm酷站推荐</a>
	<a href="#">互联网的一些事</a>
	<a href="#">视觉中国</a>
	<a href="#">茶图素材网</a>
	
   </div>
</div>
<!--友情链接 -->

</@html>