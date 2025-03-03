<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Forgot Password</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->

	<link rel="stylesheet" href="${path}/resources/css/sb-admin-2.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css" /> 
	
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                            and we'll send you a link to reset your password!</p>
                                    </div>
                                    <div class="form-group">
            						<form class="form" action="${path}/member/findId" method="post">
						                <input type="text" name="name" id="name" placeholder="User Name">
						                <input type="email"name="email" id="email" placeholder="E-mail">
						                <button type="submit" id="login-button" >아이디 찾기</button>
									           </form>
									        </div>
									        
									        <div id="result_id"></div>
									    </div>
									</body>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>


<script type="text/javascript">
        $(document).ready(function () {
            $('#login-button').click(function () {
                var name = $("#name").val();
                var email = $("#email").val();
                $.ajax({
                    type: "POST",
                    url: "${path}/member/findId",
                    dataType: "json",
                    data: {
                        'name': name,
                        'email': email,
                        'csrfmiddlewaretoken': '{{csrf_token}}',
                    },
                    success: function (response) {
                        $('#result_id').replaceWith(
                            '<div id="result_id"><hr><div><span>입력된 정보로 가입된 아이디는 </span><span id="result_id">' +
                                response.result_id +'</span><span> 입니다.</span></div><hr></div>')
                    },
                    error: function () {
                        if (name == "" || email == "") {
                            alert('이름와 이메일을 입력해주세요.');
                        } else {
                            alert('입력하신 정보가 일치하지 않거나 존재하지 않습니다.');
                        }
                    },
                });
            })
        });
    </script>


</html>