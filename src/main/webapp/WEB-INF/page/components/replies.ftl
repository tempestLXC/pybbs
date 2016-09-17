<#macro replies replies>
    <#list replies as reply>
    <!--评论单元模块start-->
    <div class="comment_detail">
        <!--主评论-->
        <div class="comment_main">
            <a href="/user/${reply.author}"><img class="main_header"
                                                 src="${reply.getAvatarByNickname(reply.author)}"></a>
            <div class="main_comment_text">
                <div class="mian_comment_oporate">
                    <#if userinfo??>
                        <@py.hasPermission name="reply:delete" id="${userinfo.id!}">
                            <span class="report_comment"><a
                                    href="javascript:if(confirm('确定要删除吗？'))location.href='/r/delete?id=${reply.id!}'">删除</a></span>
                        </@py.hasPermission>
                        <!--<span class="apply_comment"><a href="javascript:replythis('${reply.author}');">回复</a></span>-->
                    </#if>
                </div>

                <p class="main_comment_date">
                    <span class="comment_main_name"><a href="/user/${reply.author!}">${reply.author!} </a></span>
                    <span class="comment_date">${reply.formatDate(reply.in_time)}</span>
                </p>
                <p class="main_comment_content">
                ${reply.marked(reply.content)}
                </p>
            </div>

        </div>
        <!--对评论做评论区域-->
        <div class="comment_second_textarea">
            <textarea name="" rows="" cols=""></textarea>
            <div class="comment_second_oporate">
                <div class="emoj_image"></div>
                <div class="sure_button">确认</div>
                <div class="cancel_button">取消</div>
            </div>
        </div>
    </div>
    <!--评论单元模块end-->
    <#--<#if reply_has_next>-->
    <#--<div class="divide mar-top-5"></div>-->
    <#--</#if>-->
    </#list>
</#macro>