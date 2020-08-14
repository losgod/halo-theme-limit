
<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${sheet.thumbnail!}" title="${sheet.title}" subtitle="" />

    <main>
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
