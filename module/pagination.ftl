<#-- Do Not Show If Less Than 1 Page. -->
<#if pagination.rainbowPages?size gt 1>
    <hr class="container">
    <ul id="pagination" class="container">

        <li class="prev ${pagination.hasPrev?string('', 'invisible')}">
            <a class="circle" href="${pagination.prevPageFullPath!}">
                <span class="iconfont">&#xe659;</span>
            </a>
        </li>
        <#list pagination.rainbowPages as number>
            <li>
                <a class="circle ${number.isCurrent?string('current', '')}"
                   href="${number.fullPath!}">${number.page!}</a>
            </li>
        </#list>
        <li class="next ${pagination.hasNext?string('', 'invisible')}">
            <a class="circle" href="${pagination.nextPageFullPath!}">
                <span class="iconfont">&#xe65b;</span>
            </a>
        </li>
    </ul>
</#if>
