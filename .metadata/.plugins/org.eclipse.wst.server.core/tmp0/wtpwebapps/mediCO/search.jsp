<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Medicine</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fa;
            padding: 30px;
        }

        h2 {
            color: #2a9d8f;
        }

        form {
            margin-bottom: 20px;
        }

        input[type="text"] {
            padding: 10px;
            width: 300px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            padding: 10px 15px;
            border: none;
            background: #2a9d8f;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background: #2a9d8f;
            color: white;
        }

        .not-found {
            color: red;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>🔍 Search Medicine</h2>

    <form action="searchMedicine" method="post">
        <input type="text" name="medName" placeholder="Enter medicine name" required />
        <input type="submit" value="Search" />
    </form>

    
</body>
</html>
 --%>
 
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Medicine</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fa;
            padding: 30px;
        }

        h2 {
            color: #2a9d8f;
        }

        input[type="text"] {
            padding: 10px;
            width: 300px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background: #2a9d8f;
            color: white;
        }

        .not-found {
            color: red;
            margin-top: 20px;
        }
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
 