<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndividualIndex.aspx.cs" Inherits="Web.IndividualIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href=".">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta content="猿圈网是互联网人的笔试平台,帮助企业高效省时地招募到最优秀的技术人才,企业笔试首选猿圈网。" name="description">
<meta content="互联网招聘,笔试,在线笔试,编程笔试,企业笔试" name="keywords">
<title>猿圈 首页</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/font-awesome.min.css" rel="stylesheet">
<link href="./css/bootstrap-switch.min.css" rel="stylesheet">
<link href="./css/bootstrap-select.min.css" rel="stylesheet">
<link href="./css/summernote.css" rel="stylesheet">
<link href="./css/new.min.css" rel="stylesheet">
<link href="./css/style_new.css" rel="stylesheet">
<style type="text/css">
.companyTags li {
	margin: 5px 10px 0 0;
}
</style>
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
				<img src="./image/wlogo_sm.png" style="max-height: 35px;margin:7px;"/>
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="http://www.oxcoder.com/user/index.html">首页</a>
				</li>
				<li class="">
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

	<div class="" style="margin:-20px 0 20px 0;">
		<section id="middle">
			<div>
				<div id="carousel1" class="carousel carousel-style-3 slide" data-ride="carousel">
					<!-- Indicators -->
					
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="./image/code22.png" alt="First slide">
							<div class="container">
								<div class="carousel-caption">
									<h1>hire.through(code)</h1>
									<h2>= 招到优秀程序员的最佳方式</h2>
									<br>
									<p>让人才更快地脱颖而出，让企业做出更明智的招聘决策</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.carousel -->
			</div>
		</section>
	</div>
	
	<div class="container">
		<div class="row">
			
			<div class="col-md-8 col-no-left-padding col-md-offset-2">
				<section class="middle">
					<div class="col-md-2 col-no-left-padding" style="margin-bottom:10px;">
                  
                        <asp:DropDownList runat="server" id="TechSelectDropDownList" class="form-control" AutoPostBack="True"
                            OnSelectedIndexChanged="TechSelectChanged">

                            <asp:ListItem> 技术方向 </asp:ListItem>
                            <asp:ListItem> Java </asp:ListItem>
                            <asp:ListItem> Android </asp:ListItem>
                            <asp:ListItem> iOS </asp:ListItem>
                            <asp:ListItem> C语言 </asp:ListItem>
                            <asp:ListItem> C++</asp:ListItem>
                            <asp:ListItem> php </asp:ListItem>
                            <asp:ListItem> Python </asp:ListItem>

                        </asp:DropDownList>
					</div>
					<div class="col-md-2 col-no-left-padding" style="margin-bottom:10px;">
                  
                        <asp:DropDownList runat="server" id="PaySelectDropDownList" class="form-control" AutoPostBack="True"
                            OnSelectedIndexChanged="PaySelectChanged">

                            <asp:ListItem>起始薪资</asp:ListItem>
                            <asp:ListItem>2K~5K</asp:ListItem>
                            <asp:ListItem>5K~8K</asp:ListItem>
                            <asp:ListItem>8K~10K</asp:ListItem>
                            <asp:ListItem>10K~12K</asp:ListItem>
                            <asp:ListItem>12K~15K</asp:ListItem>
                            <asp:ListItem>15K以上</asp:ListItem>

                        </asp:DropDownList>
					</div>
					<div class="col-md-2 col-no-left-padding" id="warp" style="margin-bottom:10px;">
                        <asp:DropDownList ID="AreaSelectDropDownList" class="form-control" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="AreaSelectChanged">

                            <asp:ListItem>全部地区</asp:ListItem>
                            <asp:ListItem>北京市</asp:ListItem>
                            <asp:ListItem>天津市</asp:ListItem>
                            <asp:ListItem>河北省</asp:ListItem>
                            <asp:ListItem>陕西省</asp:ListItem>
                            <asp:ListItem>内蒙古</asp:ListItem>
                            <asp:ListItem>辽宁省</asp:ListItem>
                            <asp:ListItem>吉林省</asp:ListItem>
                            <asp:ListItem>黑龙江省</asp:ListItem>
                            <asp:ListItem>上海市</asp:ListItem>
                            <asp:ListItem>江苏省</asp:ListItem>
                            <asp:ListItem>浙江省</asp:ListItem>
                            <asp:ListItem>安徽省</asp:ListItem>
                            <asp:ListItem>福建省</asp:ListItem>
                            <asp:ListItem>江西省</asp:ListItem>
                            <asp:ListItem>山东省</asp:ListItem>
                            <asp:ListItem>河南省</asp:ListItem>
                            <asp:ListItem>湖北省</asp:ListItem>
                            <asp:ListItem>湖南省</asp:ListItem>
                            <asp:ListItem>广东省</asp:ListItem>
                            <asp:ListItem>广西省</asp:ListItem>
                            <asp:ListItem>海南省</asp:ListItem>
                            <asp:ListItem>重庆市</asp:ListItem>
                            <asp:ListItem>四川省</asp:ListItem>
                            <asp:ListItem>贵州省</asp:ListItem>
                            <asp:ListItem>云南省</asp:ListItem>
                            <asp:ListItem>西藏</asp:ListItem>
                            <asp:ListItem>陕西省</asp:ListItem>
                            <asp:ListItem>甘肃省</asp:ListItem>
                            <asp:ListItem>青海省</asp:ListItem>
                            <asp:ListItem>宁夏</asp:ListItem>
                            <asp:ListItem>新疆</asp:ListItem>
                            <asp:ListItem>香港</asp:ListItem>
                            <asp:ListItem>澳门</asp:ListItem>
                            <asp:ListItem>台湾</asp:ListItem>

                        </asp:DropDownList>
                       
						<div style="display: none">
							<select class="form-control city" style="display:none"></select>
							<select class="form-control dist" style="display:none"></select>
						</div>
					</div>
					<div style="col-md-6">
						<div class="input-group">
                            <asp:TextBox ID="keyWords_id" runat="server" class="form-control" placeholder="请输入关键词，如公司名称等">


                            </asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="search" runat="server" Text="Button" 
                                    class="fa fa-search" OnClick="search_Click"/>
                                
							</span>

						</div>
					</div>
				</section>
			</div>
			<div class="col-md-4 col-no-left-padding col-md-offset-8" style="margin-top:10px;">
				<section id="middle" style="margin-bottom:20px;">
					排序：
                    <asp:HyperLink ID="HyperLink1" href="javascript:void(0)" onclick="onSelectChange(this,0)" class="btn btn-order " runat="server">时间</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" href="javascript:void(0)" onclick="onSelectChange(this,1)" class="btn btn-order " runat="server">热度</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" href="javascript:void(0)" onclick="onSelectChange(this,2)" class="btn btn-order " runat="server">薪资</asp:HyperLink>
				</section>
			</div>


            <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>  
                     <asp:Label ID="Label1" runat="server" Text="Label">啊啊啊啊</asp:Label>
                 </ItemTemplate>
            </asp:Repeater>

			<div runat="server" class="col-md-12" id="cplb_main" scrollpagination="enabled">
				
					<div class="col-xs-12 col-md-4 col-lg-3">
						<section id="middle">
							<div class="panel panel-default shadow-effect">
								<div class="col-xs-12 panel-header">
									<div class="pull-left">
										<h4 class="line-control">
											<a href="http://www.oxcoder.com/user/view_recruit_detail.html?recruitId=3046">[高级]iOS工程师</a>
										</h4>
										<h4 class="line-control" style="min-height:18px;">
											<a href="http://www.oxcoder.com/user/cooper_info.html?cooperId=2404">世纪创兴（北京）科技有限公司</a>
										</h4>
									</div>
									<div class="pull-right client-info hidden-md">
										<span class="percent text-danger">
											<img class="img-circle" style="width:60px;height:60px" src="./image/99ff536a-d2ff-4954-8688-ff07181aef5c.jpg"/>
										</span>
									</div>
									
										<span class="hot-tag">推荐</span>
									
								</div>
	
								<div class="panel-body ">
									<ul class="list-unstyled">
										<li>月薪： 
											
											15K以上
										</li>
										<li>职位诱惑：</li>
										<li style="min-height:33px;">
											<ul class="companyTags">
												
												
													<li>五险一金</li>
												
													<li>年底双薪</li>
												
													<li>弹性工作</li>
												
											</ul>
										</li>
										<li>试题数量：2</li>
										<li>
											挑战难度：
											
												<i class="fa fa-star"></i>
											
												<i class="fa fa-star"></i>
											
												<i class="fa fa-star"></i>
											
												<i class="fa fa-star"></i>
											
												<i class="fa fa-star"></i>
											
												<i class="fa fa-star"></i>
											
										</li>
										<li>
											<i class="fa fa-calendar"></i>
											2016.03.11~2016.05.11
										</li>
										<li>
											<i class="fa fa-user"></i>
											200人已接受挑战
										</li>
									</ul>
	
								</div>
								<!-- /.panel-body -->
								<div class="panel-footer align-center">
									<a href="http://www.oxcoder.com/user/accepted_recruit.html?recruitId=3046">
										<button class="btn btn-new1" onclick="fdisabled(this)">接受挑战</button>
									</a>
								</div>
								<!-- /.panel-footer -->
							</div>
						</section>
					</div>
	
		</div>
		<!-- /.row -->
	</div>
	<div class="text-center" id="sl_more"></div>
	<!-- /.container -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
						<span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">意见反馈</h4>
				</div>
				<div class="modal-body">
					
						<textarea class="form-control" placeholder="请输入您的反馈意见" style="min-height:200px;"></textarea>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-new1">提交</button>
				</div>
			</div>
		</div>
	</div>
	<script src="./scrips/jquery-1.11.0.min.js"></script>
	<script src="./scrips/bootstrap.min.js"></script>
	<script src="./scrips/all.min.js"></script>
	<script src="./scrips/scrollpagination.js"></script>
	
	<script src="./scrips/jquery.cityselect.js"></script>
	
	<script src="./scrips/zmUtil.js"></script>
	
	<input type="hidden" id="hid_directions_id"/>
	<input type="hidden" id="hid_level_id"/>
	<input type="hidden" id="hid_province_id"/>
	<input type="hidden" id="hid_keyWords_id"/>
	<input type="hidden" id="order_orderWord_id" value="-1"/>
	<input type="hidden" id="order_desc_id" value="false"/>
	<input type="hidden" id="order_desc_id_auto" value="true"/>
    </form>
</body>
</html>
