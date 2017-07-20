<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>

    <title>Login</title>
    <%@ include file="/jsp/import.jsp" %>
    <style type="text/css">
        .vertical-center {
            min-height: 350px;
            border-radius: 10px !important;
            width: 450px;
            padding: 50px;
            background-color: #fff;
            border: 1px solid #d6d6d6;
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, .2), 0 6px 20px 0 rgba(0, 0, 0, .19);
            top: 30%;
            left: 50%;
            position: fixed;
            margin-left: -225px;
            margin-top: -175px;

        }

        .errorMsg {
            color: red;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".form-signin").fadeIn("slow");
            $("#backBtn").click(function () {
                window.location.href = '<c:url value='/' />';
            });
        });

        function submitForm() {
            var user = $("#login-name").val();
            var pass = $("#login-pass").val();
            $("#subBtn").attr("disabled", "disabled");
            $.post("doLogin", {
                "username": user,
                "passwords": pass
            }, function (data, textStatus) { //test
                data = $.parseJSON(data);
                if (data.success == true) {
                    $(".form-signin").hide();
                    $(".form-signin").html("登陆成功，正在跳转，请稍后...");
                    $(".form-signin").fadeIn("slow");
                    setTimeout(function () {
                        window.location.href = '<c:url value='/' />';
                    }, 1000);
                } else {
                    $("#subBtn").removeAttr("disabled");
                    $(".form-signin .errorMsg").remove();
                    $(".form-signin").append(
                        "<div class='errorMsg'>" + data.message + "</div>")
                }
            }, "json");
            return false;
        }
    </script>
</head>
<body>
<div class="wrap">
    <div class="well vertical-center">
        <form class="form-signin has-warning" style="display: block;"
              action="" onsubmit="return submitForm();">
            <h1>
                Feihome
            </h1>
            <div class="form-group has-info label-floating">
                <label class="control-label" for="login-name">Username</label> <input
                    type="text" class="form-control" id="login-name">
            </div>
            <div class="form-group has-info label-floating">
                <label class="control-label" for="login-pass">Password</label> <input
                    type="password" class="form-control" id="login-pass">
            </div>

            <button id="subBtn"
                    class="btn btn-lg btn-info btn-block btn-raised" type="submit">login
            </button>
            <button id="backBtn" class="btn btn-lg btn-info btn-block"
                    type="button">Back to Index
            </button>
        </form>
    </div>
</div>
</body>
</html>
