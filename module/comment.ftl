<#macro comment target,type>
    <#if !target.disallowComment!false>
        <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/npm/halo-comment-normal@1.1.1/dist/halo-comment.min.js'}"></script>
        <script>
            const configs = {
                autoLoad: true,
                showUserAgent: true,
            };
        </script>
        <hr class="container">
        <section id="comment" class="container">
            <halo-comment id="${target.id?c}" type="${type}" :configs="configs"/>
        </section>
    </#if>
</#macro>
