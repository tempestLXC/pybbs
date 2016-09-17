<#macro info>
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
    ${exAuthorinfo.introduce_title}
    </p>
</div>
</#macro>