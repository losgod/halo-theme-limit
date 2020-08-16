<#-- Page Menu template -->
<header id="menu">
    <div class="container">
        <!-- TODO: 网站 Logo -->
        <div class="logo">
            <h2 onclick="to('/')">${settings.logo!blog_title}</h2>
            <span class="iconfont more">&#xe8af;</span>
        </div>

        <!-- TODO: 遍历 页面菜单 -->
        <ul id="pageMenu">
            <@menuTag method="list">
                <#list menus as menu>
                    <li><a href="${menu.url!}" target="${menu.target!}">${menu.name!}</a></li>
                </#list>
            </@menuTag>
            <form method="get" class="search" action="/search">
                <label>
                    <button type="submit" class="iconfont">&#xe8b9;</button>
                    <input type="text" name="keyword" placeholder="Search"/>
                </label>
            </form>
        </ul>
    </div>
</header>
