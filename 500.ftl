<#include "module/macro.ftl">
<#-- 只包含 Menu 的模板 -->
<@layout title="500 - ${blog_title!}">
<#-- Top Menu -->
    <#include "module/menu.ftl">

    <#import "module/cover.ftl" as cover>
    <@cover.layout img="" title="500 Page Error!" subtitle="" />
    <div class="opacity"></div>

<#-- Page Footer -->
    <#include "module/footer.ftl">

    <#include "module/script.ftl">
</@layout>
