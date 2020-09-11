<#macro layout img,title,subtitle>
<#-- Page Cover template -->
    <header id="welcome">
        <!-- TODO: 封面大图 -->
        <div class="cover">
            <img src="${(img?? && img != "")?string(img, settings.default_pic)}" alt="">
        </div>
        <div class="title container">
            <#if title?? && title != "">
                <h1>${title!}</h1>
            </#if>
            <#if subtitle?? && subtitle != "">
            <h3>${subtitle!}</h3>
            </#if>

            <#nested >
        </div>
        <div id="down">
            <span class="iconfont">&#xe65a;</span>
        </div>
    </header>
</#macro>
