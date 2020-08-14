<#include "module/macro.ftl">
<#-- 只包含 Menu 的模板 -->
<@layout title="${blog_title!}">
    <#-- Top Menu -->
    <#include "module/menu.ftl">

    <main class="distance-top">
        <section id="write" class="container markdown">
            ${sheet.formatContent}
        </section>
        <#include "module/comment.ftl">
        <@comment sheet,"sheet" />
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
