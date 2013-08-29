<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Abel|Open+Sans:400,600" rel="stylesheet" />

    <style>

        /* http://css-tricks.com/perfect-full-page-background-image/ */
        html {
            background: url(img/6133364748_89f2365922_o.jpg) no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        body {
            padding-top: 20px;
            font-size: 16px;
            font-family: "Open Sans",serif;
            background: transparent;
        }

        h1 {
            font-family: "Abel", Arial, sans-serif;
            font-weight: 400;
            font-size: 40px;
        }

        /* Override B3 .panel adding a subtly transparent background */
        .panel {
            background-color: rgba(255, 255, 255, 0.9);
        }

        .margin-base-vertical {
            margin: 40px 0;
        }

    </style>
<script src="js/jquery-2.0.3.js"></script>
<!-- <script src="js/bootstrap.js"></script> -->

<script type="text/javascript">


	function fuck() {
		var user = $("#login-name").val();
		var pass = $("#login-pass").val();
		alert(user+pass)
		 $.post("./userLogic/login.do", {"username":user,"passwords":pass}, function (data,textStatus){
			if(data.result == true){
				alert("登陆成功");
			}else{
				alert("登录失败");
			}
		},"json");
	}
</script>

</head>
<body bgcolor="#1abc9c">
	<button onclick="fuck();">fuck</button>


<div class="container">
        <div class="row">
            <div class="col-lg-6 col-offset-3 panel">

                <h1 class="margin-base-vertical">Have you ever seen the rain?</h1>

                <p>
                    Someone told me long ago there's a calm before the storm. I know, It's been comin for some time.
                </p>
                <p>
                    When it's over, so they say, it'll rain a sunny day. I know,    Shinin down like water.
                </p>

                <p>
                    I want to know, have you ever seen the rain?
                </p>

                <form class="margin-base-vertical">
                    <p class="input-group">
                        <span class="input-group-addon"><span class="icon-envelope"></span></span>
                        <input type="text" class="form-control input-large" id="login-name" name="email" placeholder="jonsnow@knowsnothi.ng" />
                    </p>
                    <p class="input-group">
                        <span class="input-group-addon"><span class="icon-envelope"></span></span>
                        <input type="text" class="form-control input-large" id="login-pass" name="password" placeholder="jonsnow@knowsnothi.ng" />
                    </p>
                    <p class="help-block text-center"><small>We won't send you spam. Unsubscribe at any time.</small></p>
                    <p class="text-center">
                        <button type="submit" class="btn btn-success btn-large">Keep me posted</button>
                    </p>
                    </span>
                </form>

                <div class="margin-base-vertical">
                    <small class="text-muted"><a href="http://www.flickr.com/photos/erwlas/6133364748/">Background picture by erwlas @flickr</a>. Used under <a href="http://creativecommons.org/licenses/by/2.0/deed.en">Creative Commons - Attribution</a>.</small>
                </div>

            </div><!-- //main content -->
        </div><!-- //row -->
    </div> <!-- //container -->

</body>
</html>