// pace.js should be active

if (typeof Pace != "undefined") {
    var soapPageLoadingContent = false;
    //document.write('<img alt="" src="images/logo2.png" style="display: none;">');
    var logoImg = new Image();
    logoImg.src = "images/logo2.png";
    var soapPageLoadingProgressInterval = setInterval(function () {
        try {
            if (document.body.className.indexOf("pace-done") != -1) {
                clearInterval(soapPageLoadingProgressInterval);
            }
            if (document.body.className.indexOf("pace-running") == -1) {
                return;
            }
            if (!soapPageLoadingContent) {
                document.getElementsByClassName("pace-activity")[0].innerHTML =
                    '<div class="loading-page style1">' +
                    '<div class="loading-page-wrapper">' +
                    '<div class="container">' +
                    '<h1 class="logo block">' +
                    '<a title="Travelo" href="#">' +
                    '<img style="height:70px; width=auto;" alt="" src="../images/logo/logo.png">' +
                    "</a>" +
                    "</h1>" +
                    '<span class="loading-text">Loading...</span>' +
                    "</div>" +
                    "</div>" +
                    "</div>";
                soapPageLoadingContent = true;
            }

            var percent = document
                .getElementsByClassName("pace-progress")[0]
                .getAttribute("data-progress-text");
            document.getElementsByClassName("loading-progress")[0].style.width =
                percent;
        } catch (e) {}
    }, 50);
}
