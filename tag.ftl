<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="${tag.name!''}-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.tag_cover!}" title="标签「${tag.name!''}」" subtitle="" />

    <main>
        <section id="articles">
            <#-- 文章列表 -->
            <#include "module/list-style.ftl">
        </section>
        <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
            <#include "module/pagination.ftl">
        </@paginationTag>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
