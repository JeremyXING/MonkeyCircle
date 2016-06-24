<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_challenge3.aspx.cs" Inherits="Web.add_challenge3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 新建挑战邀请</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/font-awesome.min.css" rel="stylesheet">
<link href="./css/bootstrap-switch.min.css" rel="stylesheet">
<link href="./css/bootstrap-select.min.css" rel="stylesheet">
<link href="./css/style.css" rel="stylesheet">
<link href="./css/summernote.css" rel="stylesheet">
<link href="./css/summernote-bs3.css" rel="stylesheet">
<link href="./css/style.css" rel="stylesheet" type="text/css">

<link href="./css/fileinput.min.css" rel="stylesheet">

<link rel="stylesheet" href="./css/jquery-confirm.min.css">
<!-- Max css -->
<link href="./css/style_new.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/bootstrapValidator.min.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
	.mcButton{
      margin-top: 15px;
    }
    .ex-totop2 {
        display: none;
        overflow: hidden;
        width: 0px;
        height: 0px;
        border: 50px solid #30d2cc;
        border-color: #30d2cc #fff;
        border-width: 0 10px 10px 10px;
        position: relative;
        left: 48px;
        top: 0;
    }
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}
</style></head>
<body>
	<form id="form1" runat="server">
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
			<div class="col-md-9">
				<h2 class="h2-tab">[初级]Java工程师-邀请挑战</h2>
				<p class="text-muted">您可以邀请其他渠道获取的人才到猿圈，通过挑战来识别他们的能力。</p>
				<p style="color:#4A90E2">猿圈小提示：每邀请一位人才将会扣除1个猿民币。</p>
                    
					<div class="form-group" id="one">
						<label>
							<span class="grey">输入邮箱地址(剩余猿民币：<span id="su_resume_span_view_id">10</span>)</span>
						</label>
						<input id="emails" name="user_emails" class="form-control" placeholder="多个邮件地址请用&#39;,&#39;分隔" data-bv-field="user_emails" runat="server" >
					</div>
         
					
					<div class="form-group">
						<div class="col-md-12 col-no-left-padding">
							<label>
								<span class="grey">邮件主题</span>
							</label>
						</div>
						<input id="email_subject_id" readonly="" type="text" name="email_subject" class="form-control" value="[北京猿圈科技有限责任公司]-在线笔试邀请函" data-bv-field="email_subject">
						<span class="help-block has-error" id="hint_email_subject"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email_subject" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件主题</small></span>
					</div>
					<div class="form-group">
						<label>
							<span class="grey">邮件内容</span>
						</label>
						<textarea readonly="" name="email_content" rows="9" class="form-control" data-bv-field="email_content">您好：&lt;br&gt;我们非常高兴的通知您，通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[职位]的在线编程挑战，希望您能完成！&lt;br&gt;点击下面的链接进入在线编程挑战: :&lt;br&gt;[链接]。&lt;br&gt;以下是您的登录信息:&lt;br&gt;用户名：[用户名]&lt;br&gt;密码[密码]&lt;br&gt;感谢您的配合！&lt;br&gt;&lt;br&gt;[公司名]&lt;br&gt;[时间]</textarea>
						<span class="help-block has-error" id="hint_email_content"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email_content" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件内容</small></span>
					</div>
					
					<div class=" pull-right">
                        <asp:Button ID="Button1" runat="server" class="btn btn-new1" Text="邀请" OnClick="Button1_Click"/>
						
						<a href="http://www.oxcoder.com/cooper/index.html" class="btn btn-default" style="margin-left:10px;">返回</a>
					</div>
			</div>
			<div class="col-md-3 profile-info" id="profile_info_div">




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
<!-- /.panel -->
</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer"></footer>
	<script src="./scripts/jquery-1.11.0.min.js"></script>
	<script src="./scripts/bootstrap.min.js"></script>
	<script src="./scripts/jquery.sparkline.min.js"></script>
	<script src="./scripts/bootstrap-switch.min.js"></script>
	<script src="./scripts/bootstrap-select.min.js"></script>
	<script src="./scripts/bootstrap-filestyle.js"></script>
	<script src="./scripts/summernote.min.js"></script>
	<script src="./scripts/bootstrapValidator.min.js"></script>
	<script src="./scripts/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="./scripts/jquery.form.js"></script>
	
	<script type="text/javascript" src="./scripts/jquery-confirm.min.js"></script>
	
	<script src="./scripts/fileinput.min.js"></script>
	<script src="./scripts/fileinput_locale_zh.js"></script>
	
	<script src="./scripts/zmUtil.js"></script>

        </form>
</body>

</html>
