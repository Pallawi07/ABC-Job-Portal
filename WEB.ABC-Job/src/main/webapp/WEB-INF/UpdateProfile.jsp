<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>

    <style>
        body,
        html {
            font-family: 'Source Sans Pro', sans-serif;
            background-image: url();
            background-size: 80%;
            padding: 0;
            margin: 0;
        }

        #abc {
            width: 100%;
            background-size: cover;
        }

        .container1 {
            padding: 30px;
            width: 100%;
            background-color: transparent;
        }

        nav {
            width: 100%;
            line-height: 4px;
        }

        nav .logo {
            flex: 2;
            text-align: left;
            margin-top: -6px;
            color: #ffffff;
            font-size: 21px;
            margin-top: 10px;
            margin-left: 6px;
            font-weight: 50px;
            font-family: Aclonica;
            text-shadow: 5px 1px 4px rgb(4, 4, 5);

        }

        .container {
            display: block;
            width: 800px;
            height: 600px;
            margin: auto;
            margin-top: 40px;
            overflow: hidden;
            border-radius: 25px;
            top: 50px;
            left: 50%;
            position: absolute;
            text-align: center;
            transform: translateX(-50%);
            background-image: url();
            border-radius: 9px;
            border-top: 18px solid #015c63;
            border-bottom: 18px solid #015c63;
            box-shadow: 1px 1px 19.2px rgb(57, 58, 59);
        }

        .box h4 {
            font-family: 'Source Sans Pro', sans-serif;
            color: #015c63;
            font-size: 30px;
            margin-top: 60px;
            ;
        }

        .box h4 span {
            color: #dfdeee;
            font-weight: lighter;
        }

        .box h5 {
            font-family: 'Source Sans Pro', sans-serif;
            font-size: 20px;
            color: #0d2f33;
            letter-spacing: 1.5px;
            margin-top: -15px;
            margin-bottom: 70px;
        }

        .box input[type="number"],
        .box input[type="text"],
        .box input[type="email"],
        .box input[type="tel"],
        .box input[type="password"] {
            display: block;
            margin: 5px auto;
            background: #ccf3ff;
            border: 0;
            border-radius: 30px;
            padding: 14px 10px;
            width: 360px;
            outline: none;
            opacity: 0.60;
            -webkit-transition: all .2s ease-out;
            -moz-transition: all .2s ease-out;
            -ms-transition: all .2s ease-out;
            -o-transition: all .2s ease-out;
            transition: all .2s ease-out;

        }

        ::-webkit-input-placeholder {
            color: #ffffff;
        }

        .box input[type="number"]:focus,
        .box input[type="teltext"]:focus,
        .box input[type="email"]:focus,
        .box input[type="tel"]:focus,
        .box input[type="password"]:focus {
            border: 1px solid #79d8fe;

        }

        .connexion label {
            padding: 2px 2px 2px 2px;
        }

        .connexion {
           display: grid;
    grid-template-columns: 50% 50%;
    grid-column-gap: 43px;
    grid-row-gap: 35px;
    margin-top: -96px;
    padding: 72px;
    margin-left: -40px;
}

        .btn1 {
            font-family: 'Source Sans Pro', sans-serif;
            background: transparent;
            border: #007d86 solid 2px;
            color: #007d86;
            border-radius: 100px;
            width: 400px;
            height: 45px;
            font-size: 16px;
            top: 79%;
            left: 8%;
            margin-top: 22px;
            transition: 0.3s;
            cursor: pointer;
            font-weight: bold;
        }

        .btn1:hover {
            opacity: 0.8;
            background-color: #007d86;
            color: #ffffff;
            border-radius: 20px;
        }
    </style>

    <title>Update</title>
</head>

<body>
    <div id="abc">
        <div class="container1">
            <nav>
                <div class="logo">
                    <a href="/"></a>
                    <span style='font-size:60px; color: #007d86;'>&#8501;</span> ABC JOBS
                </div>
            </nav>
        </div>
    </div>

    <div class="animated bounceInDown">
        <div class="container">
            <span class="error animated tada" id="msg"></span>
            <form name="form1" class="box" method= "get" action="dataupdate" onsubmit="return checkStuff()">
                <h4>UPDATE</h4>
                <h5>Edit details</h5>
                <a href="" class="btn-connexion"></a>
                <div class="connexion">
                    <div class="col1">
                        <label>USER ID</label><input name="userid" placeholder="User ID" type="number" value="${searchView.userid}" required="required"  />
                    </div>
                    <div class="col2">
                        <label>FIRSTNAME</label><input name="first_name" placeholder="Firstname" type="text" value ="${searchView.first_name}" required="required" />
                    </div>
                    <div class="col1">
                        <label>LASTNAME</label><input name="last_name" placeholder="Lastname" type="text" value = "${searchView.last_name}"  required="required" />
                    </div>
                    <div class="col2">
                        <label>EMAIL</label><input type="email" name="email" placeholder="Email" value ="${searchView.email}" required="required" />
                    </div>
                    <div class="col1">
                        <label>USERNAME</label><input name="userName" placeholder="Username" type="text" value="${searchView.userName}"  required="required"/>
                    </div>
                    <div class="col2">
                        <label>PASSWORD</label><input name="password" placeholder="Password" type="password" value="${searchView.password}"  required="required"/>
                    </div>
                    <div class="col2">
                        <label>PHONE</label><input name="phone" placeholder="Phone no." type="tel" value="${searchView.phone}" required="required" />
                    </div>

                    <input type="submit" value="Update" class="btn1">
                     </div>
            </form>
        </div>
    </div>
    
</body>
<script>

    $('.btn-connexion').click(function () {
        $('.connexion').removeClass('remove-section');
        $('.enregistrer').addClass('active-section');
        $('.btn-enregistrer').addClass('active');
        $('.btn-connexion').removeClass('active');
    });
</script>

</html>
 
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Title Page-->
    <title>Update Profile</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Profile Update</h2>
                </div>
                <div class="card-body">
                    <form method= "get" action="dataupdate"> 
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input type="text" name="first_name" class="input--style-5" value ="${searchView.first_name}" required="required" />
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input type="text" name="last_name" class="input--style-5"  value = "${searchView.last_name}"  required="required" />
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="text" name="email" class="input--style-5" value ="${searchView.email}" required="required" />
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Phone Number</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="text" name="phone" class="input--style-5" value="${searchView.phone}" required="required" />
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">UserName</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="text" name="userName" class="input--style-5" value="${searchView.userName}"  required="required"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="password" name="password" class="input--style-5" value="${searchView.password}"  required="required"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">UserId</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="text" name="userid" class="input--style-5" value="${searchView.userid}" required="required"  />
                                </div>
                            </div>
                        </div>
               
                        <div>
                            <button class="btn btn--radius-2 btn--red" value="Update"  type="submit">UPDATE </button>
                        </div>
                         <div>
                            <button Style=" margin-top:20px;" class="btn btn--radius-2 btn--red" value="manage"  type="submit">Go back</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
</html> --> --%>