<#macro topics>
<!--列表 -->
<div class="index_list">
    <ul>
        <#list page.getList() as topic>
            <!--每个但愿模块start-->
            <li>
                <a href="/t/${topic.id!}">
                    <span class="index_pic"><img src="${topic.cover_uri!}"/></span>
                </a>
				  <span class="index_title">
				    <a href="/t/${topic.id!}">${topic.title!}</a>
				  </span>

                <div class="index_type">
                    <div class="production_mark">好文转载</div>
                    <span class="production_type">插画</span>
                </div>
				  <span class="index_data">
				    <i>${topic.view!0}</i> 人气 / <i>${topic.reply_count!0}</i> 评论 / <i>${topic.recommend_count!0}</i>推荐
				  </span>
				  <span class="index_user">
				    <em class="tx"><img src="${topic.getAvatarByNickname(topic.author)}"/> <i>${topic.author!}</i></em>
					<em class="time">${topic.formatDate(topic.in_time)}</em>
				  </span>
            </li>
            <!--每个但愿模块end-->
        </#list>
    </ul>
</div>
<!--列表 -->
</#macro>