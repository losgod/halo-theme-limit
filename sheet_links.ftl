<#-- Custom Links -->
<#include "module/macro.ftl">

<@layout title="${sheet.title!}-${blog_title!}">

<#-- Top Menu -->
    <#include "module/menu.ftl">

<#-- Page Cover -->
    <#import "module/cover.ftl" as cover>
    <@cover.layout img="${sheet.thumbnail!}" title="${sheet.title}" subtitle="" />

    <main>
        <section id="links" class="container">
            <ul class="team">
                <@linkTag method="listTeams">
                    <#list teams as team>
                        <li>
                            <#if team.team?? && team.team!="">
                                <h3 class="teamTitle">${team.team}</h3>
                            </#if>
                            <ul class="links">
                                <#list team.links?sort_by('priority')?reverse  as link>
                                    <li>
                                        <a href="${link.url!}">
                                            <div class="logo">
                                                <#if link.logo?? && link.logo != "">
                                                    <img src="${link.logo}" alt="${link.name!}">
                                                <#else >
                                                    <img src="${settings.default_avatar}" alt="${link.name!}">
                                                </#if>
                                            </div>
                                            <div class="content">
                                                <span class="name">${link.name!}</span>
                                                <span class="desc">${(link.description?? && link.description != "")?string(link.description,"暂无描述")}</span>
                                            </div>
                                        </a>
                                    </li>
                                </#list>
                            </ul>
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
