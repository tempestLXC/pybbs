<#include "../common/layout.ftl"/>
<@html page_title="${pageTitle!}" page_tab="user">

<!--个人简介-->
<div class="personal_introduce_area">
    <div class="personal_introduce_content">
        <img class="personal_header" src="${currentUser.avatar!}">
        <div class="introduct_text">
            <p class="introduce_name">limignang</p>
            <p class="introduce_title"> </p>
            <#--<p class="introduce_title">GUI设计师</p>-->
            <p class="introduce_detail"> </p>
            <#--<p class="introduce_detail">cui公众号 个人微信 520fghj</p>-->
            <div class="introduce_share">
                <div class="introduce_share_icon share_icon_1"></div>
                <div class="introduce_share_icon share_icon_2"></div>
                <div class="introduce_share_icon share_icon_3"></div>
                <div class="introduce_share_icon share_icon_4"></div>
                <div class="introduce_share_icon share_icon_5"></div>
                <div class="introduce_share_icon share_icon_6"></div>
                <div class="edit_button">编辑资料</div>
            </div>

        </div>
        <div class="personal_face">
            <p class="personal_data_title">粉丝</p>
            <p class="personal_data">#{userExtend.fans_num!}</p>
        </div>
        <div class="split_line"></div>
        <div class="personal_comment">
            <p class="personal_data_title">关注</p>
            <p class="personal_data">#{userExtend.concern_cum!}</p>
        </div>
        <div class="split_line"></div>
        <div class="personal_hot">
            <p class="personal_data_title">人气</p>
            <p class="personal_data">#{userExtend.heat!}<sup>o</sup></p>
        </div>
    </div>
</div>

<!--导航菜单区域-->
<div class="nav_area">
    <ul class="nav_list">
        <li>作品</li>
        <li class="nav_active">收藏</li>
        <li>推荐</li>
    </ul>
</div>

<div class="clear"></div>
<div class="del_box">
    <div class="del_area">
        <p>确定要删除作品<span>仓皇只狗</span>吗？</p>
        <div class="del_sure_button">确定</div>
        <div class="del_cancel_button">取消</div>
    </div>
</div>

<!--首页推荐 -->
<div class="index">
    <div class="production_list">

        <div class="wrap">
            <div class="production_category">
                <div class="production_category_button production_category_active">全部(<span>300</span>)</div>
                <div class="production_category_button prdction">作品(<span>20</span>)</div>
                <div class="production_category_button">文章(<span>0</span>)</div>
            </div>
            <!--列表 -->
            <div class="index_list">
                <ul>
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->


                </ul>
            </div>
            <!--列表 -->

        </div>
    </div>
    <div class="production_list production_list_active">
        <!--作品分类区域-->

        <div class="wrap">
            <div class="production_category">
                <div class="production_category_button production_category_active">全部(<span>300</span>)</div>
                <div class="production_category_button prdction">作品(<span>20</span>)</div>
                <div class="production_category_button">文章(<span>0</span>)</div>
            </div>
            <!--列表 -->
            <div class="index_list">
                <ul>
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                </ul>
            </div>
            <!--列表 -->

        </div>
    </div>
    <div class="production_list">
        <div class="wrap">
            <div class="production_category">
                <div class="production_category_button production_category_active">全部(<span>300</span>)</div>
                <div class="production_category_button prdction">作品(<span>20</span>)</div>
                <div class="production_category_button">文章(<span>0</span>)</div>
            </div>
            <!--列表 -->
            <div class="index_list">
                <ul>



                    <!--单元模块start-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <!--单元模块end-->
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>
                    <li>
                        <a href="personal_production.html">
                            <span class="index_pic"><img src="/static/image/add/06.jpg" /></span>
                        </a>
				  <span class="index_title">
				    <a href="#">仓惶之狗/最近一有时间就画些...</a>
				  </span>
                        <div class="index_type">
                            <div class="production_mark">好文转载</div>
                            <span class="production_type">插画</span>
                        </div>
				  <span class="index_data">
				    <i>2390</i> 人气 / <i>4</i> 评论 / <i>10</i>推荐
				  </span>
                        <div class="edit_area">
                            <span class="edit_icon"></span>
                            <span>编辑</span>
                            <span class="del_button"></span>
                        </div>
                    </li>




                </ul>
            </div>
            <!--列表 -->

        </div>
    </div>
</div>
<!--首页推荐 -->

<script>
    $(document).ready(function(){
        $(".shuru").click(function(){
            $(".search_chose").toggle(200);
        });
    });
</script>
<script src="/static/js/personal_production.js"></script>
</@html>