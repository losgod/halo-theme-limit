<#include "module/macro.ftl">
<#-- 只包含 Menu 的模板 -->
<@layout title="404 - ${blog_title!}">
<#-- Top Menu -->
    <#include "module/menu.ftl">

    <#import "module/cover.ftl" as cover>
    <@cover.layout img="" title="404 Page Not Found!" subtitle=""/>
    <div class="opacity"></div>
<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
