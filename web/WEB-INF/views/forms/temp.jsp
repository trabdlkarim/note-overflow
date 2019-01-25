<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login - NoteOverflow</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/assets/sb-admin.vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/assets/sb-admin.vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/assets/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${pageContext.request.contextPath}/assets/sb-admin.vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/assets/sb-admin.vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>.errorblock {color: #ff0000;background-color: #ffEEEE;}</style>
</head>

<body onload="document.loginForm.j_username.focus();">

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body"> 
                        <form id="loginForm" name="loginForm" role="form" action="<c:url value="/login.htm"/>" method="POST">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" id="j_username" placeholder="E-mail" name="j_username" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="j_password" placeholder="Password" name="j_password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button  type="submit" id="loginSubmit" name="loginSubmit" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                            <!--input type="hidden"name="${_csrf.parameterName}"vvalue="${_csrf.token}"/-->
                        </form>
                        
                       <%
                         String errorString = (String) request.getAttribute("error");
                          if (errorString != null && errorString.trim().equals("true")) {
                          out.println("<span class=\"errorblock\">Incorrect login name or password. Please try again");
                         }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/sb-admin.vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/sb-admin.vendor/metisMenu/metisMenu.min.js"></script>

    
    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/dist/js/sb-admin-2.js"></script>
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/assets/sb-admin.vendor/jquery/jquery.min.js"></script>

</body>

</html>
