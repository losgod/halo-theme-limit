<#import "module/cover.ftl" as cover>

<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="${post.title}-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <@cover.layout img="${post.thumbnail!}" title="${post.title}" subtitle="">
        <div class="tags">
            <#if post.tags?? && post.tags?size gt 0>
                <#list post.tags as tag>
                    <a href="${tag.fullPath!}">#${tag.name!}</a>&nbsp;
                </#list>
            </#if>
        </div>
        <div class="post-foot">
            <div><span class="iconfont">&#xe8b4;</span> <span>${post.createTime?string("yyyy-MM-dd")}</span></div>
            <div><span class="iconfont">&#xe8bf;</span> <span>${post.visits!}</span></div>
            <div><span class="iconfont">&#xe8ba;</span> <span>${post.commentCount}</span></div>
        </div>
    </@cover.layout>

    <main>
        <section id="write" class="container markdown">
            ${post.formatContent}
        </section>
        <hr class="container">
        <section id="post-copyright" class="markdown container">
            <blockquote>
                <p>COPYRIGHT: 采用 <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">知识共享署名4.0</a> 国际许可协议进行许可</p>
                <p>LINKS: <a href="${post.fullPath}">${post.fullPath}</a></p>
            </blockquote>
        </section>
        <hr class="container">
        <section id="post-pagination" class="container">
            <#-- Pagination -->
            <div class="prev-post">
                <#if prevPost??>
                    <a href="${prevPost.fullPath!}">
                        <span class="iconfont">&#xe659;</span>
                        <span>${prevPost.title!}</span>
                    </a>
                </#if>
            </div>
            <div class="next-post">
                <#if nextPost??>
                    <a href="${nextPost.fullPath!}">
                        <span>${nextPost.title!}</span>
                        <span class="iconfont">&#xe65b;</span>
                    </a>
                </#if>
            </div>
        </section>

        <#include "module/comment.ftl">
        <@comment post,"post" />
    </main>


<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
