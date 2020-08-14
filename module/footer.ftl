<#-- Page Footer template -->
<footer>
    <#-- User Offsite Links -->
    <div class="offsite-links">
        <#if settings.sina??>
            <a href="${settings.sina!}" class="circle" target="_blank" rel="noopener">
                <#include "icon/weibo.ftl">
            </a>
        </#if>
        <#if settings.qq??>
            <a href="//wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" class="circle" target="_blank"
               rel="noopener" title="QQ Chat">
                <#include "icon/qq.ftl">
            </a>
        </#if>
        <#if settings.github??>
            <a href="${settings.github!}" class="circle" target="_blank" rel="noopener" title="Github">
                <#include "icon/github.ftl">
            </a>
        </#if>
        <#if settings.zhihu??>
            <a href="${settings.zhihu!}" class="circle" target="_blank" rel="noopener" title="知乎">
                <#include "icon/zhihu.ftl">
            </a>
        </#if>
        <#if settings.mail??>
            <a href="mailto:${settings.mail!}" class="circle" target="_blank" rel="noopener" title="邮箱">
                <#include "icon/mail.ftl">
            </a>
        </#if>
        <#if settings.rss!true>
            <a href="${atom_url!}" class="circle" target="_blank" rel="noopener" title="RSS">
                <#include "icon/rss.ftl">
            </a>
        </#if>
    </div>

    <div class="badge">
        <div class="github-badge">
            <a rel="license" href="http://halo.run" target="_blank">
                <span class="badge-subject">Powered</span>
                <span class="badge-value">Halo</span>
            </a>
        </div>
        <div class="github-badge">
            <a rel="license" href="https://baozi.fun/" target="_blank">
                <span class="badge-subject">Based</span>
                <span class="badge-value">Xue</span>
            </a>
        </div>
        <div class="github-badge">
            <a rel="license" href="https://losgod.xin" target="_blank">
                <span class="badge-subject">Designed</span>
                <span class="badge-value">Losgod</span>
            </a>
        </div>
        <#if settings.TimeStatistics??>
            <div class="github-badge">
                <a rel="license" href="javascript:void(0);" target="_blank">
                    <span class="badge-subject">Running</span>
                    <span id="running" class="badge-value"></span>
                </a>
            </div>
        </#if>
    </div>

    <div class="copyright">
        <@global.footer />
        <#if settings.icp??>
            <a href="http://beian.miit.gov.cn" target="_blank">${settings.icp!}</a><br>
        </#if>
        <p>Copyright &copy; ${.now?string('yyyy')}
            <a href="${blog_url!}">${blog_title!}</a>
        </p>
    </div>
</footer>
