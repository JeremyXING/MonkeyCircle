<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="companyIndex.aspx.cs" Inherits="Web.companyIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="div_company_mini" style="display: none; position: fixed; right: 0px; bottom: 0px; width: 403px; height: 378px; overflow: hidden; z-index: 10089; cursor: move;"><div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:#fff;text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">猿圈</div><div title="缩小" mini_narrow="缩小" mini_recover="还原" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="切换到正常窗口" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="关闭" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:403px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%"></iframe></div></div><div id="kfivtwin" style="display: none; overflow: visible;"><div id="acc_title" class="Lelem" minheight="100" minwidth="100" maxheight="400" maxwidth="400" style="position: relative; z-index: 10000; overflow: visible;"><div class="Lelem" type="img" style="display: block; cursor: default; position: absolute; top: 51px; left: 3px; z-index: 10001; width: 394px; height: 196px;"><img style="width: 394px; height: 196px;" src="./猿圈 企业首页_files/commonbg_4.png"></div><div style="display: block; cursor: default; position: absolute; top: 60px; left: 15px; z-index: 10002; width: 97px; height: 20px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 14px; line-height: 20px; font-family: 宋体;" iseditable="1">53KF在线客服</span></div><div style="display: block; cursor: pointer; position: absolute; top: 70px; left: 371px; z-index: 10003; width: 10px; height: 8px;" onclick="onliner_zdfq=3;hidden_ivt();;" type="img" class="Lelem"><img src="./猿圈 企业首页_files/closebtn_3.png" style="width: 10px; height: 8px;"></div><div style="display: block; cursor: default; position: absolute; top: 97px; left: 13px; z-index: 10004; width: 127px; height: 120px;" type="img" class="Lelem"><img src="./猿圈 企业首页_files/otherimg_6.png" style="width: 127px; height: 120px;"></div><div style="display: block; cursor: default; position: absolute; top: 94px; left: 160px; z-index: 10005; width: 140px; height: 42px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 29.4px; line-height: 42px; font-family: 黑体;" iseditable="1">欢迎咨询</span></div><div class="Lelem" type="text" style="display: block; cursor: default; position: absolute; top: 136px; left: 164px; z-index: 10006; width: 233px; height: 18px;"><span iseditable="1" style="vertical-align: top; font-size: 12.6px; line-height: 20px; font-family: 宋体;">53KF.com，感谢大家的支持！</span></div><div style="display: block; cursor: default; position: absolute; top: 157px; left: 166px; z-index: 10007; width: 190px; height: 17px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 12px; line-height: 17px;" iseditable="1">请问有什么可以帮您？</span></div><div class="Lelem" type="img" onclick="onliner_zdfq=2;hz6d_is_exist(&quot;window.open(%22http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26language%3Dzh-cn%26charset%3Dgbk%26username%3D%26userinfo%3D%26introurl%3D%26lyurl%3D%26lytype%3D0%26copartner%3D%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcooper%252Foxcoder_corp_index.html%26keyword%3Dhttps%253A%252F%252Fwww.baidu.com%252Flink%253Furl%253DnpXvz8F1uxBzRXOyW2Z2EeVDMeOyNX0ZWEqWTNybUCmPKhm14A3y3RKQoRqgtYKN%2526wd%253D%2526eqid%253Db835378f0086c42300000003572053d3%26brief%3D%26logo%3D%26question%3D%26tfrom%3D2%22%2C%22_blank%22%2C%22height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno%22)&quot;);hidden_ivt();;" style="display: block; cursor: pointer; position: absolute; top: 180px; left: 165px; z-index: 10008; width: 128px; height: 39px;"><img style="width: 128px; height: 39px;" src="./猿圈 企业首页_files/clickbtn_11.png"></div><div style="display: block; cursor: pointer; position: absolute; top: 222px; left: 18px; z-index: 10009; width: 110px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; color: #666; line-height: 17px; font-family: 宋体;" iseditable="1">这是什么工具？</span></a></div><div style="display: block; cursor: pointer; position: absolute; top: 224px; left: 294px; z-index: 100010; width: 106px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; line-height: 17px; color: #666; font-family: 宋体;" iseditable="1">Powered by 53KF</span></a></div></div></div><div id="kfivteffect" style="display: none; position: absolute; width: 0px; height: 0px; overflow: hidden; border: 1px solid rgb(27, 136, 208); z-index: 10087; background: rgb(214, 238, 253);"></div>
        <iframe id="kfiframe" src="" frameborder="0" scrolling="no" style="display: none; overflow: hidden;"></iframe><div id="iconDiv1" style="height: auto; width: auto;"><iframe style="position:absolute;z-index:7998;width:0px;height:0px;top:0px;left:0px;" frameborder="0"></iframe><div id="iconDivMain1" style="z-index: 10085; left: 1229px; top: 200px; width: 33px; height: 135px; position: absolute;"><div id="kf_hidden1" onclick="set_auto_hidden(1)" onmouseover="show_kf_icons(1);" onmouseout="hidden_kf_icon(1);" style="position: absolute; top: 0px; right: 0px; z-index: 9000; display: none;"><div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 151px; height: 106px; position: relative; z-index: 10000; cursor: pointer;"><div class="Lelem" type="img" onclick="hz6d_is_exist(&#39;setIsinvited()%3Bwindow.open(#liyc#http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26language%3Dzh-cn%26lytype%3D0%26charset%3Dgbk%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcooper%252Foxcoder_corp_index.html%26keyword%3Dhttps%253A%252F%252Fwww.baidu.com%252Flink%253Furl%253DnpXvz8F1uxBzRXOyW2Z2EeVDMeOyNX0ZWEqWTNybUCmPKhm14A3y3RKQoRqgtYKN%2526wd%253D%2526eqid%253Db835378f0086c42300000003572053d3%26tfrom%3D1%26tpl%3Dcrystal_blue#liyc#%2C%20#liyc#_blank#liyc#%2C%20#liyc#height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno#liyc#)&#39;);" style="display: block; cursor: pointer; position: absolute; top: 33px; left: 11px; z-index: 10001; width: 134px; height: 36px;"><img src="./猿圈 企业首页_files/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div></div><div><div id="auto_hidden1" style="z-index: 9001; display: block; right: 0px; top: 0px; width: 33px; height: 135px; overflow: hidden; position: absolute; background: url(http://www15.53kf.com/img/kflogo/ssan/right/blue.gif) no-repeat;" onmouseover="show_kf_icons(1);"></div></div></div></div>
<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="E:\学习\net\我的页面\猿圈 企业首页.htm" style="padding: 0;">
				<img src="./猿圈 企业首页_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href=".\猿圈 企业首页.htm">首页</a>
				</li>
				<li class="">
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
        <div class="col-md-9">
          
            <div class="col-md-12 top shadow-effect">
                    <li class="col-md-4 stat" style="text-align:center;">
                        <ul>
                            <h1 style="font-size:100px;"><a href="http://www.oxcoder.com/cooper/index.html">0</a></h1>
                            <li>正在发布中的挑战</li>
                            <li>还可发布的挑战：<span class="badge badge-info">1</span>个</li>
                            <li class="mcButton">
                                <a href="http://www.oxcoder.com/cooper/new/recruit/new_recruit_1.html"><button class="btn btn-new1">新增挑战邀请</button></a>
                            </li>
                        </ul>
                    </li>
                    <li class="col-md-4 stat" style="text-align:center;">
                        <ul>
                          <h1 style="font-size:100px;"><a href=".\企业 挑战管理.htm">0</a></h1>
                            <li>今天接受挑战数</li>
                            <li>共帮您找到的人才：<span class="badge badge-info">0</span>个</li>
                            <li class="mcButton">
                                <a href=".\企业 挑战管理.htm"><button class="btn btn-new1">查看挑战报告</button></a>
                            </li>
                        </ul>
                    </li>
                    <li class="col-md-4 stat" style="text-align:center;">
                        <ul>
                          <h1 style="font-size:100px;"><a href="http://www.oxcoder.com/cooper/recommended/talent/index.html">10</a></h1>
                            <li>剩余猿民币</li>
							<li>可用于查看人才数：<span class="badge badge-info">10</span>个</li>
                            <li class="mcButton">
                                <a href="http://www.oxcoder.com/cooper/recommended/talent/index.html"><button class="btn btn-new1">去打赏</button></a>
                            </li>
                        </ul>
                    </li>
            </div>

            <div class="col-md-12 ac-group shadow-effect">
              <div class="panel panel-default" style="margin-bottom:0;">
                  <div class="panel-heading">
                      <h3 class="panel-title"><img src="./猿圈 企业首页_files/challengemg.png">挑战管理</h3>
                  </div>
                  <div class="panel-body">
                      <a href="http://www.oxcoder.com/cooper/new/recruit/new_recruit_1.html" class="sub-action">新增挑战邀请</a><!--  <a href="cooper/recommended/talent/index.html" class="sub-action">筛选人才</a>--><a href="http://www.oxcoder.com/cooper/index.html" class="sub-action">邀请人才参加挑战</a>
                  </div>
                  <div class="panel-heading">
                      <h3 class="panel-title"><img src="./猿圈 企业首页_files/control.png">控制面板</h3>
                  </div>
                  <div class="panel-body">
                      <a href="http://www.oxcoder.com/cooper/pay/view_balance.html" class="sub-action">去打赏</a><a href="http://www.oxcoder.com/cooper/cooperInfo/view_cooper_info.html" class="sub-action">修改企业信息</a><a href="http://www.oxcoder.com/cooper/cooperInfo/account_binding.html" class="sub-action">帐号设置</a>
                  </div>
              </div>
            </div>
        </div>
        <div class="col-md-3">
          <div class="panel-user">
            <div class="panel-heading">
              <div class="panel-title">
                <div class="media">
                  <a class="pull-left">
                    <img src="./猿圈 企业首页_files/d8c2208b-4354-43ed-a789-3cb64852bb75.png" class="media-object">
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
          <div class="panel panel-outline">
            <div class="panel-heading">
                <h3 class="panel-title">联系我们</h3>
            </div>
            <div class="panel-body">
                <p>客服电话：010-57407961</p>
                <p>客服邮箱：zyh@oxcoder.com</p>
                <p>客服微信：oxcoder_com</p>
                <p>QQ交流群：77590762</p>
            </div>
        </div>
        <!--  
        <button class="btn btn-info">猿圈使用指南</button>
        -->
        </div>

      </div>
    </div>
    <!-- /.row -->
  </div>
	<!-- /.container -->
	<script src="./猿圈 企业首页_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 企业首页_files/bootstrap.min.js"></script>
	<script src="./猿圈 企业首页_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 企业首页_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 企业首页_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 企业首页_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 企业首页_files/summernote.min.js"></script>
	<script src="./猿圈 企业首页_files/script.js"></script>
	
	<script type="text/javascript" src="./猿圈 企业首页_files/pagination.js"></script>
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
				</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./猿圈 企业首页_files/pic.gif"></a></span><script src="./猿圈 企业首页_files/z_stat.php" type="text/javascript"></script><script src="./猿圈 企业首页_files/core.php" charset="utf-8" type="text/javascript"></script>
			</div>
		</div>
	</div>
</div>
    </div>
    </form>
</body>
</html>
