<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_challenge2.aspx.cs" Inherits="Web.add_challenge2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 新增挑战邀请</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/font-awesome.min.css" rel="stylesheet">
<link href="./css/bootstrap-switch.min.css" rel="stylesheet">
<link href="./css/bootstrap-select.min.css" rel="stylesheet">
<link href="./css/style2.css" rel="stylesheet">
<link href="./css/summernote.css" rel="stylesheet">
<link href="./css/summernote-bs3.css" rel="stylesheet">
<link href="./css/style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="./css/jquery-confirm.min.css">
<!-- Max css -->
<link href="./css/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.companyTags li {
	margin: 5px 5px 0 0;
}
</style>
<style type="text/css">.jqstooltip 
{ position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}

</style></head>
<body>
	
	
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
						<span class="text">
							
											
								
									北京猿圈科技有限责任公司
								
							
						</span>
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
									<div class="col-md-8">
										<h3>新增挑战邀请</h3>
									</div>
									<div class="col-md-4">
										<div class="row">
											<div class="col-md-5"></div>
											<div class="col-md-7"></div>
										</div>
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<div style="text-align: center; margin-bottom: 20px;">
											<img src="./image/nc2.png">
										</div>
										<div class="row col-md-12">
											<h4>选择招聘需求</h4>
											 <p class="text-muted">
						                        <span>选择对应的招聘需求后，我们会智能匹配最合适的挑战项目，如需选择特定的挑战项目或挑战项目数量，您也可以选择</span>
						                         <a href="http://www.oxcoder.com/cooper/new/recruit/new_recruit_2.html" class="btn btn-primary" style="background-color:#fff;color:#3498db;">高级设置<i class="fa fa-chevron-right"></i></a>
						                      </p>
											<!-- <div class="alert alert-info" style="text-align: center" role="alert">还没有选择招聘需求<a href="#" style="margin-left:20px;">智能生成</a></div> -->
										</div>
										<div class="row col-md-12">
										
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="熟悉Spring、SpringMVC、JSF、Hibernate、MyBatic等框架 ">
													熟悉Spring、SpringMVC、JSF、Hibernate、MyBatic等框架&nbsp;
												</label> 
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="拥有面向对象思想、扎实的数据结构及算法基础">
													拥有面向对象思想、扎实的数据结构及算法基础
												</label> 
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="掌握常用设计模式">
													掌握常用设计模式
												</label> 
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="熟悉AJAX、Jquery相关技术">
													熟悉AJAX、Jquery相关技术
												</label> 
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="有金融行业和电子商务网站开发经验">
													有金融行业和电子商务网站开发经验
												</label> 
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="有APP后台系统开发经验">
													有APP后台系统开发经验
												</label> 
											
												<label class="checkbox" for="example-inline-checkbox1" style="font-weight:300;">
													<input type="checkbox" name="checkbox" value="有微信接口开发经验">
													有微信接口开发经验
												</label> 
											
										</div>
										<div class="row col-md-12" style="margin-bottom: 20px;">
											<span class="help-block has-error">
                                            	<small style="margin-left: 20px;display:none" id="hint_new" class="help-block">请选择适合您的招聘需求</small>
                                            </span>
											<a href="javascript:gotoNext()">
											<button class="btn btn-new1 pull-right">保存&amp;发布挑战</button></a>
										</div>
									</div>
									<!--/.row  -->
								</div>
							</div>
							<div class="col-md-3 profile-info" id="profile_info_div">



<<<<<<< HEAD
    <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <section>
                        <div id="content">
                            <div class="row">
                                <div class="col-md-9 profile-stream">
                                    <div class="page-header row">
                                        <div class="col-md-8">
                                            <h3>新增挑战邀请</h3>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-5"></div>
                                                <div class="col-md-7"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page-body">
                                        <div class="row">
                                            <div style="text-align: center; margin-bottom: 20px;">
                                                <img src="../image/new_c2.png"/>
                                            </div>
                                            <h4>已选择挑战项目</h4>
                                            <div class="row col-md-12 col-no-left-padding">
                                                <div id="chosenQuiz" runat="server">
                                                    <div id="addbtn" class="alert alert-info" style="text-align: center" role="alert" runat="server">
                                                        还没有选择测试题目
                                                    </div>
                                                </div>
                                                <font id="wrongTip" color="red" runat="server"> </font>
                                                <font id="rightTip" color="green" runat="server"> </font>
                                            </div>
                                            <div class="row col-md-12">
                                                <h4 class="pull-left">挑战项目</h4>
                                                <div class="pull-right">
                                                    <div style="display: inline-block; vertical-align: top;">
                                                        <form class="input-group" style="width: 200px" action="hr-set-challenge.action" method="post">
                                                            <input type="hidden" name="relevel" value="1" id="input-relevel"/>
                                                            <input type="hidden" name="retype" value="0" id="input-retype"/>
                                                            <input type="hidden" name="republic" value="1" id="input-republic"/>
                                                            <button class="btn btn-new1 pull-right">发布挑战</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row col-md-12 col-no-left-padding">
                                                <div class="panel-body">
                                                    <div id="quizBoard" class="row" runat="server">
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4></h4>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <button style="color: white" class="btn btn-primary btn-sm">添加</button>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="panel-footer">
                                                                    <div class="row">
                                                                        <div class="col-sm-4">
                                                                            <span class="small muted">项目难度</span>
                                                                        </div>
                                                                        <div class="col-sm-8">
                                                                            <p>
                                                                                <i class="fa fa-star"></i>
                                                                                <i class="fa fa-star"></i>
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-user">
	                                <div class="panel-heading">
		                                <div class="panel-title">
			                                <div class="media">
				                                <a class="pull-left">
					                                <img src="./image/d8c2208b-4354-43ed-a789-3cb64852bb75.png" class="media-object"/>
				                                </a>
				                                <div class="media-body">
					                                <h4 class="media-heading">
						                                <span>北京猿圈科技有限责任公司</span>
					                                </h4>
					                                <span class="text-muted">
						                                <small>
							                                上次登录日期:
							                                <br/>
							                                2016-04-27 13:59:38
						                                </small>
					                                </span>
				                                </div>
			                                </div>
		                                </div>
	                                </div>
                                </div>
                                
                            </div>
                        </div>
                    </section>
=======

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
>>>>>>> 719335d4d79572da20441227b3031528ac933298
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
<!-- /.panel -->
</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- /#content -->
				</section>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer">
		<!-- <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <ul class="list-inline">
                            <li>&copy; <a href="index.html">Intersect</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-6">
                        <ul class="list-inline social-network">
                            <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-github-square"></i></a></li>
                        </ul>
                    </div>
                </div><!-- /.row -->
		<!-- </div> -->
		<!-- /.container -->
	</footer>
	<script src="./scripts/jquery-1.11.0.min.js"></script>
	<script src="./scripts/bootstrap.min.js"></script>
	<script src="./scripts/jquery.sparkline.min.js"></script>
	<script src="./scripts/bootstrap-switch.min.js"></script>
	<script src="./scripts/bootstrap-select.min.js"></script>
	<script src="./scripts/bootstrap-filestyle.js"></script>
	<script src="./scripts/summernote.min.js"></script>
	<script src="./scripts/script.js"></script>
	
	<script type="text/javascript" src="./scripts/jquery-confirm.min.js"></script>
	
	<script src="./scripts/zmUtil.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#profile_info_div").load("cooper/cooper_left_info.html");
		});

		var str=""
		function gotoNext() {
			$("input:checkbox:checked").each(function(){
				str+=$(this).val()+"#"; 
			}) 
			console.log($("#hint_new"))
			if(str==""){
				$("#hint_new").css("display","block");
			}else{
				$("#hint_new").css("display","none");
				smartGenerator(str);
			}
			
		}

		// 智能生成
		function smartGenerator(str) {
			$("#hint1").html("");
			$("#hint1").hide();
			$.ajax({
				cache : false,
				type : "post",
				data: {"keyword": str},
				url : "cooper/new/recruit/smart_generator.html",
				success : function(data) {
					data = eval('(' + data + ')');
					if (data.su) {
						saveRecruitBtn();
						//location.href = data.url;
					} else if (data.error) {
						$.alert({
							title : "网络错误!",
							content : data.msg,
							confirm : function() {
								location.href = data.url;
							}
						});
					} else {
						$("#hint1").html(data.msg);
						$("#hint1").show();
					}
				},
				error : function(request) {
					$("#hint1").html(data.msg);
					$("#hint1").show();
				}
			});
		}
		function saveRecruitBtn() {
			$.ajax({
				cache : false,
				type : "post",
				url : "cooper/new/recruit/create_release.html",
				success : function(data) {
					data = eval('(' + data + ')');
					if (data.su) {
						location.href = data.url;
					} else if (data.error) {
						$.alert({
							title : "网络错误!",
							content : data.msg,
							confirm : function() {
								location.href = data.url;
							}
						});
					} else {
						$("#hint1").html(data.msg);
						$("#hint1").show();
					}
				},
				error : function(request) {
					$("#hint1").html(data.msg);
					$("#hint1").show();
				}
			});
		}

		function add(title)
		{
		    //alert(id);
		    var content = document.getElementById("addbtn");
		    content.innerHTML = title;
		    alert(title);
		}
	</script>


</body>

</html>
