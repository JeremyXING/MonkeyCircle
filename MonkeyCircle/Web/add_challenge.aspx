<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_challenge.aspx.cs" Inherits="Web.add_challenge" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content=""/>
<meta name="author" content="BootstrapStyler"/>
<title>猿圈 新增挑战邀请</title>
<link href="./css/bootstrap.min.css" rel="stylesheet"/>
<link href="./css/font-awesome.min.css" rel="stylesheet"/>
<link href="./css/bootstrap-switch.min.css" rel="stylesheet"/>
<link href="./css/bootstrap-select.min.css" rel="stylesheet"/>
<link href="./css/style2.css" rel="stylesheet"/>
<link href="./css/summernote.css" rel="stylesheet"/>
<link href="./css/summernote-bs3.css" rel="stylesheet"/>
<link href="./css/style.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./css/bootstrapValidator.min.css"/>
<link rel="stylesheet" href="./css/jquery-confirm.min.css"/>
<link href="./css/style_new.css" rel="stylesheet" type="text/css"/>
<script src="./scripts/html5shiv.js"></script>
<script src="./scripts/respond.min.js"></script>
<style type="text/css">
.level-tag {
	border: 1px solid #efefef;
}
.active .panel {
	background-color: #eee;
}
@media ( min-width : 768px) {
	.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
		width: 20%;
		*width: 20%;
	}
}
@media ( min-width : 1200px) {
	.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
		width: 20%;
		*width: 20%;
	}
}
@media ( min-width : 768px) and (max-width: 979px) {
	.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
		width: 20%;
		*width: 20%;
	}
}
</style>
<link href="./css/WdatePicker.css" rel="stylesheet" type="text/css"/>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>

</head>
<body onload="">
	
    <div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	    <div class="container">
		    <div class="navbar-header">
			    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/cooper/index.html" style="padding: 0;">
				    <img src="./image/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			    </a>
		    </div>
		    <div class="navbar-collapse collapse" role="navigation">
			    <ul class="nav navbar-nav">
				    <li class="">
					    <a href="http://www.oxcoder.com/cooper/oxcoder_corp_index.html">首页</a>
				    </li>
				    <li class="">
					    <a href="http://www.oxcoder.com/cooper/recommended/talent/index.html">人才推荐</a>
				    </li>
				    <li class="active">
					    <a href="http://www.oxcoder.com/cooper/index.html">挑战管理</a>
				    </li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
				    <li class="dropdown">
					    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						    <span class="text">北京猿圈科技有限责任公司</span>
						    <b class="caret"></b>
					    </a>
					    <ul class="dropdown-menu">
						    <li>
							    <a href="http://www.oxcoder.com/cooper/pay/view_balance.html">去打赏</a>
						    </li>
						    <li>
							    <a href="http://www.oxcoder.com/cooper/cooperInfo/view_cooper_info.html">企业信息</a>
						    </li>
						    <li>
							    <a href="http://www.oxcoder.com/cooper/cooperInfo/account_binding.html">帐号设置</a>
						    </li>
						    <li>
							    <a href="http://www.oxcoder.com/security_logout">注销</a>
						    </li>
					    </ul>
				    </li>
			    </ul>
		    </div>
	    </div>
    </div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-9 profile-stream">
								<div class="page-header row">
									<div class="col-md-12 col-no-left-padding">
										<h3 style="display: inline-block;float: left;">新增挑战邀请</h3>
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<div style="text-align:center;margin-bottom:20px;">
											<img src="./image/nc1.png"/>
                                        </div>
										<form id="new_challenge_form_1" method="post" class="form-horizontal bv-form" action="add_challenge2.aspx" novalidate="novalidate" onsubmit="return checkForm()">
                                            <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
											<input type="hidden" name="relevel" value="1" id="input-relevel"/>
                                            <input type="hidden" name="retype" value="0" id="input-retype"/>
                                            <input type="hidden" name="republic" value="1" id="input-republic"/>
											<h4 class="col-md-12 col-no-left-padding">请选择挑战类型</h4>
											<div class="fivecolumns">
													<div class="col-md-3 col-no-left-padding test">
													<a id="a-java" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																	<img src="./image/java.png"/>
																		Java
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-android" data-toggle="pill">
														<div class="panel panel-default shadow-effect">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./image/android.png"/>
																		Android
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-ios" data-toggle="pill">
														<div class="panel panel-default shadow-effect">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./image/apple.png"/>
																		iOS
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-c" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img style="width:64px;height:64px" src="./image/c.png"/>
																		C语言(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-cpp" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./image/cpp.png"/>
																		C++(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-php" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./image/php.png"/>
																		PHP(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-python" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./image/python.png"/>
																		Python(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
											</div>
											<h4 class="col-md-12 col-no-left-padding">请选择挑战等级(按薪资划分)</h4>
											<ul class="nav nav-pills nav-justified col-md-12 col-no-left-padding">
												<li class="level-tag" relevel="1"><a data-toggle="pill">2k~5k</a></li>
												<li class="level-tag" relevel="2"><a data-toggle="pill">5k~8k</a></li>
												<li class="level-tag" relevel="3"><a data-toggle="pill">8k~10k</a></li>
												<li class="level-tag" relevel="4"><a data-toggle="pill">10k~12k</a></li>
												<li class="level-tag" relevel="5"><a data-toggle="pill">12k~15k</a></li>
												<li class="level-tag" relevel="6"><a data-toggle="pill">15k以上</a></li>
											</ul>
											<h4 class="col-md-12 col-no-left-padding">
												<label style="font-weight: 100;">
													<input id="check-public" name="check-public" value="1" type="checkbox" checked="checked"/> 设为公开挑战
												</label>
											</h4>
											<span class="col-md-12 col-no-left-padding text-muted">选择公开挑战，您发布的挑战将在首页显示，猿圈用户的可自由开始挑战；若不选择，用户只有您邀请后才可开始挑战。</span>
											<hr/>
											<div class="form-group form-actions col-md-12 col-no-left-padding">
												<span class="help-block has-error">
													<small style="margin-left: 20px; display: none;" id="hint1" class="help-block">请选择挑战类型及等级</small>
												</span>
												<div class="align-center">
													<button id="nextStep" class="btn btn-new1" type="submit">保存&amp;下一步</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>




<div class="panel-user">
	<div class="panel-heading">
		<div class="panel-title">
			<div class="media">
				<a class="pull-left">
					<img src="./image/d8c2208b-4354-43ed-a789-3cb64852bb75.png" class="media-object">
				</a>
				<div class="media-body">
					<h4 class="media-heading">
						<!-- <span class="welcome">Hello</span> -->
						<span>北京猿圈科技有限责任公司</span>
					</h4>
					<span class="text-muted">
						<small>
							上次登录日期:
							<br>
							2016-04-27 13:59:38
						</small>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="panel panel-outline panel-no-padding hidden-xs">
	<div class="panel-body">
		<div class="stat-block stat-danger">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-bell"></i>
			</div>
			<div class="details">
				<div class="number">0</div>
				<div class="description">今日接受挑战人数</div>
			</div>
		</div>
		<div class="stat-block stat-success">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-bar-chart-o"></i>
			</div>
			<div class="details">
				<div class="number">0</div>
				<div class="description">今日通过挑战人数</div>
			</div>
		</div>
		<div class="stat-block stat-primary">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-tachometer"></i>
			</div>
			<div class="details">
				<div class="number">0</div>
				<div class="description">共帮您找到的人才</div>
			</div>
		</div>
	</div>
	<!-- /.panel-body -->
</div>
						</div>
					</div>
					<!-- /#content -->
				</section>
			</div>
        </div>
	</div>

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./image/pic.gif"></a></span><script src="../Public/PHP/z_stat.php" type="text/javascript"></script><script src="./image/core.php" charset="utf-8" type="text/javascript"></script>
                </div>
            </div>
            
        </div>
    </div>
	
	<script src="./scripts/jquery-1.11.0.min.js"></script>
	<script src="./scripts/bootstrap.min.js"></script>
	<script src="./scripts/jquery.sparkline.min.js"></script>
	<script src="./scripts/bootstrap-switch.min.js"></script>
	<script src="./scripts/bootstrap-select.min.js"></script>
	<script src="./scripts/bootstrap-filestyle.js"></script>
	<script src="./scripts/summernote.min.js"></script>
	<script type="text/javascript" src="./scripts/WdatePicker.js"></script>
	<script src="./scripts/script.js"></script>
	<script src="./scripts/bootstrapValidator.min.js"></script>
	<script src="./scripts/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="./scripts/jquery-confirm.min.js"></script>
	
	<script src="./scripts/zmUtil.js"></script>
	<script type="text/javascript">
		$('.test a').click(function (e) {
		    e.preventDefault();
		    $('.test a').removeClass("active");
		    $(this).addClass("active");
		    checkForm();
		})
		$('.level-tag a').click(function (e) {
		    if ($(".active").length = 2) {
		        $('#nextStep').removeAttr("disabled");
		        $('#hint1').hide();
		    } else {
		        $('#nextStep').attr('disabled', "true");
		        $('#hint1').show();
		    }
		})
		function checkForm() {

		    if ($(".active").length >= 2) {
		        $('#nextStep').removeAttr("disabled");
		        $('#hint1').hide();
		        return true;
		    } else {
		        $('#nextStep').attr('disabled', "true");
		        $('#hint1').show();
		        return false;
		    }
		}

		//这里设置项目的类型
		$('#a-java').click(function () {
		    $("#input-retype").val("1");
		});
		$('#a-android').click(function () {
		    $("#input-retype").val("2");
		});
		$('#a-ios').click(function () {
		    $("#input-retype").val("3");
		});
		$('#a-c').click(function () {
		    $("#input-retype").val("4");
		});
		$('#a-cpp').click(function () {
		    $("#input-retype").val("5");
		});
		$('#a-php').click(function () {
		    $("#input-retype").val("6");
		});
		$('#a-python').click(function () {
		    $("#input-retype").val("7");
		});

		$(".level-tag").click(function () {
		    $("#input-relevel").val($(this).attr("relevel"));
		});

		$("#check-public").click(function () {
		    if (document.getElementById("check-public").checked) {
		        $("#input-republic").val("1");
		    } else {
		        $("#input-republic").val("0");
		    }
		});
	</script>


</body>

</html>



