<#macro layout title>
    <!doctype html>
    <html lang="zh-cn">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${title!}</title>

        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <meta name="format-detection" content="telephone=no" />
        <meta name="renderer" content="webkit">
        <meta name="author" content="${user.nickname!}" />
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link rel="stylesheet" href="${theme_base!}/assets/css/font.css">
        <link rel="stylesheet" href="${theme_base!}/assets/css/index.css">

        <@global.head />
    </head>
    <body>
    <#nested >
    <@global.statistics />

    </body>
    </html>
</#macro>
