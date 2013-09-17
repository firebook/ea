<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="common/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="common/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="common/bootstrap/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="common/bootmetro/css/fullcalendar.css" />	
<link rel="stylesheet" href="common/bootmetro/css/unicorn.main.css" />
<link rel="stylesheet" href="common/bootmetro/css/unicorn.grey.css" class="skin-color" />
<#---->
<script src="common/bootmetro/js/jquery.min.js"></script>
<script src="common/bootmetro/js/jquery.ui.custom.js"></script>
<script src="common/bootmetro/js/bootstrap.min.js"></script>
<script src="common/bootmetro/js/jquery.gritter.min.js"></script>
<script src="common/bootmetro/js/jquery.peity.min.js"></script>
<script src="common/bootmetro/js/unicorn.js"></script>
<script src="common/bootmetro/js/unicorn.interface.js"></script>

	<div class="span3 bs-docs-sidebar">
		<ul class="nav nav-list bs-docs-sidenav">
		  <li><a href="#global"><i class="icon-chevron-right"></i> 全局样式表</a></li>
		  <li><a href="#gridSystem"><i class="icon-chevron-right"></i> 栅格系统</a></li>
		  <li><a href="#fluidGridSystem"><i class="icon-chevron-right"></i> 流式栅格系统</a></li>
		  <li><a href="#layouts"><i class="icon-chevron-right"></i> 布局</a></li>
		  <li><a href="#responsive"><i class="icon-chevron-right"></i> 响应式设计</a></li>
		</ul>
	</div>

					<div class="span6">
						<div class="widget-box">
								<div class="widget-title">
									<h5>交互提示</h5>
								</div>
								<div class="widget-content">
									<a href="#myModal" data-toggle="modal" class="btn btn-primary">对话框</a>
									<a href="#myAlert" data-toggle="modal" class="btn btn-danger">警示框</a>
									
									<div id="myModal" class="modal hide">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">×</button>
											<h3>对话框框头</h3>
										</div>
										<div class="modal-body">
											<p>提示内容 …</p>
										</div>
									</div>
									<div id="myAlert" class="modal hide">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">×</button>
											<h3>警示框标题</h3>
										</div>
										<div class="modal-body">
											<p>警示内容...</p>
										</div>
										<div class="modal-footer">
											<a data-dismiss="modal" class="btn btn-primary" href="#">确认</a>
											<a data-dismiss="modal" class="btn" href="#">取消</a>
										</div>
									</div>
								</div>
							</div>
					</div>	

	<div class="widget-title span9">
		<span class="icon"><i class="icon-signal"></i></span>
		<h5>机房项目信息统计</h5>
		<div class="buttons">
		<a href="#" class="btn btn-mini"><i class="icon-refresh"></i> 更 新 </a>
		</div>		
		
	</div>				
	
						
	

<div class="widget-box span5">
	<div class="widget-title">
		<span class="icon"><i class="icon-signal"></i></span>
		<h5>机房项目信息统计</h5>
		<div class="buttons">
		<a href="#" class="btn btn-mini"><i class="icon-refresh"></i> 更 新 </a>
		</div>
	</div>
	<div class="widget-content">
		<div class="row-fluid">
			<div class="span4">
				<ul class="site-stats">
					<li><i class="icon-user"></i> <strong>1433</strong> <small>总项目数</small></li>
					<li><i class="icon-arrow-right"></i> <strong>16</strong> <small>新增项目 (过去一周)</small></li>
				</ul>
			</div>
		</div>							
	</div>
</div>					


	<div class="span6">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"><i class="icon-comment"></i></span><h5>任务交互日志</h5>
				<span title="88 条评论" class="label label-info tip-left">88</span>
			</div>
			<div class="widget-content nopadding">
				<ul class="recent-comments">
					<li>
						<div class="user-thumb">
							<img width="40" height="40" alt="User" src="img/demo/av0.jpg">
						</div>
						<div class="comments">
							<span class="user-info"> User: obamaon IP: 172.10.56.3  2012-12-33</span>
							<p>
								已经完成编码工作。
							</p>
						</div>
					</li>
					<li>
						<div class="user-thumb">
							<img width="40" height="40" alt="User" src="img/demo/av0.jpg">
						</div>
						<div class="comments">
							<span class="user-info"> User: obama on IP: 192.168.24.3 2012-12-33</span>
							<p>
									已经发送给客户
							</p>
						</div>
					</li>
					<li class="viewall">
						<a title="View all comments" class="tip-top" href="#"> + 查看所有历史记录 + </a>
					</li>
				</ul>
			</div>
		</div>
	</div>


				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					
						<ul class="quick-actions">
							<li>
								<a href="#">
									<i class="icon-calendar"></i>
									管理日志
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-shopping-bag"></i>
									待办任务
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-database"></i>
									数据库管理
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-people"></i>
									人员管理
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-lock"></i>
									安全性
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-piechart"></i>
									统计分析
								</a>
							</li>
						</ul>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					
						<ul class="quick-actions-horizontal">
							<li>
								<a href="#">
									<i class="icon-calendar"></i>
									<span>管理日志</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-shopping-bag"></i>
									<span>待办任务</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-database"></i>
									<span>数据库管理</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-people"></i>
									<span>人员管理</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-lock"></i>
									<span>安全性</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-piechart"></i>
									<span>统计分析</span>
								</a>
							</li>
						</ul>
					</div>	
				</div>
	<div class="container-fluid">
			<div class="span12 center" style="text-align: center;">					
				<ul class="stat-boxes">
					<li>
						<div class="left peity_bar_good"><span>2,4,9,7,12,10,12</span>+20%</div>
						<div class="right">
							<strong>36094</strong>
							访问量
						</div>
					</li>
					<li>
						<div class="left peity_bar_neutral"><span>20,15,18,14,10,9,9,9</span>0%</div>
						<div class="right">
							<strong>1433</strong>
							项目数
						</div>
					</li>
					<li>
						<div class="left peity_bar_bad"><span>3,5,9,7,12,20,10</span>-50%</div>
						<div class="right">
							<strong>8650</strong>
							申请人数
						</div>
					</li>
					<li>
						<div class="left peity_line_good"><span>12,6,9,23,14,10,17</span>+70%</div>
						<div class="right">
							<strong>8650</strong>
							核准人数
						</div>
					</li>
				</ul>
			</div>	
	</div>
				