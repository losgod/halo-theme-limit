<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="${category.name!}-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${category.thumbnail!settings.category_cover}" title="${category.name!}" subtitle="${category.description!}" />

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
