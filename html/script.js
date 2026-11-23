// GTAOutfitters Welcome Kit (FREE) - NUI logic
(function () {
    var resource = (typeof GetParentResourceName === 'function') ? GetParentResourceName() : 'gtaoutfitters-welcome-kit';
    var panel = document.getElementById('panel');
    var links = { discord: '', store: '', website: '' };

    function post(name, data) {
        return fetch('https://' + resource + '/' + name, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json; charset=UTF-8' },
            body: JSON.stringify(data || {})
        }).catch(function () {});
    }

    function openLink(url) {
        if (!url) return;
        if (typeof window.invokeNative === 'function') {
            window.invokeNative('openUrl', url);
        }
    }

    function setBtn(id, url) {
        var el = document.getElementById(id);
        if (url) { el.classList.remove('hidden'); }
        else { el.classList.add('hidden'); }
    }

    window.addEventListener('message', function (event) {
        var d = event.data || {};
        if (d.action !== 'show') return;

        if (d.accent) document.documentElement.style.setProperty('--accent', d.accent);
        document.getElementById('serverName').textContent = d.serverName || 'Welcome';
        document.getElementById('tagline').textContent = d.tagline || '';
        document.getElementById('welcomeText').textContent = d.welcomeText || '';
        document.getElementById('footerText').textContent = d.footerText || '';

        links.discord = d.discordUrl || '';
        links.store = d.storeUrl || '';
        links.website = d.websiteUrl || '';
        setBtn('btnDiscord', links.discord);
        setBtn('btnStore', links.store);
        setBtn('btnWebsite', links.website);

        var list = document.getElementById('rulesList');
        list.innerHTML = '';
        (d.rules || []).forEach(function (rule) {
            var li = document.createElement('li');
            li.textContent = rule;
            list.appendChild(li);
        });

        document.getElementById('homeView').classList.remove('hidden');
        document.getElementById('rulesView').classList.add('hidden');
        panel.classList.remove('hidden');
    });

    document.getElementById('btnDiscord').addEventListener('click', function () { openLink(links.discord); });
    document.getElementById('btnStore').addEventListener('click', function () { openLink(links.store); });
    document.getElementById('btnWebsite').addEventListener('click', function () { openLink(links.website); });

    document.getElementById('btnRules').addEventListener('click', function () {
        document.getElementById('homeView').classList.add('hidden');
        document.getElementById('rulesView').classList.remove('hidden');
    });
    document.getElementById('btnBack').addEventListener('click', function () {
        document.getElementById('rulesView').classList.add('hidden');
        document.getElementById('homeView').classList.remove('hidden');
    });

    document.getElementById('btnClose').addEventListener('click', function () {
        panel.classList.add('hidden');
        post('close');
    });

    document.addEventListener('keydown', function (e) {
        if (e.key === 'Escape' && !panel.classList.contains('hidden')) {
            panel.classList.add('hidden');
            post('close');
        }
    });
})();
