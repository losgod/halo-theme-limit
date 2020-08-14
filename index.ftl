<#import "module/cover.ftl" as cover>

<#include "module/macro.ftl">
<@layout title="${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <@cover.layout img="${settings.index_cover!}" title="${settings.title!blog_title}" subtitle="${settings.subtitle!}" />

    <main>
        <#if settings.custom_info??>
            <section id="info" class="container">
                <div id="customInfo" class="markdown"></div>
            </section>
            <hr class="container">
        </#if>

        <section id="articles">
            <#-- 文章列表 -->
            <#include "module/list-style.ftl">
        </section>

        <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
            <#include "module/pagination.ftl">
        </@paginationTag>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
