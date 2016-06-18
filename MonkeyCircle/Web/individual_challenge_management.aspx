<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="individual_challenge_management.aspx.cs" Inherits="Web.individual_challenge_management" %>

<!DOCTYPE html>

<html lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战管理</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/font-awesome.min.css" rel="stylesheet">
<link href="./cscs/bootstrap-switch.min.css" rel="stylesheet">
<link href="./css/bootstrap-select.min.css" rel="stylesheet">
<link href="./css/style.css" rel="stylesheet">
<link href="./css/summernote.css" rel="stylesheet">
<link href="./css/summernote-bs3.css" rel="stylesheet">
<link href="./css/style(1).css" rel="stylesheet" type="text/css">
<!-- Max css -->
<link href="./css/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-default navbar-fixed-top" id="navbar">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/user/index.html" style="padding: 0;">
				<img src="./image/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="http://www.oxcoder.com/user/index.html">首页</a>
				</li>
				<li class="active">
					<a href="http://www.oxcoder.com/user/recruit/user_recruit.html">挑战</a>
				</li>
			
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown" id="drop_down_nav">
					<a href="http://www.oxcoder.com/#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
								365488192@qq.com
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="http://www.oxcoder.com/user/info/account_binding.html">帐号设置</a>
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
				<section id="middle" class="col-md-12 col-no-left-padding">
					<h2 class="h2-tab">
						<a href="http://www.oxcoder.com/user/recruit/user_recruit.html" class="">我接受的挑战</a>
					</h2>
					<h2 class="h2-tab">
						<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=true" class="off">挑战历史</a>
					</h2>
				</section>
			</div>
			<div class="col-md-12 col-no-left-padding">
				<section id="middle" class="col-md-12">
					<div class="btn-group" style="margin-bottom: 10px;">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							全部
							<span class="caret"></span>
						</button>
						<input id="is_history_id" value="false" type="hidden">
						<input id="user_state_id" value="" type="hidden">
						<ul class="dropdown-menu">
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false">全部</a>
							</li>
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false&amp;userState=0">未完成的挑战</a>
							</li>
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false&amp;userState=1">通过的挑战</a>
							</li>
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false&amp;userState=3">不通过的挑战</a>
							</li>
						</ul>
					</div>
				</section>
				
				
					<div class="col-md-3">
						<section id="middle">
							<div class="panel panel-default shadow-effect" style="background-image:url();background-repeat:no-repeat;background-position:90% 55%;">
								<div class="col-xs-12 panel-header">
									<div class="pull-left">
										<h4 class="line-control">
										<a>[初级]Java工程师</a>
										</h4>
										<h4 class="line-control" style="min-height:18px;">
											<a href="http://www.oxcoder.com/user/cooper_info.html?cooperId=2574">北京猿圈科技有限责任公司</a>
										</h4>
									</div>
									<div class="pull-right client-info">
										<span class="percent text-danger">
											<img class="img-circle" style="width:60px;height:60px" src="./image/d8c2208b-4354-43ed-a789-3cb64852bb75.png">
										</span>
									</div>
									
								</div>
	
								<div class="panel-body ">
									<ul class="list-unstyled">
										<li>月薪： 
											
											2K~5K
										</li>
										<li>职位诱惑：</li>
										<li style="min-height:33px;">
											<ul class="companyTags">
												
												
													<li>美女多</li>
												
													<li>管吃管住</li>
												
													<li>节日礼物</li>
												
											</ul>
										</li>
										<li>试题数量：2</li>
										<li>
											挑战难度：
											
												<i class="fa fa-star"></i>
											
										</li>
										<li>
											<i class="fa fa-calendar"></i>
											2016.04.27~2016.06.27
										</li>
										<li>
											<i class="fa fa-user"></i>
											2人已接受挑战
										</li>
										<li class="progress-info">
											
												
													<span class="ongoing">&nbsp;</span>
												
												
												
											
										</li>
										
											<li class="progress-info">企业邀请&nbsp;</li>
										
									</ul>
								</div>
								<!-- /.panel-body -->
								<div class="panel-footer align-center">
									
										
											<a href="http://www.oxcoder.com/user/recruit/start_recruit.html?userRecruitId=116277">
												<button class="btn btn-new1" onclick="fdisabled(this)">开始挑战</button>
											</a>
											<a href="http://www.oxcoder.com/user/recruit/abandon_recruit.html?userRecruitId=116277" onclick="fdisabled(this)" class="btn btn-new2">放弃</a>
										
										
									
								</div>
								<!-- /.panel-footer -->
							</div>
						</section>
					</div>
				
			</div>
			
			
  
  

<ul class="pagination">
	
	
	
	
		
			<li class="disabled">
		      <a aria-label="Previous">
		        <span aria-hidden="true">«</span>
		      </a>
		    </li>

				<li class="active"><a>1</a></li>

			<li class="disabled">
		      <a aria-label="Next">
		        <span aria-hidden="true">»</span>
		      </a>
		    </li>
		
		
	
	
	
	
	<li class="disabled"><a>共1条 1页</a></li>
</ul>

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

        <footer id="footer"></footer>
	<script src="./scrips/jquery-1.11.0.min.js"></script>
	<script src="./scrips/bootstrap.min.js"></script>
	<script src="./scrips/jquery.sparkline.min.js"></script>
	<script src="./scrips/bootstrap-switch.min.js"></script>
	<script src="./scrips/bootstrap-select.min.js"></script>
	<script src="./scrips/bootstrap-filestyle.js"></script>
	<script src="./scrips/summernote.min.js"></script>
	<script src="./scrips/script.js"></script>
	
	<script type="text/javascript" src="./猿圈 挑战管理_files/pagination.js"></script>
	
	<script src="./猿圈 挑战管理_files/zmUtil.js"></script>
	<script type="text/javascript">
		var page = 1;
		$PageCtrl.callBackFun = userRecruitPageTurn;
		function userRecruitPageTurn(pCode){
			location.href="/user/recruit/user_recruit.html?pageCode=" + pCode + "&isHistory="+$("#is_history_id").val()+"&userState=" + $("#user_state_id").val();
		}
		function fdisabled(obj){
			$(obj).attr("disabled",true);
		}
	</script>
    </form>
</body>
</html>
