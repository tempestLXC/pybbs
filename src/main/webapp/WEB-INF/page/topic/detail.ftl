<#include "../common/layout.ftl">
<@html page_title="${topic.title}">
<link href="/static/css/information_detial.css" rel="stylesheet" type="text/css" xmlns="http://www.w3.org/1999/html"/>
<!--内容区域-->
<div class="content">
    <!--做不内容区域-->
    <div class="content_detail_left">
        <!--文章头部区域-->
        <div class="title_area">
            <div class="title_text">
                <p class="title_name">${topic.title!}</p>
                <p class="public_date">${topic.formatDate(topic.in_time)}</p>
                <p class="article_copyright">版权：<span><a href="/?tab=${section.tab!}">${section.name!}</a>发布 如需商业用途，请与<a
                        href="/?tab=${section.tab!}">${section.name!}</a>联系，谢谢</span> <a href="">举报</a></p>
                </br>
                <#if userinfo??>
                    <p class="article_copyright">
                    <#--<#if userinfo.id == authorinfo.id>-->
                    <#--<span>•</span>-->
                    <#--<span><a href="/t/append/${topic.id}">内容追加</a></span>-->
                    <#--</#if>-->
                        <@py.hasPermission name="topic:edit" id="${userinfo.id!}">
                            <span>•</span>
                            <span><a href="/t/edit?id=${topic.id}">编辑</a></span>
                        </@py.hasPermission>
                        <@py.hasPermission name="topic:delete" id="${userinfo.id!}">
                            <span>•</span>
                            <span><a
                                    href="javascript:if(confirm('确定要删除吗？'))location.href='/t/delete?id=${topic.id}'">删除</a></span>
                        </@py.hasPermission>
                        <@py.hasPermission name="topic:top" id="${userinfo.id!}">
                            <span>•</span>
                            <span><a
                                    href="javascript:if(confirm('确定要${topic._top!}吗？'))location.href='/t/top?id=${topic.id}'">${topic._top!}</a></span>
                        </@py.hasPermission>
                        <@py.hasPermission name="topic:good" id="${userinfo.id!}">
                            <span>•</span>
                            <span><a
                                    href="javascript:if(confirm('确定要${topic._good!}吗？'))location.href='/t/good?id=${topic.id}'">${topic._good!}</a></span>
                        </@py.hasPermission>
                    </p>
                </#if>
            </div>
            <div class="article_hot">
                <p class="hot_name">人气</p>
                <p class="hot_data"><span>${topic.view!1}</span> <sup>o</sup></p>
            </div>
        </div>
        <!--文章文本区域-->
        <div class="information_content_area">
            <#if topic.content?? && topic.content != "">
                <div class="divide"></div>
                <div class="panel-body topic-detail-content">
                ${topic.markedNotAt(topic.content)}
                </div>
            </#if>
        </div>
        <!--文章操作区域-->
        <div class="article_oporate_area">
        <#--<a href="">-->
        <#--<div class="download_button">-->
        <#--<span></span>-->
        <#--下载附件-->
        <#--</div>-->

        <#--</a>-->
            <div class="article_share_icon icon_friends pointer"></div>
            <div class="article_share_icon icon_weibo pointer"></div>
            <div class="article_share_icon icon_qq pointer"></div>
            <div class="article_collection pointer">
                <#if collect??>
                    <a href="/collect/delete?tid=${topic.id!}">取消收藏</a>
                <#else>
                    <span></span><a href="/collect/add?tid=${topic.id!}">加入收藏</a>
                </#if>
            </div>
            <div class="support_article pointer">480</div>


        </div>
        <!--作者一览区-->
        <div class="author_line">
            <a href="/user/${authorinfo.nickname!}">
                <img src="${authorinfo.avatar!}" title="${authorinfo.nickname!}" class="author_header_image"/>
            </a>
            <span class="author_line_name"><a href="/user/${authorinfo.nickname!}">${authorinfo.nickname!}</a></span>
            <div class="focus_author pointer"></div>
            <a href="" class="more_button">查看完整资料></a>
        </div>


        <!--发表评论区域-->
        <#--<div class="comment_public_area">-->
            <#--<div class="panel-body">-->
                <#--<form action="/r/save" method="post" id="replyForm">-->
                    <#--<input type="hidden" value="${topic.id}" name="tid"/>-->

                    <#--<div class="form-group">-->
                    <#--<textarea name="content" id="content" rows="5" class="form-control"></textarea>-->
                    <#--</div>-->
                    <#--<div class="comment_oporate">-->
                    <#--&lt;#&ndash;<div class="emoj_image pointer"></div>&ndash;&gt;-->
                    <#--&lt;#&ndash;<a href="">&ndash;&gt;-->
                    <#--&lt;#&ndash;<div class="upload_production"></div>&ndash;&gt;-->
                    <#--&lt;#&ndash;<span class="upload_text">上传作品</span>&ndash;&gt;-->
                    <#--&lt;#&ndash;</a>&ndash;&gt;-->
                    <#--&lt;#&ndash;<span class="image_name">tupian.png</span>&ndash;&gt;-->
                        <#--<div onclick="replySubmit()" class="public_button pointer">发表</div>-->
                    <#--</div>-->
                <#--</form>-->
            <#--</div>-->
        <#--</div>-->
        <#if userinfo??>
            <div class="panel panel-default">
                <div class="panel-heading">
                    添加一条新回复
                    <a href="javascript:;" id="goTop" class="pull-right">回到顶部</a>
                </div>
                <div class="panel-body">
                    <form action="/r/save" method="post" id="replyForm">
                        <input type="hidden" value="${topic.id}" name="tid"/>

                        <div class="form-group">
                            <textarea name="content" id="content" rows="5"
                                      class="form-control"></textarea>
                        </div>
                        <button type="button" onclick="replySubmit()" class="btn btn-default">回复</button>
                        <span id="error_message"></span>
                    </form>
                </div>
            </div>
        </#if>
        <!--评论展示列表区域-->
        <div class="comment_list_area">
            <p class="comment_list_title">评论（<span class="comment_num">${topic.reply_count!0}</span>）</p>
            <p class="list_title_line1"></p>
            <p class="list_title_line2"></p>
            <div class="clear"></div>
            <div class="comment_list">
                <#include "../components/replies.ftl"/>
                <@replies replies=page.getList()/>

            </div>

        </div>
    </div>
    <!--右部内容区域-->
    <div class="content_detail_right">
        <div class="author_information">
            <div class="author_header_box">
                <img src="${authorinfo.avatar!}" title="${authorinfo.nickname!}" class="author_header"/>
                <div class="author_name_box">
                    <div class="author_name"><a href="/user/${topic.author!}">${topic.author!}</a></div>
                    <div class="comment_button">
                        <span>＋</span>关注
                    </div>
                </div>
            </div>
            <p class="author_intorduce">
                原腾讯ecd视觉设计师：京东高级视觉设计师
            </p>

        </div>
        <p class="author_last_title">最近发布</p>
        <div class="author_last_public">
            <div class="last_public_figure">
                <img class="last_public_image" src="/static/image/add/05.jpg">
                <div class="last_public_name">2016_工作整理</div>
            </div>
        </div>
        <div class="author_last_public">
            <div class="last_public_figure">
                <div class="last_public_image"></div>
                <div class="last_public_name">2016_工作整理</div>
            </div>
        </div>
        <div class="author_last_public">
            <div class="last_public_figure">
                <div class="last_public_image"></div>
                <div class="last_public_name">2016_工作整理</div>
            </div>
        </div>
        <div class="author_last_public">
            <div class="last_public_figure">
                <div class="last_public_image"></div>
                <div class="last_public_name">2016_工作整理</div>
            </div>
        </div>
        <div class="author_last_public">
            <div class="last_public_figure">
                <div class="last_public_image"></div>
                <div class="last_public_name">2016_工作整理</div>
            </div>
        </div>
        <div class="author_last_public">
            <div class="last_public_figure">
                <div class="last_public_image"></div>
                <div class="last_public_name">2016_工作整理</div>
            </div>
        </div>
    </div>
</div>


<!--分页 -->
<div class="pages">
    <#include "../components/paginate.ftl"/>
    <@paginate currentPage=page.getPageNumber() totalPage=page.getTotalPage() actionUrl="/t/${topic.id}"/>
</div>
<!--分页 -->


<!--广告 -->
<div class="ad wrap"><img src="/static/image/add/07.jpg"/></div>
<!--广告 -->

</@html>
<link rel="stylesheet" href="/static/css/jquery.atwho.min.css"/>
<link rel="stylesheet" href="/static/libs/editor/editor.css"/>
<script type="text/javascript" src="/static/js/jquery.atwho.min.js"></script>
<script type="text/javascript" src="/static/js/lodash.min.js"></script>
<script type="text/javascript" src="/static/js/highlight.min.js"></script>
<script type="text/javascript" src="/static/libs/webuploader/webuploader.withoutimage.js"></script>
<script type="text/javascript" src="/static/libs/markdownit.js"></script>
<script type="text/javascript" src="/static/libs/editor/editor.js"></script>
<script type="text/javascript" src="/static/libs/editor/ext.js"></script>
<script>

    $('pre code').each(function(i, block) {
        hljs.highlightBlock(block);
    });

    var editor = new Editor({element: $("#content")[0], status: []});
    editor.render();

    var $input = $(editor.codemirror.display.input);
    $input.keydown(function(event){
        if (event.keyCode === 13 && (event.ctrlKey || event.metaKey)) {
            event.preventDefault();
            if(editor.codemirror.getValue().length == 0) {
                $("#error_message").html("回复内容不能为空");
            } else {
                $("#replyForm").submit();
            }
        }
    });

    // at.js 配置
    var codeMirrorGoLineUp = CodeMirror.commands.goLineUp;
    var codeMirrorGoLineDown = CodeMirror.commands.goLineDown;
    var codeMirrorNewlineAndIndent = CodeMirror.commands.newlineAndIndent;
    var data = [];
    <#list page.getList() as reply>
    data.push('${reply.author}');
    </#list>
    data = _.unique(data);
    $input.atwho({
        at: "@",
        data:data
    }).on('shown.atwho', function () {
                CodeMirror.commands.goLineUp = _.noop;
                CodeMirror.commands.goLineDown = _.noop;
                CodeMirror.commands.newlineAndIndent = _.noop;
            })
            .on('hidden.atwho', function () {
                CodeMirror.commands.goLineUp = codeMirrorGoLineUp;
                CodeMirror.commands.goLineDown = codeMirrorGoLineDown;
                CodeMirror.commands.newlineAndIndent = codeMirrorNewlineAndIndent;
            });
    // END at.js 配置

    function replySubmit() {
        var errors = 0;
        var em = $("#error_message");
        var content = editor.value();
        if(content.length == 0) {
            errors++;
            em.html("回复内容不能为空");
        }
        if(errors == 0) {
            var form = $("#replyForm");
            form.submit();
        }
    }

    $(document).ready(function () {
        $(".shuru").click(function () {
            $(".search_chose").toggle(200);
        });
    });
</script>
<script src="/static/js/information_detail.js"></script>