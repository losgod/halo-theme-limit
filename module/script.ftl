<#-- Page Script -->
<script src="${theme_base!}/assets/dist/app.min.js"></script>

<script>
    const controller = new ScrollMagic.Controller();

    <#if is_index?? && settings.custom_info??>
    getCustomContent('${settings.custom_info}');
    </#if>
    window.addEventListener('load', () => {
        <#if is_index?? || is_category?? || is_tag?? || is_search??>
        postListScroll();
        </#if>
    });
    <#if is_post?? || is_sheet??>
    hljs.initHighlightingOnLoad();
    </#if>
    <#if settings.TimeStatistics??>
    showRunningTime('${settings.TimeStatistics}');
    </#if>
</script>

<script>
    /* Custom Script */
    window.addEventListener('load', () => {
        // console.clear();
    });
</script>
