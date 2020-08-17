<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="归档-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.category_cover!}" title="分类列表" subtitle="" />

    <main>
        <section id="archives" class="container markdown">
            <@categoryTag method="list">
                <#if categories?? && categories?size gt 0>
                    <ul>
                        <#list categories as category>
                            <li>
                                <a href="${category.fullPath}/">
                                    <span>${category.name}</span>
                                </a>
                                <span>${category.description}</span>
                            </li>
                        </#list>
                    </ul>
                </#if>
            </@categoryTag>
        </section>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
