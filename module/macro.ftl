<#-- Page Macro -->
<#macro layout title>
    <!DOCTYPE html>
    <html lang="zh-cn">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${title!}</title>

        <meta name="keywords" content="${meta_keywords}"/>
        <meta name="description" content="${meta_description}">

        <!-- Loading Style -->
        <link rel="stylesheet" href="${theme_base!}/assets/dist/index.css"/>

        <#-- Code Style -->
        <link rel="stylesheet"
              href="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@10.1.2/build/styles/solarized-light.min.css">
        <script src="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@10.1.2/build/highlight.min.js" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/highlightjs-line-numbers.js@2.8.0/dist/highlightjs-line-numbers.min.js" crossorigin="anonymous"></script>

        <!-- Loading JavaScript Library -->
        <script src="//cdn.jsdelivr.net/npm/lodash@4.17.15/lodash.min.js" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/marked@1.1.1/marked.min.js" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/gsap@2.1.3/umd/TweenMax.min.js" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/scrollmagic@2.0.7/scrollmagic/minified/ScrollMagic.min.js" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/scrollmagic@2.0.7/scrollmagic/minified/plugins/animation.gsap.min.js" crossorigin="anonymous"></script>

        <@global.head />
    </head>
    <body>

    <#-- Page Main Content -->
    <#nested >

    </body>
    </html>
</#macro>
