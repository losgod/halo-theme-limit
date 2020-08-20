<#include "module/macro.ftl">
<#-- Post Page Template -->
<@layout title="日志-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${settings.journals_cover!}" title="日志" subtitle="" />

    <main>
        <section id="journals" class="container">
            <ul>
                <#list journals.content as journal>
                    <li>
                        <div class="journal-head">
                            <h4>${journal.createTime?string('yyyy.MM.dd hh:mm:ss')}</h4>
                            <span>${journal.id!}楼</span>
                        </div>
                        <hr>
                        <p>${journal.content!}</p>
                    </li>
<#--                    <hr>-->
                </#list>
            </ul>
        </section>
        <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="3">
            <#include "module/pagination.ftl">
        </@paginationTag>

    </main>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
