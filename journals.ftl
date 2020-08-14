<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="日志-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.journals_cover!}" title="日志" subtitle="" />

    <main>
        <section class="container">
        </section>
        <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="3">
            <#include "module/pagination.ftl">
        </@paginationTag>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
