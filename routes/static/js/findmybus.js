
var fmb = (function(){
    var _fmb = {};
    _fmb.api = "/api/";
    _fmb.getRoutes = function(from, to, callback) {
        var _end = "search/";
        from = from.trim();
        to = to.trim();
        if (from === '' || to === '') 
            return false;
        var xhr;
        if (window.XMLHttpRequest) { // Mozilla, Safari...
            xhr = new XMLHttpRequest(); 
        } else if (window.ActiveXObject) { // <= IE8
            try {
                xhr = new ActiveXObject('Msxml2.XMLHTTP');
            } catch (e) {
                try {
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                } catch (e) { }
            }
        }
        if (!xhr) {
            console.log('Could not construct the XHR object.');
            return false;
        }
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    var routes = JSON.parse(xhr.responseText).objects;
                    callback(routes);
                } else {
                    console.log("Response code from the server was " + xhr.status);
                }
            } 
        };
        xhr.open('GET', this.api + _end + "?from=" + encodeURIComponent(from) + 
                        "&to=" + encodeURIComponent(to) + "&format=json");
        xhr.send(null);
    };
    return _fmb;
})();

