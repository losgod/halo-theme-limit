<#-- Index Page Post List Style -->
<div class="container">
    <#if posts?? && posts.getTotalElements() gt 0>
        <#list posts.content as post>
            <article onclick="to('${post.fullPath!}');">
                <div class="post-head">
                    <h2>${post.title!}</h2>
                    <#if post.topPriority gt 0>
                        <div class="top-post iconfont">&#xe8c9;</div>
                    </#if>
                </div>
                <#-- Post Thumbnail -->
                <img src="${(post.thumbnail?? && post.thumbnail != "")?string(post.thumbnail, settings.default_pic)}"
                     alt=""/>
                <#-- Post Tags list. -->
                <#if post.tags?? && post.tags?size gt 0>
                    <div class="post-tag">
                        <#list post.tags as tag>
                            <a href="${tag.fullPath!}">#${tag.name!}</a>&nbsp;
                        </#list>
                    </div>
                </#if>
                <p>${post.summary!}</p>
                <hr>
                <div class="post-foot">
                    <span class="iconfont">&#xe8b4;</span> <span>${post.createTime?string("yyyy-MM-dd")}</span>
                    <span class="iconfont">&#xe8bf;</span> <span>${post.visits!}</span>
                    <span class="iconfont">&#xe8ba;</span> <span>${post.commentCount}</span>
                </div>
            </article>
        </#list>
    </#if>
</div>
