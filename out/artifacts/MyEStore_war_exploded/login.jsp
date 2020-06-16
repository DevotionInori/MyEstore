<%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/14
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style>
        .loginBorder{
            border-width: 3px;
            border-color: #7a9fff;
            border-radius: 20px;
            width: 360px;
            margin-top: 120px;
            height: 480px;
            display: inline-block;
            border-style: solid
        }
        .slider-left{
            left: 0;
            bottom: 0;
            top: 245px;
            float: left;
            margin-left: 12px;
            width: 2.4em;
            height: 2px;
            background: #8097ea;
            display: inline-block;
            transition: 0.2s left ease-in-out;
        }


        .loginSwitch{
            -webkit-transition: opacity .15s, color .15s;
            float: left;
            width: 4em;
            line-height: 35px;
            cursor: pointer;
            opacity: 1 !important;
            color: #333 !important;
            margin:0;
            text-decoration: none;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Helvetica Neue', Helvetica, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif;
            list-style: none;
        }

        .loginSwitch-active{
            -webkit-transition: opacity .15s, color .15s;
            float: left;
            width: 4em;
            line-height: 35px;
            cursor: pointer;
            opacity: 1 !important;
            color: #8097ec !important;
            margin:0;
            text-decoration: none;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Helvetica Neue', Helvetica, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif;
            list-style: none;
        }

        .inputBorder{
            width: 80%;
            border-radius: 5px;
            height: 105px;
            display: inline-block;
            border-width: 3px;
            border-color: #9d9d9d;
            border-style: solid;
        }

        .ipui{
            border: none;
            width: 80%;
            font-size: 15px;
            margin-top: 15px;
        }

    </style>
</head>
<body>
    <div style="" align="center">
        <div class="loginBorder" align="center">
            <img src="img/logo.png" style="margin-top: 20px">
            <br/>
            <div align="center" style="width: 150px;height: 50px">
                <a  href="#" id="login"  class="loginSwitch-active"  onclick="document.getElementById('slider').style='left:0';
            this.className='loginSwitch-active';
            document.getElementById('register').className='loginSwitch';
            document.getElementById('registerInput').style='display:none';
            document.getElementById('ib').style='height:105px;';
            document.getElementById('sbip').value='登录';
            document.getElementById('sbip').className='lg'">登录</a>
                <a  href="#" id="register"  class="loginSwitch"  onclick="document.getElementById('slider').style='margin-left:4.7em';
                this.className='loginSwitch-active';
                document.getElementById('login').className='loginSwitch';
                document.getElementById('registerInput').style='display:block';
                document.getElementById('ib').style='height:160px;';
                document.getElementById('sbip').value='注册';
                document.getElementById('sbip').className='rg'">注册</a>
                <span id="slider"  class="slider-left" style="left: 0"></span>

            </div>
            <form action="./LoginServlet">
                <div class="inputBorder" id="ib">

                    <input class="ipui" type="text" name="username" placeholder="用户名">
                    <span style="width: 100%;height: 3px;background-color: #9d9d9d;display: inline-block;margin-top: 15px"></span>
                    <input class="ipui" type="password" name="password" placeholder="密码">
                    <span style="width: 100%;height: 3px;background-color: #9d9d9d;display: inline-block;margin-top: 15px"></span>
                    <input class="ipui" type="password" name="passwordCheck" placeholder="确认密码" id="registerInput" style="display: none">
                </div>

                <input type="submit" id="sbip" name="sb" style="width: 80%;border: none;border-radius: 5px;margin-top: 20px;height: 40px" value="登录">
            </form>


        </div>
    </div>
</body>
</html>
