﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YSMain.aspx.cs" Inherits="YS_YSMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>root</title>
    <!-- Main CSS -->
    <link href="../css/main.css" rel="stylesheet" />

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../CSS/YsMain.css" />
    <script src="../Scripts/YsJS.js" type="text/javascript"></script>
</head>
<body>
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <span class="navbar-brand">医院管理系统</span>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Name</strong>
                                    <span class="pull-right text-muted">
                                        <em>Time</em>
                                    </span>
                                </div>
                                <div>Content</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task</strong>
                                        <span class="pull-right text-muted">Number Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">Number Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="../Main/changeRole.aspx"><i class="fa fa-exchange fa-fw"></i>切换角色</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#" id="logout"><i class="fa fa-sign-out fa-fw"></i>退出登录</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div id="menu" class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse collapse">
                    <ul class="nav in" id="side-menu" style="margin-top:0px;">
                    	<li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <div class="user-panel">
                                    <div class="self-img pull-left image">
                                      <img src="../img/avatar.png" class="img-circle" alt="User Image" />
                                    </div>
                                    <div class="pull-left info">
                                      <p id="user-name"></p>
                                      <p id="user-role">医师</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="../Root/Root-information.aspx"><i class="fa fa-edit fa-fw"></i> <span>消息发布</span></a>
                        </li>
                        <li>
                            <a href="#" class="parent"><i class="fa  fa-paste fa-fw"></i> <span>疗程管理</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="Ys-CheckTreatment.aspx" class="no"><i class="fa  fa-eye   fa-fw"></i><span>疗程查询</span></a>
                                </li>
                                <li>
                                    <a href="Ys-RequireTreatment.aspx" class="no"><i class="fa   fa-cloud-upload    fa-fw"></i><span>疗程申请</span></a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                           <li>
                            <a href="#" class="parent"><i class="fa fa-group fa-fw"></i> <span>我的任务</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                            <a href="Diagnose.aspx" class="no"><span>诊断病情</span></a>
                        </li>
                        <li>
                            <a href="FixApply.aspx" class="no"> <span>体位固定申请</span></a>
                        </li>
                        <li>
                            <a href="LocationApply.aspx" class="no"> <span>模拟定位申请</span></a>
                        </li>
                        <li>
                            <a href="DiagnosePlanApply.aspx" class="no"><span>治疗计划申请</span></a>
                        </li>
                         <li>
                            <a href="ReplacementApply.aspx" class="no"><span>复位申请</span></a>
                        </li>
                          <li>
                            <a href="PDFConfirm.aspx" class="no"><span>PDF文件确认</span></a>
                        </li>
                      
                         <li>
                            <a href="TreatPlanConfirm.aspx" class="no"><span>治疗计划确认</span></a>
                        </li>   
                         <li>
                            <a href="FollowUpRecord.aspx" class="no"><span>总结随访</span></a>
                        </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
    <div id="page-wrapper" style="padding:0px;">
            <div id="targets" class="tags">
                <a id="move-left" href="javascript:;">
                    <p class="glyphicon glyphicon-backward"></p>
                </a>
                <div class="targets choosed right left" style="margin-left: 0px;">
                    <span class="tag-name">主页</span>
                    <input type="hidden" value="Ys-Welcome.aspx 0" />        
                </div>
                <a id="move-right" href="javascript:;">
                    <p class="glyphicon glyphicon-forward"></p>
                </a>
            </div>
        	<div id="iframeArea" class="self-frame panel-group">
                <iframe name="urlYs-Welcome.aspx0" src="Ys-Welcome.aspx" style="width: 100%; height: 750px; border: 0px;"></iframe>
            </div>
    </div>
    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    <script src="../Scripts/jqOperate.js"></script>
</body>
</html>
