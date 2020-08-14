<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="查询-${keyword!}-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.search_cover!}" title="查询「${keyword!''}」结果" subtitle="" />

    <main>
        <#if posts?? && posts.content?size gt 0>
            <section id="articles">
                <#include "module/list-style.ftl">
            </section>
            <#if posts.totalPages gt 1>
                <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3" keyword="${keyword}">
                    <#include "module/pagination.ftl">
                </@paginationTag>
            </#if>
        <#else >
            <div class="container markdown">
                <h3>未查询到信息</h3>
            </div>
        </#if>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
