<#-- Custom Links -->
<#include "module/macro.ftl">

<@layout title="${sheet.title!} - ${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${sheet.thumbnail!}" title="${sheet.title}" subtitle="" />

    <main>
        <section id="links" class="container">
            <ul>
                <@linkTag method="list">
                    <#list links?sort_by('createTime') as link>
                        <li>
                            <a href="${link.url!}">${link.name!}</a>
                            <span>-${link.logo!}-</span>
                        </li>
                    </#list>
                </@linkTag>
            </ul>
        </section>

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
