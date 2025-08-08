
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charsset="UTF-8">
    <title>Search Medicine</title>
    <style>
        
    </style>

    <script>
        function liveSearch() {
            const input = document.getElementById("medName").value;

            if (input.length === 0) {
                document.getElementById("result").innerHTML = "";
                return;
            }

            const xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    document.getElementById("result").innerHTML = this.responseText;
                }
            };
            xhttp.open("GET", "searchMedicineLive?query=" + encodeURIComponent(input), true);
            xhttp.send();
        }
    </script>
</head>
<body>
    <h2>🔍 Search Medicine</h2>

    <input type="text" id="medName" onkeyup="liveSearch()" placeholder="Enter medicine name" />

    <div id="result"></div>
</body>
</html>
 