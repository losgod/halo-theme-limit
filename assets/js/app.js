/**
 * Index Page JavaScript
 */

/* ================= 加载到 script 时执行 ================== */

// Menu Active Controller
function highlightMenu() {
    const menus = document.querySelector('ul#pageMenu').querySelectorAll('a');
    let last = 0;
    menus.forEach((item, index) => {
        if (window.location.href.search(item.href) !== -1) {
            last = index;
        }
    });
    menus[last].classList.add('is-active');
}

// Mobile Menu Style Controller
document.querySelector('span.more').onclick = function () {
    const menu = document.querySelector('ul#pageMenu');
    menu.classList.contains('show') ? menu.classList.remove('show') : menu.classList.add('show');
};

// Page Menu Search Button Controller
function searchController() {
    const search = document.querySelector('form#search');

    document.querySelector('a#searchBtn').onclick = function () {
        const mobileMenu = document.querySelector('ul#pageMenu');
        if (mobileMenu.classList.contains('show')) {
            mobileMenu.classList.remove('show');
        }
        search.classList.remove('hidden');
        search.querySelector('input').focus();
    };
    search.querySelector('div.mask').addEventListener('click', function () {
        search.classList.add('hidden');
    });
}

// Pre Code Add Copy Function
function codeCopy() {
    document.querySelectorAll('pre > code').forEach(item => {
        item.onclick = function () {
            try {
                const range = document.createRange();
                range.selectNode(item);
                window.getSelection().removeAllRanges();
                window.getSelection().addRange(range);
                document.execCommand('copy');
                window.getSelection().removeAllRanges();

                Notice.message('复制成功', 'success');
            } catch (e) {
                Notice.message('复制失败，请手动复制','warn');
            }
        };
    });
}

/* ================= 页面动画 ================== */

// 页面封面 视差效果
function coverPin() {
    const section = document.querySelector('#welcome');
    const cover = section.querySelector('.cover');

    new ScrollMagic.Scene({
        duration: '100%',
        triggerElement: cover,
        triggerHook: 'onLeave',
    })
        // .addIndicators({ name: 'cover' })
        .setPin(cover, {pushFollowers: false})
        .addTo(controller);
}

// 页面 Title 淡出动画
function titleScroll() {
    const section = document.querySelector('#welcome');
    const title = section.querySelector('.title');

    new ScrollMagic.Scene({
        duration: '20%',
        triggerElement: title,
        triggerHook: 'onLeave',
        offset: '-200%',
    })
        // .addIndicators({ name: 'title' })
        .setTween(TweenMax.fromTo(title, 0.2, {opacity: 1}, {opacity: 0}))
        .addTo(controller);
}

// 页面 main 主体进入
function mainScroll() {
    const main = document.querySelector('main');
    new ScrollMagic.Scene({
        duration: 200,
        triggerElement: main,
        triggerHook: 'onEnter',
    })
        // .addIndicators()
        .setTween(TweenMax.fromTo(main, 0.2, {opacity: 0}, {opacity: 1}))
        .addTo(controller);
}

// 文章列表 淡入动画
function postListScroll() {
    document.querySelector('#articles').querySelectorAll('article')
        .forEach((item, index) => {
            new ScrollMagic.Scene({
                duration: 300,
                triggerElement: item,
                triggerHook: 'onEnter',
            })
                // .addIndicators({ name: `post: ${index}` })
                .setTween(TweenMax.fromTo(item, 0.3, {opacity: 0, y: '30px'}, {opacity: 1, y: 0}))
                .addTo(controller);
        });
}

// 获取自定义文本信息
function getCustomContent(url) {
    fetch(url, {method: 'GET', mode: 'cors'})
        .then(res => res.text())
        .then(res => {
            document.querySelector('div#customInfo').innerHTML = marked(res);
            hljs.initHighlighting();
            codeCopy();
        })
        .catch(err => {
            document.querySelector('section#info').style.display = 'none';
            console.error('自定义文本信息请求失败');
            console.error(err);
        });
}

// 页面跳转
function to(url) {
    if (url === '') {
        return;
    }
    window.location.href = url;
}

// 显示建站时间
function showRunningTime(time) {
    const running = document.querySelector('span#running');

    const BirthDay = new Date(time), today = new Date();
    let timeOld = (today.getTime() - BirthDay.getTime()),
        daysOld = timeOld / (24 * 60 * 60 * 1000);

    running.innerText = Math.floor(daysOld) + "天";
}

/* ================= 页面加载成功后执行 ================== */
window.addEventListener('load', () => {
    if (document.querySelector('header#welcome') !== null) {
        coverPin();
        titleScroll();
    }

    searchController();
    mainScroll();

    codeCopy();
    highlightMenu();
});
