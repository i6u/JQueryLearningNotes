<%--
  Created by IntelliJ IDEA.
  User: zhouweitao
  Date: 16/8/16
  Time: 下午10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello Ajax</title>
    <script>
        function ajaxDemo() {
            var xhr = new XMLHttpRequest();
            xhr.open('get', 'ajax.html', true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.getElementById('getData').innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        window.onload = function () {
            document.getElementById('date').innerHTML = new Date().getSeconds() + '';
            document.getElementById('btn1').addEventListener('click', ajaxDemo);
        }
    </script>
</head>
<body>
<div style="text-align: center;width: auto;margin:60px 300px;">
    <div style="text-align: center;" id="date"><br/>
    </div>
    <div id="getData" style="padding: 20px 0;border: 2px double #ffe083;height:auto;border-radius:15px;font-family: 'Abadi MT Condensed Light';font-size: 30px;">

    </div><br/>
    <input type="button" id="btn1" value="Ajax commit"/>
    <input type="button" value="The refresh" onclick="javascript: location.reload(false);"/>
</div>
</body>
</html>
