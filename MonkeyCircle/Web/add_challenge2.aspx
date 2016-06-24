<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_challenge.aspx.cs" Inherits="Web.add_challenge2" %>

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
<link rel="stylesheet" href="./css/jquery-confirm.min.css"/>
<link href="./css/style_new.css" rel="stylesheet" type="text/css"/>
<script src="./scripts/html5shiv.js"></script>
<script src="./scripts/respond.min.js"></script>

<style type="text/css">
.companyTags li {
	margin: 5px 5px 0 0;
}
</style>
<style type="text/css">.jqstooltip 
{ position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}

</style></head>
<body>
    <input id="level" name="level" type="hidden" value="0" runat="server" />
    <input id="type" name="type" type="hidden" value="0" runat="server" />
    <input id="quiz_fi" name="quiz_fi" type="hidden" value="0" runat="server" />
    <input id="quiz_se" name="quiz_se" type="hidden" value="0" runat="server" />
    <input id="quiz_th" name="quiz_th" type="hidden" value="0" runat="server" />
    <script type="text/javascript">
        function validateSession() {
            var k = 2
            if (k == null) {
                location.replace("session-timeout-log.htm");
            }
        }
    </script>
	
	
    <div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	    <div class="container">
		    <div class="navbar-header">
			    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand hidden-sm" href="./companyIndex.aspx" style="padding: 0;">
				    <img src="./image/wlogo_sm.png" style="max-height: 35px;margin:7px;"/>
			    </a>
		    </div>
		    <div class="navbar-collapse collapse" role="navigation">
			    <ul class="nav navbar-nav">
				    <li class="">
					    <a href="./companyIndex.aspx">首页</a>
				    </li>
				    <li class="active">
					    <a href="./company_challenge_management.aspx">挑战管理</a>
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
                                                    <div class="alert alert-info" style="text-align: center"
                                                        role="alert">
                                                        还没有选择测试题目
                                                        <a href="hr-set-challenge.action?relevel=3&flag=random" style="margin-left: 20px;">智能生成</a>
                                                    </div>
                                                </div>
                                                <font id="wrongTip" color="red" runat="server"> </font>
                                                <font id="rightTip" color="green" runat="server"> </font>
                                            </div>
                                            <div class="row col-md-12">
                                                <h4 class="pull-left">挑战项目</h4>
                                                <div class="pull-right">
                                                    <div style="display: inline-block; vertical-align: top;">
                                                        <form class="input-group" style="width: 200px"
                                                            action="hr-set-challenge.action" method="post">
                                                            <input type="hidden" name="flag" value="difficulty" />
                                                            <input type="hidden" name="pid" value="0" />
                                                            <input type="hidden" name="exercise" value="" />
                                                            <input type="hidden" name="difficulty" value="" />
                                                            <input name="keyword" class="form-control" placeholder="请输入关键字" value="">
                                                        
                                                            <span class="input-group-btn">
                                                                <button type="submit" class="btn">
                                                                    <i class="fa fa-search"></i>
                                                                </button>
                                                            </span>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row col-md-12">
                                                <p class="text-muted">选择智能生成后，我们会根据您的职位关键字与薪资智能匹配最合适的试题</p>
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
                                                                                <h4>&#25163;&#21183;&#32553;&#25918;&#25991;&#26412;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=394&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android&#35302;&#25511;</li>
                                                                                <li>TextView</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#26816;&#27979;&#25671;&#26179;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=395&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>&#21152;&#36895;&#20256;&#24863;&#22120;</li>
                                                                                <li>&#25391;&#21160;&#22120;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#31383;&#21475;&#25238;&#21160;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=396&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>&#30417;&#21548;&#20107;&#20214;</li>
                                                                                <li>&#21160;&#30011;</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#21457;&#36865;&#30701;&#20449;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=401&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Intent</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25391;&#21160;&#22120;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=402&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>&#25391;&#21160;&#22120;</li>
                                                                                <li>&#23631;&#24149;&#20107;&#20214;&#22788;&#29702;</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#31169;&#20154;&#30005;&#35805;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=7&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Intention </li>
                                                                                <li>&#25171;&#30005;&#35805;</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25773;&#25918;&#36827;&#24230;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=8&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#32447;&#31243;</li>
                                                                                <li>Thread</li>
                                                                                <li>&#25511;&#20214;</li>
                                                                                <li>ProgressBar</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#22825;&#27668;&#36890;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=9&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Json&#35299;&#26512;</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#38899;&#25928;&#25773;&#25918;&#22120;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=26&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>SoundPool</li>
                                                                                <li>&#25773;&#25918;&#38899;&#25928;</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#30701;&#20449;&#25318;&#25130;&#22120;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=27&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#24191;&#25773;</li>
                                                                                <li>BroadcastReceiver</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#27880;&#20876;&#30331;&#24405;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=156&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>http post &#30331;&#24405;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25105;&#30340;&#24405;&#38899;&#26426;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=157&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#38899;&#39057;&#25805;&#20316;</li>
                                                                                <li>&#24405;&#21046;&#38899;&#39057;</li>
                                                                                <li>&#25773;&#25918;&#38899;&#39057;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#32852;&#31995;&#20154;&#31649;&#29702;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=42&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#32852;&#31995;&#20154;</li>
                                                                                <li>&#36890;&#35759;&#24405;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#36817;&#22330;&#24212;&#29992;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=43&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>NFC</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#35821;&#38899;&#20449;&#31665;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=179&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#35821;&#38899;&#20449;&#31665;</li>
                                                                                <li>voicemail</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#26085;&#35760;&#26412;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=180&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#25991;&#20214;&#23384;&#20648;</li>
                                                                                <li>Fileinputstream</li>
                                                                                <li>Fileoutputstream</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#32447;&#31243;&#38388;&#36890;&#20449;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=50&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android </li>
                                                                                <li>&#32447;&#31243;&#38388;&#36890;&#35759;</li>
                                                                                <li>MessagerLooper handler</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#31169;&#20154;&#30456;&#26426;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=51&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Camere</li>
                                                                                <li>&#30456;&#26426;</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#32472;&#22270;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=52&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>SurfaceView</li>
                                                                                <li>&#30011;&#22270;</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#31508;&#35760;&#26412;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=65&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#31508;&#35760;</li>
                                                                                <li>notepad</li>
                                                                                <li>contentprovider</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#31616;&#21333;&#30340;&#24322;&#27493;&#20219;&#21153;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=71&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android </li>
                                                                                <li>&#24322;&#27493;&#20219;&#21153; </li>
                                                                                <li>AsyncTask</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>Android&#26381;&#21153;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=72&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android </li>
                                                                                <li>Service</li>
                                                                                <li>&#26381;&#21153;</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#24191;&#25773;&#26381;&#21153;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=73&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>BroadcastReceiver</li>
                                                                                <li>Service</li>
                                                                                <li>&#24191;&#25773; &#26381;&#21153;</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#21457;&#36890;&#30693;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=75&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>PeningIntent </li>
                                                                                <li>Intent</li>
                                                                                <li>Notifoncation</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#32472;&#22270;&#24212;&#29992;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=76&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android </li>
                                                                                <li>&#32472;&#22270; &#30011;&#31508;</li>
                                                                                <li>Canvas</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#30005;&#27744;&#30417;&#25511;&#22120;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=89&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#24191;&#25773;</li>
                                                                                <li>alarmmanager</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#38899;&#20048;&#25773;&#25918;&#22120;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=94&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>MediaPlayer</li>
                                                                                <li>&#22810;&#23186;&#20307;</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#39564;&#35777;&#30721;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=121&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Check</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#19979;&#36733;&#22270;&#29255;&#65288;&#32593;&#32476;&#65289;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=103&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Http</li>
                                                                                <li>File</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#38899;&#20048;&#25773;&#25918;&#25511;&#21046;&#25353;&#38062;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=118&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>handlooper</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#21152;&#36733;&#22270;&#29255;&#65288;&#26381;&#21153;&#65289;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=104&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Service</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>WIFI&#26816;&#27979;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=188&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Wifi</li>
                                                                                <li>Adapter</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#20256;&#24863;&#22120;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=189&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#20256;&#24863;&#22120;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25991;&#20214;&#23384;&#20648;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=190&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>DataOutPutStream</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25163;&#26426;&#28909;&#28857;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=191&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Wifi</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#35838;&#31243;&#34920;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=192&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>TableLayout</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25163;&#21183;&#35782;&#21035;&#65288;&#30011;&#31508;&#65289;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=193&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#25163;&#21183;</li>
                                                                                <li>Canvas</li>
                                                                                <li>Paint</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#22812;&#38388;&#27169;&#24335;&#20999;&#25442;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=194&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#25968;&#25454;&#20849;&#20139;</li>
                                                                                <li>&#22812;&#38388;&#27169;&#24335;&#20999;&#25442;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#36718;&#25773;&#24191;&#21578;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=195&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>ViewPager</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25671;&#19968;&#25671;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=196&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#21152;&#36895;&#20256;&#24863;&#22120;</li>
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
                                                                                <i class="fa fa-star"></i>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#36305;&#39532;&#28783;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=198&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>textView</li>
                                                                                <li>&#36305;&#39532;&#28783;&#25928;&#26524;</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#25163;&#30005;&#31570;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=382&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Camara</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#36890;&#35759;&#24405;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=384&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>Content Provider</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#33258;&#23450;&#20041;&#22278;&#24418;&#36827;&#24230;&#26465;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=385&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>onMeasure</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#30005;&#23376;&#40614;&#20811;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=386&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>AudioRecord</li>
                                                                                <li>AudioTrack</li>
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
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#35821;&#38899;&#22791;&#24536;&#24405;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=387&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>MediaRecorder</li>
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
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body" style="padding-bottom: 0;">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>&#33258;&#23450;&#20041;&#23548;&#33322;&#39029;</h4>
                                                                                <h5 class="text-muted">by&nbsp;&#29503;&#22280;&#22242;&#38431;</h5>
                                                                            </div>
                                                                            <div class="pull-right client-info">
                                                                                <a style="color: white" href="hr-set-challenge.action?flag=new&relevel=3&pid=389&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" style="min-height: 68px;">
                                                                            <ul class="companyTags">
                                                                                <li>Android</li>
                                                                                <li>&#33258;&#23450;&#20041;&#28369;&#21160;&#23548;&#33322;&#39029;</li>
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
                                </div>
                            </div>
                        </div>
                    </section>
			</div>
		</div>
    </div>
	<!-- /.container -->
	<footer id="footer">
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
	</script>


</body>

</html>
