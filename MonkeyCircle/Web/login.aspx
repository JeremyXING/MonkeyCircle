<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Web.login" %>

<!DOCTYPE html>
<!-- saved from url=(0122)file:///C:/Users/tala0/Desktop/%E5%94%90%E5%85%B4%E5%85%83/%E7%99%BB%E5%BD%95/%E7%8C%BF%E5%9C%88%20%E7%99%BB%E5%BD%95.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><!--<base href=".">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 登录</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/font-awesome.min.css" rel="stylesheet">
<link href="./css/bootstrap-switch.min.css" rel="stylesheet">
<link href="./css/bootstrap-select.min.css" rel="stylesheet">
<link href="./css/summernote.css" rel="stylesheet">
<link href="./css/summernote-bs3.css" rel="stylesheet">
<link href="./css/style.css" rel="stylesheet">
<link href="./css/signin.css" rel="stylesheet">
<link href="./css/style_new.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/bootstrapValidator.min.css">
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
body {
	background-color: #4A90E2;
}

.panel-title img {
	max-height: 70px;
}

.footer-log {
	margin-bottom: 20px;;
	text-align: center;
	color: #fff;
}

.footer-log a {
	color: #fff;
	padding-left: 10px;
	margin-left: 10px;
	border-left: 1.5px solid #fff;
}

.footer-log a:visited {
	color: #fff;
}
[id^=__YX_PF_Div]{display:none;position:absolute;top:-1000000px;visibility:hidden}[id^=__YX_PF_Div]{display:none;position:absolute;top:-1000000px;visibility:hidden}</style>

<script language="javascript" type="text/javascript" src="./scripts/35ff706fd57d11c141cdefcd58d6562b.js" charset="gb2312"></script><script type="text/javascript">
hQGHuMEAyLn('[id^=__YX_PF_Div]');</script><script async="" src="./php/core.php"></script><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body style="">
	<div class="container" style="margin-top: 160px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
				<section id="middle">
					<div id="content" class="signin-page">
						<div class="panel-group" id="signin-page">
							<h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
								<a href="http://www.oxcoder.com/index.html">
									<img src="./image/wlogo.png">
								</a>
								猿圈登录
							</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										<form action="http://www.oxcoder.com/user_login_security_check" method="post" id="defaultForm" class="form-horizontal bv-form" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
											<div class="form-group has-success">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="fa fa-envelope"></i>
														</span>
														<input id="login-email" name="j_username" value="" type="text" class="form-control" placeholder="请输入邮箱地址" data-bv-field="j_username">
													</div>
													<span class="help-block has-error" id="hint1"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="j_username" data-bv-result="NOT_VALIDATED" style="display: none;">邮箱地址</small><small class="help-block" data-bv-validator="regexp" data-bv-for="j_username" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的手机号或邮箱地址</small></span>
												</div>
											</div>
											<div class="form-group has-success">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="fa fa-key"></i>
														</span>
														<input type="password" id="login-password" name="j_password" value="" class="form-control" placeholder="请输入密码" data-bv-field="j_password">
													</div>
													<span class="help-block has-error" id="hint3"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="j_password" data-bv-result="NOT_VALIDATED" style="display: none;">请输入密码</small></span>
												</div>
											</div>
											<div class="col-xs-12">

												<span class="help-block has-error" id="hint2">
													<small class="help-block">
														
													</small>
												</span>
											</div>
											<div class="col-xs-12">
												<button type="submit" class="btn btn-primary btn-lg" style="margin-left: 20px; border-radius: 3px;">登录</button>
											</div>
											<div class="col-xs-12"></div>
										</form>
									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												还没有帐号？
												<a href="http://www.oxcoder.com/signup.html">立即注册</a>
											</p>
											<img src="./image/01.png" width="250px;" class="hidden-xs">
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->
						</div>
						<!-- /#content -->
					</div>
				</section>
			</div>
			<!-- /.col-md-10 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer class="col-md-12 footer-log">
		<div class="text-center">
			© 2016 .NET together
			</div>
	</footer>
	<script src="./scripts/jquery-1.11.0.min.js"></script>
	<script src="./scripts/bootstrap.min.js"></script>
	<script src="./scripts/bootstrap-switch.min.js"></script>
	<script src="./scripts/bootstrap-select.min.js"></script>
	<script src="./scripts/bootstrap-filestyle.js"></script>
	<script src="./scripts/jquery.sparkline.min.js"></script>
	<script src="./scripts/summernote.min.js"></script>
	<script src="./scripts/script.js"></script>
	<script src="./scripts/bootstrapValidator.min.js"></script>
	<script src="./scripts/bootstrapValidator_zh_CN.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#defaultForm").bootstrapValidator({
				message : "This value is not valid",
				fields : {
					j_username : {
						container : "#hint1",
						validators : {
							notEmpty : {
								message : "邮箱地址"
							},
							regexp: {
		                        regexp: /^1[3|4|5|7|8]\d{9}$|^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i,
		                        message: "请输入正确的手机号或邮箱地址"
		                    }
						}
					},
					j_password : {
						container : "#hint3",
						validators : {
							notEmpty : {
								message : "请输入密码"
							}
						}
					}
				}
			});
		});
	</script>
	<script type="text/javascript">
		//如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
		if (($(document.body).height() + 50) < $(window).height()) {
			$(".afooter").addClass("navbar-fixed-bottom");
		};
	</script>




</body></html>