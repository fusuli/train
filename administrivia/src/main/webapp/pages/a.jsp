<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>赛马游戏</title>
        <style type="text/css">
            #max {
                width: 800px;
                height: 520px;
                border: 2px solid orange;
                margin: 0px auto;
                position: absolute;
            }
            
            #d1 {
                width: 800px;
                height: 60px;
                background: #55ff55;
            }
            
            #d1a {
                width: 740px;
                height: 60px;
                background: #55ff55;
                float: left;
            }
            
            #d1aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d1b {
                width: 60px;
                height: 60px;
                background: #ddff55;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
            
            #d2 {
                width: 800px;
                height: 60px;
                background: #ff9955;
            }
            
            #d2a {
                width: 740px;
                height: 60px;
                background: #ff9955;
                float: left;
            }
            
            #d2aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d2b {
                width: 60px;
                height: 60px;
                background: #aaaaff;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
            
            #d3 {
                width: 800px;
                height: 60px;
                background: #55ff55;
            }
            
            #d3a {
                width: 740px;
                height: 60px;
                background: #55ff55;
                float: left;
            }
            
            #d3aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d3b {
                width: 60px;
                height: 60px;
                background: #ddff55;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
            
            #d4 {
                width: 800px;
                height: 60px;
                background: #ff9955;
            }
            
            #d4a {
                width: 740px;
                height: 60px;
                background: #ff9955;
                float: left;
            }
            
            #d4aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d4b {
                width: 60px;
                height: 60px;
                background: #aaaaff;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
            
            #d5 {
                width: 800px;
                height: 60px;
                background: #55ff55;
            }
            
            #d5a {
                width: 740px;
                height: 60px;
                background: #55ff55;
                float: left;
            }
            
            #d5aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d5b {
                width: 60px;
                height: 60px;
                background: #ddff55;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
            
            #d6 {
                width: 800px;
                height: 60px;
                background: #ff9955;
            }
            
            #d6a {
                width: 740px;
                height: 60px;
                background: #ff9955;
                float: left;
            }
            
            #d6aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d6b {
                width: 60px;
                height: 60px;
                background: #aaaaff;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
            
            #d7 {
                width: 800px;
                height: 60px;
                background: #55ff55;
            }
            
            #d7a {
                width: 740px;
                height: 60px;
                background: #55ff55;
                float: left;
            }
            
            #d7aa {
                width: 100px;
                height: 60px;
                background: url("../image/ma.gif") no-repeat;
                background-size: 90px;
                position: absolute;
            }
            
            #d7b {
                width: 60px;
                height: 60px;
                background: #ddff55;
                float: left;
                font-size: 20px;
                text-align: center;
                line-height: 60px;
                font-weight: bold;
            }
        </style>
        <script type="text/javascript">
            document.getElementById("db22").innerHTML = max();
            var left = new Array(100, 100, 100, 100, 100, 100, 100);

            function sudu(n, m) {
                var a = new Array();
                for (var i = 0; i < 7; i++) {
                    a[i] = Math.floor(Math.random() * (m - n + 1)) + n;
                }
                return a;
            }

            function max() {
                var b = new Array();
                b = sudu(1, 7);
                var v0 = b[0];
                var ma = 0;
                for (var i = 0; i < b.length; i++) {
                    if (v0 < b[i]) {
                        v0 = b[i];
                        ma = i;
                    }
                }
                return ma;
            }

            function start() {
                var s = new Array();
                s = sudu(1, 7);
                var str = max();
                if (str < 680) {
                    var d1aa = document.getElementById("d1aa");
                    d1aa.style.left = left[0] + 'px';
                    left[0] += s[0];
                    var d2aa = document.getElementById("d2aa");
                    d2aa.style.left = left[1] + 'px';
                    left[1] += s[1];

                    var d3aa = document.getElementById("d3aa");
                    d3aa.style.left = left[2] + 'px';
                    left[2] += s[2];

                    var d4aa = document.getElementById("d4aa");
                    d4aa.style.left = left[3] + 'px';
                    left[3] += s[3];

                    var d5aa = document.getElementById("d5aa");
                    d5aa.style.left = left[4] + 'px';
                    left[4] += s[4];

                    var d6aa = document.getElementById("d6aa");
                    d6aa.style.left = left[5] + 'px';
                    left[5] += s[5];

                    var d7aa = document.getElementById("d7aa");
                    d7aa.style.left = left[6] + 'px';
                    left[6] += s[6];
                }
                clearInterval(starting);
                alert(max() + 1 + '号获胜！');
            }
        </script>
    </head>

    <body>
        <div id="max">
            <div id="d1">
                <div id="d1a">
                    <div id="d1aa"></div>
                </div>
                <div id="d1b">1</div>
            </div>
            <div id="d2">
                <div id="d2a">
                    <div id="d2aa"></div>
                </div>
                <div id="d2b">2</div>
            </div>
            <div id="d3">
                <div id="d3a">
                    <div id="d3aa"></div>
                </div>
                <div id="d3b">3</div>
            </div>
            <div id="d4">
                <div id="d4a">
                    <div id="d4aa"></div>
                </div>
                <div id="d4b">4</div>
            </div>
            <div id="d5">
                <div id="d5a">
                    <div id="d5aa"></div>
                </div>
                <div id="d5b">5</div>
            </div>
            <div id="d6">
                <div id="d6a">
                    <div id="d6aa"></div>
                </div>
                <div id="d6b">6</div>
            </div>
            <div id="d7">
                <div id="d7a">
                    <div id="d7aa"></div>
                </div>
                <div id="d7b">7</div>
            </div>
            <div id="db22"></div>
        </div>
        <input type="button" name="开始比赛" onclick="start">
        <div id="db22"></div>
    </body>

    </html>