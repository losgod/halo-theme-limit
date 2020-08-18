<#macro layout img,title,subtitle>
<#-- Page Cover template -->
    <header id="welcome">
        <!-- TODO: 封面大图 -->
        <div class="cover">
            <img src="${(img?? && img != "")?string(img, settings.default_pic)}" alt="">
        </div>
        <div class="title">
            <h1>${title!}</h1>
            <h2>${subtitle!}</h2>
            <#nested >
        </div>
    </header>
</#macro>
