(function () {
    "use strict";

    WinJS.UI.Pages.define("/pages/home/home.html", {
        // This function is called whenever a user navigates to this page. It
        // populates the page elements with the app's data.
        ready: function (element, options) {
            // TODO: Initialize the page here.
        }
    });

})();
var itemArray = [
        { title: "Java", text: "", picture: "../image/java.jpg" },
        { title: "C", text: "", picture: "../image/C.png" },
        { title: "C++", text: "", picture: "../image/cpp.png" },
        { title: "Python", text: "", picture: "../image/Python.png" },
        { title: "C#", text: "", picture: "../image/csharp.png" },
        { title: "R", text: "", picture: "../image/R.png" },
        { title: "PHP", text: "", picture: "../image/php.jpg" },
        { title: "JavaScript", text: "", picture: "../image/Javascript.png" },
        { title: "Ruby", text: "", picture: "../image/ruby.png" },
        { title: "Matlab", text: "", picture: "../image/Matlab.png" },
];

var items = [];

// Generate 160 items
for (var i = 0; i <= 0; i++) {
    itemArray.forEach(function (item) {
        items.push(item);
    });
}


WinJS.Namespace.define("Sample.ListView", {
    data: new WinJS.Binding.List(items)
});
WinJS.UI.processAll();
function solverProblem(eventInfo) {
    window.location.href = "www.google.com";
}