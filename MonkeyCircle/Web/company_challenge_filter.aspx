<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company_challenge_filter.aspx.cs" Inherits="Web.company_challenge_filter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content="BootstrapStyler"/>
    <title>猿圈 去筛选</title>
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
					    <a href=".\company_challenge_management">挑战管理</a>
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
			<div id="titleDIV" class="col-xs-12 col-no-left-padding" runat="server">
                <asp:LinkButton class="btn btn-new1 pull-right" style="margin-top: 20px;" runat="server">关闭该挑战</asp:LinkButton>
			</div>
			<div>
				<span class="help-block has-error">
					<small style="margin-left: 20px; display: none;" id="hint1" class="help-block">请选择挑战类型及等级</small>
				</span>
			</div>
			<small>
				<a href=".\company_challenge_management.aspx"><i class="imoon imoon-arrow-left2"></i>返回</a>
			</small>
		</div>
		<div class="col-md-12">
			<div id="chaInfoDIV" class="challenge-simple-desc">
				<span id="timeSpan" class="desc-label" runat="server"></span>
				<span class="desc-label">接受挑战：1</span>
				<span class="desc-label">完成挑战：1</span>
				<span class="desc-label">所选项目：洗扑克牌&nbsp;&nbsp;身份证号判断&nbsp;&nbsp;</span>
			</div>
		</div>
		<div class="col-md-12">
			<section id="middle1">
				<h2 class="h2-tab">
					<a href="javascript:changeState(-1)" class="on">全部（1）</a>
				</h2>
				<h2 class="h2-tab">
					<a href="javascript:changeState(0)" class="off">未完成（0）</a>
				</h2>
				<h2 class="h2-tab">
					<a href="javascript:changeState(1)" class="off">推荐（0）</a>
				</h2>
				<h2 class="h2-tab">
					<a href="javascript:changeState(2)" class="off">合格（0）</a>
				</h2>
				<h2 class="h2-tab">
					<a href="javascript:changeState(3)" class="off">不合格（1） </a>
				</h2>
			</section>
		</div>
		<div class="col-md-12">
			<section id="middle" style="margin-bottom: 20px;">
				排序：
				<a href="javascript:changeSortFlag(0)" class="btn btn-order active">默认排序</a>
				<a href="javascript:changeSortFlag(1)" class="btn btn-order ">时间</a>
				<div class="pull-right">
					<div style="display: inline-block; vertical-align: top;">
						<div class="input-group" style="width: 200px">
							<input class="form-control" id="id_searchName" value="" placeholder="姓名、邮箱"/>
							<span class="input-group-btn">
								<a href="javascript:changeSearchName()" class="btn">
									<i class="fa fa-search"></i>
								</a>
							</span>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="col-md-12">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>序号</th>
						<th>姓名</th>
						<th>开始时间</th>
						<th>挑战结果</th>
						<th>得分</th>
						<th>耗时</th>
						<th>网站身价</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
                    <tr>
                        <td>1 </td>
							<td>高一</td>
							<td>2016-05-04 17:05:34</td>
							<td>
								<span class="label label-danger">不合格</span>
							</td>
							<td>52.57</td>
							<td>2分23秒</td>
							<td>8065元</td>
							<td><span class="label label-success">已查看联系方式</span></td>
							<td>
										<a href=".\猿圈 高一的挑战报告.htm" class="btn btn-sm btn-new1">查看报告详情</a>
                                        <button class="btn btn-sm btn-info" data-toggle="modal" data-target="#resend" onclick="set_id(115671)"><i class="fa fa-mail-forward"></i>转发报告</button>
                                        <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#reject" onclick="set_id(115671)">不合适</button>
							</td>
						</tr>
				</tbody>
			</table>
		</div>
		<form id="screening_form" action="http://www.oxcoder.com/cooper/screening/user/screening_list.html">
			<input type="hidden" id="hid_recruitId" name="recruitId" value="3141"/>
			<input type="hidden" id="hid_searchName" name="searchName" value=""/>
			<input type="hidden" id="hid_state" name="state" value="-1"/>
			<input type="hidden" id="hid_sortFlag" name="sortFlag" value="0"/>
			<input type="hidden" id="hid_pageCode" name="pageCode" value="1"/>
		</form>
			
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
</div>

    <footer id="footer"></footer>

    <div class="modal fade modal-new" id="resend" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title" id="myModalLabel">转发报告</h4>
          </div>
          <div class="modal-body">
            <form action="http://www.oxcoder.com/#" id="resendform" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered bv-form" onsubmit="return false;" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                <div class="form-group">
                    <label class="col-md-3 control-label">收件人</label>
                    <div class="col-md-9">
                        <input id="email_list" type="email" name="remail" class="form-control" placeholder="最多可添加两个邮箱，用“,“隔开" data-bv-field="remail">
                        <span class="help-block has-error" id="firstNameMessage">
                    <small class="help-block" data-bv-validator="emailAddress" data-bv-for="remail" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮件格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="remail" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件</small></span></div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">邮件主题</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" value="【报告来自猿圈】[初级]Java工程师" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">邮件内容</label>
                    <div class="col-md-9">
                        <textarea class="form-control" disabled="disabled" rows="3">以下是应聘“[初级]Java工程师”的报告。我已查阅，请您评估一下。 若觉合适，我们将安排面试，谢谢！</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary" onclick="send_forward()">转发</button>
                </div>
              </form></div>
        
        </div>
      </div>
    </div>
    <div class="modal fade modal-new" id="reject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title" id="myModalLabel">确认简历不合适</h4>
          </div>
          <div class="modal-body">
            <p>确认这份简历不合适吗？
    确认后，系统将自动发送不合适通知邮件至用户邮箱</p>
            <form action="http://www.oxcoder.com/#" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
                <div class="form-group">
                    <label class="col-md-3 control-label">邮件主题</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" value="挑战[[初级]Java工程师]反馈" disabled="disabled">
                    
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">邮件内容</label>
                    <div class="col-md-9">
                        <textarea class="form-control" disabled="disabled" rows="3">非常荣幸收到你的简历，招聘方经过评估，认为你与该职位的条件不太匹配，无法进入面试阶段。

    相信更好的机会一定还在翘首期盼着你，赶快调整心态，做好充足的准备重新出发吧！</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" onclick="send_not_accept()">发送</button>
                </div>
              </form></div>
        
        </div>
      </div>
    </div>
    <div class="modal fade modal-new" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title" id="myModalLabel">转发报告</h4>
          </div>
          <div class="modal-body" style="text-align:center;">
              简历转发成功！
              <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
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
	<script src="./scripts/script.js"></script>
	<script src="./scripts/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="./scripts/pagination.js"></script>
	<script type="text/javascript">
		$PageCtrl.callBackFun = pageTurn;	
		
		function changeState(state){
			$("#hid_state").val(state);
			 pageTurn(1);
		}
		
		function changeSortFlag(sortFlag){
			$("#hid_sortFlag").val(sortFlag);
			 pageTurn(1);
		}
		
		function changeSearchName(){
			$("#hid_searchName").val($.trim($("#id_searchName").val()));
			 pageTurn(1);
		}
		
		function pageTurn(pageCode){
			$("#hid_pageCode").val(pageCode);
			$("#screening_form").submit();
		}
	
		function closeRecruit(obj){
			$.ajax({
				cache: false,
				type: "post",
				url: "cooper/screening/user/close_recruit.html",
				data: {"recruitId":obj }, 
				success: function (data) {
					data = eval('(' + data + ')');
					if(data.su){
						location.href = data.url;
					}else if(data.error){
						$.alert({
						    title: "网络错误!",
						    content: data.msg,
						    confirm: function(){
								location.href = data.url;
						    }
						});
					}else{
						$("#hint1").html(data.msg);
						$("#hint1").show();
					}
				},
				error: function (request) {
					$("#hint1").html(data.msg);
						$("#hint1").show();
				}
			});
		}
		function openRecruit(obj){
			$.ajax({
				cache: false,
				type: "post",
				url: "cooper/screening/user/open_recruit.html",
				data: {"recruitId":obj }, 
				success: function (data) {
					data = eval('(' + data + ')');
					if(data.su){
						location.href = data.url;
					}else if(data.error){
						$.alert({
						    title: "网络错误!",
						    content: data.msg,
						    confirm: function(){
								location.href = data.url;
						    }
						});
					}else{
						$("#hint1").html(data.msg);
						$("#hint1").show();
					}
				},
				error: function (request) {
					$("#hint1").html(data.msg);
						$("#hint1").show();
				}
			});
		}
		
		var g_id = -1
		function set_id(id){
			g_id = id;
		}
		
		function send_not_accept(){
			if(g_id != -1){
				$.ajax({
					cache: false,
					type: "post",
					url: "cooper/ajax_send_not_accept_email.html",
					data: {"user_recruit_id":g_id }, 
					success: function (data) {
						var result = eval("("+data+")"); 
						var result_obj = eval("("+result+")"); 
						if(result_obj["result"] == true && result_obj["statusCode"] == 200){
							alert("发送成功");
							$('#reject').modal('hide');
							location.reload();
						}
						else{
							alert("发送失败," + result_obj["message"])
						}
					},
					error: function (request) {
						alert("发送失败")
					}
				});
			}
		}
		
		function send_forward(){
			var user_list = $("#email_list").val();
			var user_email_list = user_list.split(",");
			if (user_email_list.length > 2){
				alert("邮箱不能超过两个");
				return false;
			}
			
			// for(var i = 0; i<user_email_list.length; i++ ){
			// 	var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			// 	if(!reg.test(user_email_list[i])) {
			// 	    alert("请输入有效的邮箱地址！");
			// 	    return false;
			// 	}
			// }
			var bootstrapValidator = $('#resendform').data('bootstrapValidator');
	        bootstrapValidator.validateField('remail');
	        if(bootstrapValidator.isValidField('remail')){
				if(g_id != -1){
					$.ajax({
						cache: false,
						type: "post",
						url: "cooper/ajax_send_forward_email.html",
						data: {
							"user_recruit_id":g_id,
							"source":2,
							"user_email":user_list
						}, 
						success: function (data) {
							var result = eval("("+data+")"); 
							var result_obj = eval("("+result+")"); 
							if(result_obj["result"] == true && result_obj["statusCode"] == 200){
								alert("发送成功");
								$('#resend').modal('hide');
							}
							else{
								if(result_obj["message"] == "total email number is over 2"){
									alert("发送失败,同一用户转发邮件数目不得超过2!")
								}else{
									alert("发送失败," + result_obj["message"])
								}
							}
						},
						error: function (request) {
							alert("发送失败")
						}
					});
				}
			}
		}
		$(document).ready(function() {
            $('#resendform').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    remail: {
                        container: '#firstNameMessage',
                        validators: {
                            emailAddress: {
                                message: '请输入正确的邮件格式',
                                multiple: 'true'
                            },
                            notEmpty: {
                                message: '请输入邮件'
                            }
                        }
                    }
                }
            });
        });
		
		
	</script>
</body>
</html>
