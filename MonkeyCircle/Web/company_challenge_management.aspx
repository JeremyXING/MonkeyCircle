<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company_challenge_management.aspx.cs" Inherits="Web.company_challenge_management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content="BootstrapStyler"/>
    <title>企业 挑战管理</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet"/>
    <link href="./css/font-awesome.min.css" rel="stylesheet"/>
    <link href="./css/bootstrap-switch.min.css" rel="stylesheet"/>
    <link href="./css/bootstrap-select.min.css" rel="stylesheet"/>
    <link href="./css/style2.css" rel="stylesheet"/>
    <link href="./css/summernote.css" rel="stylesheet"/>
    <link href="./css/summernote-bs3.css" rel="stylesheet"/>
    <link href="./css/style.css" rel="stylesheet" type="text/css"/>
    <link href="./css/bootstrapValidator.min.css" rel="stylesheet" />
    <link href="./css/style_new.css" rel="stylesheet" type="text/css"/>
</head>
<body>
 <form id="form1" runat="server">
    <div id="div_company_mini" style="display: none; position: fixed; right: 0px; bottom: 0px; width: 403px; height: 378px; overflow: hidden; z-index: 10089; cursor: move;">
        <div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:#fff;text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">猿圈</div>
        <div title="缩小" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div>
        <div title="切换到正常窗口" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div>
        <div title="关闭" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div>
        <div id="mini_header_bg_div" style="position:static;width:403px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div>
        <div id="iframe_company_mini_div" style="width:100%;height:100%;">
            <iframe id="iframe_company_mini" width="100%" height="100%"></iframe>
        </div>
    </div>
	
<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="./企业 挑战管理.htm" style="padding: 0;">
				<img src="./image/wlogo_sm.png" style="max-height: 35px;margin:7px;"/>
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href=".\猿圈 企业首页.htm">首页</a>
				</li>
				<li class="active">
					<a href=".\企业 挑战管理.htm">挑战管理</a>
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
							<div class="col-md-9">
								<div class="container-fluid">
									<section>
										<section id="middle">
											<input value="false" id="isHistory_id" type="hidden"/>
											<h2 class="h2-tab">
												<a href="./企业 挑战管理.htm" class="">进行中的挑战</a>
											</h2>
											<h2 class="h2-tab">
												<a href="http://www.oxcoder.com/cooper/index.html?isHistory=true" class="off">挑战历史</a>
											</h2>
											<a href="http://www.oxcoder.com/cooper/new/recruit/new_recruit_1.html">
												<button class="btn btn-new1 pull-right" style="margin-top:20px;">新增挑战邀请</button>
											</a>
										</section>
										<!-- /.page-header -->
                                        
										<div id="content">
											<div class="row">
													<div class="col-md-12">
														<div class="panel panel-default project ">
															<div class="panel-body">
																<div class="row">
																	<!-- new start-->
																	<div class="col-md-5" >
																		<h2 style="margin: 12px 0 2px 0;">
                                                                            <asp:LinkButton ID="typeLB" OnClick="Unnamed1_Click" runat="server"></asp:LinkButton>										
																		</h2>
																		<div style="width: 280px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
                                                                            <asp:Label id="timeLable" CssClass="text-muted" runat="server"></asp:Label>
																			<small class="text-muted">
																					洗扑克牌&nbsp;
																					身份证号判断&nbsp;			
																			</small>
																		</div>
																		<!-- <p class="text-muted" style="padding: 0;margin: 0;">2015/01/12</p> -->
																	</div>
                                                                    </div>
																	<div class="col-md-2">
																		<ul class="list-unstyled" style="margin: 7px 0;">
																			<li>
																				<span class="badge badge-info">0</span>
																				个新接受
																			</li>
																			<li>
																				<span class="badge badge-danger">0</span>
																				个新完成
																			</li>
																		</ul>
																	</div>
																	<div class="col-md-2">
																		<ul class="list-unstyled" style="margin: 20px 0;">
																			<li>
																				<span class="red">0.0</span>
																				%已合格
																			</li>
																		</ul>
																	</div>
																	<div class="col-md-3">
																		<a href=".\猿圈 去筛选.htm">
																			<button type="button" class="btn btn-new1" style="">去筛选</button>
																		</a>
																		
																			<a href="http://www.oxcoder.com/cooper/invite/user/invite_user.html?recruitId=3141">
																				<button type="button" class="btn btn-new1" style="margin: 16px 5px;">邀请</button>
																			</a>
																		
																	</div>
																	<!-- new end-->
															</div>
																<!-- /.row -->
														</div>
															<!-- /.panel-footer -->
													</div>
														<!-- /.panel -->
											</div>
												
										</div>
											<!-- /.row -->
                                        
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
										<!-- /#content -->
									</section>
								</div>
								<!-- /.container-fluid  -->
							</div>
<div class="col-md-3 profile-info" id="profile_info_div">
<div class="panel-user">
	<div class="panel-heading">
		<div class="panel-title">
			<div class="media">
				<a class="pull-left">
					<img src="./image/d8c2208b-4354-43ed-a789-3cb64852bb75.png" class="media-object"/>
				</a>
				<div class="media-body">
					<h4 class="media-heading">
						<!-- <span class="welcome">Hello</span> -->
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
	<!-- /.panel-body -->
</div>
<!-- /.panel -->
</div>
                        </div>
					</div>
					<!-- /#content -->
				</section>
			</div>
		</div>
		<!-- /.row -->
	</div>
						
	<!-- /.container -->
	<script src="./scripts/jquery-1.11.0.min.js"></script>
	<script src="./scripts/bootstrap.min.js"></script>
	<script src="./scripts/jquery.sparkline.min.js"></script>
	<script src="./scripts/bootstrap-switch.min.js"></script>
	<script src="./scripts/bootstrap-select.min.js"></script>
	<script src="./scripts/bootstrap-filestyle.js"></script>
	<script src="./scripts/summernote.min.js"></script>
	<script src="./scripts/script.js"></script>
	<script type="text/javascript" src="./scripts/pagination.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#profile_info_div").load("cooper/cooper_left_info.html");
		});
		$PageCtrl.callBackFun = recruitPageTurn;
		function recruitPageTurn(pCode){
			location.href="/cooper/index.html?pageCode=" + pCode + "&isHistory=" + $("#isHistory_id").val();
		}
	</script>
	<!-- 引入footer 必须在下边否则js出错 -->

<div class="afooter" style="">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				© 2016 oxcoder.com
				<a href="http://www.oxcoder.com/contactus.html">联系我们</a>
				<a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a>
				<a href="http://form.mikecrm.com/f.php?t=rJmyZe" target="_blank">意见反馈</a>
				<script type="text/javascript">
					var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
					document.write(
							unescape(
									"%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" 
									+ cnzz_protocol
									+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"
							)
					);
				</script>
                <span id="cnzz_stat_icon_1253509620">
                    <a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./image/pic.gif"/>
                    </a>
                </span>
                <script src="./php/z_stat.php" type="text/javascript"></script>
                <script src="./php/core.php" charset="utf-8" type="text/javascript"></script>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
//如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
window.onload=function(){ 
    if (($(document.body).height() + 50) < $(window).height()) {
        $(".afooter").addClass("navbar-fixed-bottom");
    };
}
</script>
<script type="text/javascript" src="./php/kf.php"></script>



<script id="hz6d_flp_jquery" src="./php/jquery-1.4.2.flp.js" charset="utf-8" type="text/javascript"></script>
</form>
</body>
</html>
