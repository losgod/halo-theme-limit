<#-- Index Page Post List Style -->
<div class="container">
    <#if posts?? && posts.getTotalElements() gt 0>
        <#list posts.content as post>
            <article class="new-post-list" onclick="to('${post.fullPath!}');">
                <div class="background">
                    <img src="${(post.thumbnail?? && post.thumbnail != "")?string(post.thumbnail, settings.default_pic)}"
                         alt=""/>
                </div>
                <div class="content">

                    <div class="post-head">
                        <h2>${post.title!}
                            <#if post.topPriority gt 0>
                                <span class="top-post iconfont">&#xe8c9;</span>
                            </#if>
                        </h2>
                    </div>
                    <#-- Post Tags list. -->
                    <#if post.tags?? && post.tags?size gt 0>
                        <div class="post-tag">
                            <#list post.tags as tag>
                                <a href="${tag.fullPath!}">#${tag.name!}</a>&nbsp;
                            </#list>
                        </div>
                    </#if>
                    <p>${post.summary!}</p>
                    <div class="post-foot">
                        <span class="iconfont">&#xe8b4;</span> <span>${post.createTime?string("yyyy-MM-dd")}</span>
                        <span class="iconfont">&#xe8bf;</span> <span>${post.visits!}</span>
                        <span class="iconfont">&#xe8ba;</span> <span>${post.commentCount}</span>
                    </div>
                </div>
            </article>
        </#list>
    </#if>
</div>
