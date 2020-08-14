<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="分类-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.category_cover!}" title="文章分类" subtitle="" />

    <main>
        <section id="articles">
            <#-- 文章列表 -->
            <#include "module/list-style.ftl">
        </section>
        <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
            <#include "module/pagination.ftl">
        </@paginationTag>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
