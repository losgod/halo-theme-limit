
<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="归档-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.archives_cover!}" title="文章归档" subtitle="" />

    <main>
        <section id="archives" class="container markdown">
            <@postTag method="archiveMonth">
                <#list archives as archive>
                    <h4>${archive.year?c}-${archive.month?c}</h4>
                    <ul>
                        <#list archive.posts?sort_by("createTime")?reverse as post>
                            <li>
                                <span>${post.createTime?string("MM.dd")}</span>
                                <a href="${post.fullPath!}">${post.title!}</a>
                            </li>
                        </#list>
                    </ul>
                </#list>
            </@postTag>
        </section>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
