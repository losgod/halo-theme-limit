
<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="归档-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.category_cover!}" title="文章归档" subtitle="" />

    <main>
        <section class="container">
            <@categoryTag method="list">
                <#if categories?? && categories?size gt 0>
                    <#list categories as category>
                        <a href="${category.fullPath}/" class="ah-hf ah-hv">
                            <span class="ah-dt ct-f-size op-10">${category.name}</span>
                            <span class="ah-tt h-6 op-06">${category.description}</span>
                        </a>
                    </#list>
                </#if>
            </@categoryTag>
        </section>
    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
