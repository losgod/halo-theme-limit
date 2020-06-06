<#include "module/macro.ftl">
<@layout title="${blog_title!}">
<div class="main">
    <#if is_index??>
        <h1 style="font-weight: bolder">Hello World 0</h1>
    </#if>
    <pre style="font-family: 'CodeFont'; font-size: large">
        <code style="font-family: 'CodeFont'; font-size: large; font-weight: bolder;">console.log(1234567890);</code>
    </pre>
    <div>测试模板文件</div>
    <h2>测试文件能否正常加载</h2>
</div>
</@layout>
