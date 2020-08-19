(function (global, factory) {
    "use strict";

    // Copy From Jquery-3.5.1 Adapt CommonJS
    if (typeof module === "object" && typeof module.exports === "object") {

        // For CommonJS and CommonJS-like environments where a proper `window`
        // is present, execute the factory and get jQuery.
        // For environments that do not have a `window` with a `document`
        // (such as Node.js), expose a factory as module.exports.
        // This accentuates the need for the creation of a real `window`.
        // e.g. var jQuery = require("jquery")(window);
        // See ticket #14549 for more info.
        module.exports = global.document ?
            factory(global, true) :
            function (w) {
                if (!w.document) {
                    throw new Error("Message requires a window with a document");
                }
                return factory(w);
            };
    } else {
        factory(global);
    }

// Pass this if window is not defined yet
})(typeof window !== "undefined" ? window : this, function (window, noGlobal) {
    let container;

    // 创建 通知容器
    function createContainer() {
        if (document.querySelector('div.notice') === null) {
            const notice = document.createElement('div');
            notice.classList.add('notice');
            document.body.appendChild(notice);
        }
        container = document.querySelector('div.notice');
    }

    function createMessage() {
        const message = document.createElement('div');
        message.classList.add('message');
        return message;
    }

    function message(content, type = 'default', timeout = 3000) {
        if (!container) {
            createContainer();
        }

        if (type === '' || timeout < 1000) {
            return;
        }

        // Create Message
        const message = createMessage();
        message.innerText = content;
        message.classList.add(type);
        message.classList.add('in');
        container.appendChild(message);

        // Notice Fade Out
        setTimeout(() => {
            message.classList.remove('in');
            message.classList.add('out');
        }, timeout - 300);
        // Delete Notice
        setTimeout(() => {
            container.removeChild(message);
        }, timeout);
    }

    const Notice = {
        message,
    };

    if (typeof noGlobal === "undefined") {
        window.Notice = Notice;
    }
});
