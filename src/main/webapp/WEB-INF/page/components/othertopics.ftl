<#macro othertopics>
<p class="author_last_title">最近发布</p>
    <#list otherTopics as topic>
    <div class="author_last_public">
        <div class="last_public_figure">
            <img class="last_public_image" src="${topic.cover_uri!}">
            <div class="last_public_name"><a href="/t/${topic.id!}">${topic.title!}</a></div>
        </div>
    </div>
    </#list>
</#macro>