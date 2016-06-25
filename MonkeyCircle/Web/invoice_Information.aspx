<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice_Information.aspx.cs" Inherits="Web.invoice_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--<base href="http://www.oxcoder.com:80/">-->

        <base href=".">

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="BootstrapStyler">

        <title>猿圈 打赏信息</title>

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
        <!-- Max css -->
        <link href="./猿圈 打赏信息_files/style_new.css" rel="stylesheet" type="text/css">
        
        <style type="text/css">
            .pricing-grids {
                margin: 30px 0 0 0;
            }

            .pricing-grid {
                width: 33.3%;
                background: #fff;
                padding: 0 37px;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                -o-border-radius: 5px;
                -ms-border-radius: 5px;
                text-align: center;
                float: left;
            }
            
            .pricing-grid:hover div.sign-up a {
                color: #fff;
                background: #8cc739;
                text-decoration: none;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -o-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -ms-transition: 0.5s all;
            }
            
            .pricing-grid:hover {
                transition: .5s all;
                -webkit-transition: .5s all;
                -moz-transition: .5s all;
                -o-transition: .5s all;
                -ms-transition: .5s all;
                background: #fff;
                transform: rotateY(360deg);
            }

            .basic-plan h3 {
                color: #000;
                margin: 0px;
                font-size: 25px;
            }

            .basic-plan p {
                padding: 15px 0;
                color: #000000;
                margin: 0px;
                font-size: 20px;
                font-weight: 400;
            }

            .pricing-grid ul {
                margin: 0px;
                padding: 0px;
            }

            .sign-up {
                margin-top: 2.5em;
            }
            
            .sign-up a {
                color: #fff;
                padding: 12px 30px;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                -o-border-radius: 5px;
                -ms-border-radius: 5px;
                background: #333333;
                font-size: 15px;
            }

            .pricing-grid ul li {
                list-style-type: none;
                color: #000000;
                padding: 12px 0;
                border-bottom: 2px solid #E0E9E9;
            }
        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
            <![endif]-->
        
        <style type="text/css">
            .jqstooltip {
                position: absolute;
                left: 0px;
                top: 0px;
                visibility: hidden;
                background: rgb(0, 0, 0) transparent;
                background-color: rgba(0,0,0,0.6);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
                -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
                color: white;
                font: 10px arial, san serif;
                text-align: left;
                white-space: nowrap;
                padding: 5px;
                border: 1px solid white;
                z-index: 10000;
            }

            .jqsfield {
                color: white;
                font: 10px arial, san serif;
                text-align: left;
            }
        </style>
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

                    <a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/cooper/index.html" style="padding: 0;">
                        <img src="./image/wlogo_sm.png" style="max-height: 35px; margin: 7px;">
                    </a>
                </div>

                <div class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav">
                        <li class="">
                            <a href="http://www.oxcoder.com/cooper/oxcoder_corp_index.html">首页</a>
                        </li>

                        <li class="">
                            <a href="http://www.oxcoder.com/cooper/index.html">挑战管理</a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="text">北京猿圈科技有限责任公司

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
                                <div class="container-fluid">
                                    <section>
                                        <section id="middle">
                                            <h2 class="h2-tab">打赏</h2>
                                            <!-- <a href="oxcoder_corp_new_challenge.html"><button class="btn btn-new1 pull-right" style="margin-top:20px;">去充值</button></a> -->
                                            
                                            <p class="text-muted">感谢您对于猿圈的支持，作为回报您可以马上获得挑战和猿民币，以及与猿圈团队保持密切接触的机会</p>
                                        </section>

                                        <!-- /.page-header -->
                                        <div id="content">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <form runat="server" id="invoice_info_form"  class="form-horizontal bv-form">
                                                       
                                                      
                                                        <input name="payPackagesId" value="5" type="hidden">
                                                        
                                                        <div class="col-md-9">
                                                            <h4>发票信息</h4>

                                                            <div class="form-group">
                                                                <div class=" col-md-offset-3 col-md-9 col-no-left-padding">
                                                                    <div class="alert alert-success alert-dismissible" style="display: none;" role="alert" id="msg_tip">
                                                                        <strong>提示:</strong>
                                                                        <span id="msg_tip_span"></span>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">套餐类型</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    
                                                                    &nbsp;
                                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
																    
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票抬头</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <input type="text" name="invoice_title" value="" class="form-control" placeholder="单位发票抬头" data-bv-field="invoice_title">
                                                                    
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="corpname" data-bv-result="NOT_VALIDATED" style="display: none;">请输入发票抬头</small>
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="invoice_title" data-bv-result="NOT_VALIDATED" style="display: none;">请输入发票抬头</small>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票内容</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <label class="checkbox">
                                                                        <input type="checkbox" checked="checked" name="invoice_content" value="1" data-bv-field="invoice_content">
                                                                        技术服务
                                                                    </label>

                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="receiptcontent" data-bv-result="NOT_VALIDATED" style="display: none;">请选择发票内容</small>
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="invoice_content" data-bv-result="NOT_VALIDATED" style="display: none;">请选择发票内容</small>
                                                                </div>

                                                                <span class="help-block"></span>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票类型</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <label class="checkbox">
                                                                        <input type="checkbox" checked="checked" name="invoice_type" value="1" data-bv-field="invoice_type">
                                                                        普通发票（纸质）
                                                                    </label>
                                                                    
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="receipttype" data-bv-result="NOT_VALIDATED" style="display: none;">请选择发票类型</small>
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="invoice_type" data-bv-result="NOT_VALIDATED" style="display: none;">请选择发票类型</small>
                                                                </div>

                                                                <span class="help-block"></span>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">发票邮寄地址</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <input type="text" name="invoice_address" value="" class="form-control" placeholder="发票邮寄地址" data-bv-field="invoice_address">
                                                                    
                                                                    <span class="help-block"></span>
                                                                    
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="receiptaddress" data-bv-result="NOT_VALIDATED" style="display: none;">请输入发票邮寄地址</small>
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="invoice_address" data-bv-result="NOT_VALIDATED" style="display: none;">请输入发票邮寄地址</small>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">收票人联系方式</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <input type="text" name="invoice_tell" value="" class="form-control" placeholder="收票人联系方式" data-bv-field="invoice_tell">
                                                                    
                                                                    <span class="help-block"></span>
                                                                    
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入收票人联系方式</small>
                                                                    <small class="help-block" data-bv-validator="phone" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的联系方式</small>
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="invoice_tell" data-bv-result="NOT_VALIDATED" style="display: none;">请输入收票人联系方式</small><small class="help-block" data-bv-validator="phone" data-bv-for="invoice_tell" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的联系方式</small>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="col-md-3 control-label">收票人姓名</label>
                                                                
                                                                <div class="col-md-9">
                                                                    <input type="text" name="contact_person" value="" class="form-control" placeholder="收票人姓名" data-bv-field="contact_person">
                                                                    
                                                                    <span class="help-block"></span>
                                                                    
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入收票人姓名</small>
                                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="contact_person" data-bv-result="NOT_VALIDATED" style="display: none;">请输入收票人姓名</small>
                                                                </div>
                                                            </div>
                                                            <asp:Button ID="invoice_info_sub_btn" class="btn btn-new1" style="float: right;"  runat="server" Text="去支付" OnClick="invoice_info_sub_btn_Click"/>
      
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- /.row -->
        </div>

        <footer id="footer"></footer>
        <script src="./猿圈 打赏信息_files/jquery-1.11.0.min.js"></script>
        <script src="./猿圈 打赏信息_files/bootstrap.min.js"></script>
        <script src="./猿圈 打赏信息_files/jquery.sparkline.min.js"></script>
        <script src="./猿圈 打赏信息_files/bootstrap-switch.min.js"></script>
        <script src="./猿圈 打赏信息_files/bootstrap-select.min.js"></script>
        <script src="./猿圈 打赏信息_files/bootstrap-filestyle.js"></script>
        <script src="./猿圈 打赏信息_files/summernote.min.js"></script>
        <script src="./猿圈 打赏信息_files/script.js"></script>
        <script src="./猿圈 打赏信息_files/bootstrapValidator.min.js"></script>
        <script src="./猿圈 打赏信息_files/bootstrapValidator_zh_CN.js"></script>

        <script type="text/javascript" src="./猿圈 打赏信息_files/jquery.form.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#invoice_info_form").bootstrapValidator({
                    message: "This value is not valid",
                    fields: {
                        invoice_title: {
                            validators: {
                                notEmpty: {
                                    message: "请输入发票抬头"
                                }
                            }
                        },

                        invoice_content: {
                            validators: {
                                notEmpty: {
                                    message: "请选择发票内容"
                                }
                            }
                        },

                        invoice_type: {
                            validators: {
                                notEmpty: {
                                    message: "请选择发票类型"
                                }
                            }
                        },

                        invoice_address: {
                            validators: {
                                notEmpty: {
                                    message: "请输入发票邮寄地址"
                                }
                            }
                        },

                        invoice_tell: {
                            validators: {
                                notEmpty: {
                                    message: "请输入收票人联系方式"
                                },
                                phone: {
                                    message: "请输入正确的联系方式",
                                    country: "CN"
                                }
                            }
                        },

                        contact_person: {
                            validators: {
                                notEmpty: {
                                    message: "请输入收票人姓名"
                                }
                            }
                        }
                    }
                }).on("success.form.bv", function (e) {
                    e.preventDefault();
                    var $form = $(e.target);
                    $form.data("bootstrapValidator");
                    $("#invoice_info_form").ajaxSubmit({
                        type: "post",
                        url: "cooper/pay/pay.html",
                        success: function (data) {
                            data = eval('(' + data + ')');
                            if (data.su) {
                                $("#invoice_info_sub_btn").attr("disabled", true);
                                $("#msg_tip_span").html(data.msg);
                                $("#msg_tip").removeClass().addClass("alert alert-success alert-dismissible");
                                $("#msg_tip").slideDown(function () {
                                    setTimeout(function () {
                                        $("#msg_tip").slideUp(300, function () {
                                            location.href = data.url;
                                        });
                                    }, 2000);
                                });
                            } else {
                                $("#msg_tip_span").html(data.msg);
                                $("#msg_tip").removeClass().addClass("alert alert-danger alert-dismissible");
                                $("#msg_tip").slideDown(function () {
                                    setTimeout(function () {
                                        $("#msg_tip").slideUp(300);
                                    }, 2000);
                                });
                                return false;
                            }
                        }
                    });
                });
            });
        </script>


    </body>
</html>
