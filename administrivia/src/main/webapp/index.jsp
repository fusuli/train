<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>庐瓜网络</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/home.css">
<script language="javascript">
	function closewin() {
		self.opener = null;
		self.close();
	}
	function clock() {
		i = i - 1
		document.title = "本窗口将在" + i + "秒后自动关闭!";
		if (i > 0)
			setTimeout("clock();", 1000);
		else
			closewin();
	}
	var i = 10
	clock();
</script>

<script>
	function mytime() {
		var a = new Date();
		var b = a.toLocaleTimeString();
		var c = a.toLocaleDateString();
		document.getElementById("time1").innerHTML = c + "&nbsp" + b;
	}
	setInterval(function() {
		mytime()
	}, 1000);
</script>
</head>
<body>
	<div class="max">
		<div class="lgwl">
			<div class="tu"></div>
			<div class="wen">
				<ul>
					<li><a href="#" class="a1">中文</a></li>
					<li><a>|</a></li>
					<li><a href="#">English</a></li>
				</ul>
			</div>

		</div>
		<div class="time">
			<p id="time1" style="color: #333;"></p>
		</div>
		<div class="daohang">
			<div class="dh">
				<ul>
					<li class="l1"><a href="#"><span>首页</span></a></li>
					<li class="jj"><a href="#">解决方案</a>
						<div class="tanchu1">
							<a href="#">
								<div class="tc1">DataMesh混合实现</div>
							</a> <a href="#">
								<div class="tc2">乐行宝智能电动车</div>
							</a> <a href="#">
								<div class="tc3">智慧系列解决方案</div>
							</a> <a href="#">
								<div class="tc4">行业服务解决方案</div>
							</a> <a href="#">
								<div class="tc5">通用集成解决方案</div>
							</a>
						</div></li>
					<li><a href="#">服务支持</a></li>
					<li><a href="#">成功案例</a></li>
					<li><a href="#">人才招聘</a></li>
					<li><a href="#">关于我们</a></li>
				</ul>
			</div>
		</div>
		<div class="banner"></div>
		<div class="web">
			<div class="web1">
				<a href="#">
					<div class="web1a">
						<div class="web1a_wz">
							<span> <a>Web&nbsp;	&amp;&nbsp;App&nbsp;Development</a><br />
								互联网技术及其支撑系统的设计、研发、运维和技术支持服务。
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="web1b">
						<div class="web1b_wz">
							<span> <a>BI&nbsp;Development&nbsp;
									&amp;&nbsp;Consulting</a><br /> 商业数据智能应用场景分析、决策支持业务的开发与咨询服务。
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="web1c">
						<div class="web1c_wz">
							<span> <a>IOT&nbsp;Development&nbsp;
									&amp;&nbsp;Deployment</a><br /> 智能楼宇、农业、教育等物联网集成项目的设计、研发、施工等。
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="web1d">
						<div class="web1d_wz">
							<span> <a>Automation&nbsp;Control&nbsp;Service</a><br />
								自动化控制系统、工业控制系统的方案设计、安装及运行维护。
							</span>
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="advantage">
			<div class="advantage_ta">
				<span> <a class="a2">Advantage</a>&nbsp;&nbsp;&nbsp;为什么选择我们
				</span>
			</div>
			<div class="advantage_tb">
				<span> <a class="a3">我们在互联网领域有哪些优势？</a>
				</span>
			</div>
			<div class="tw1">
				<div class="tp"></div>
				<div class="wz">
					<span>
						我们专注于互联网行业多年，积累了较为全面的技术和实战经验。我们用心完善好每一个设计、研发的环节、力争为客户输出高质量、可信赖的产品。
					</span>
					<div class="wz1">
						<ul>
							<li>经验丰富、专注产研多年、高效的精英团队</li>
							<li>有效的沟通、细致的产品分析、专业的技术研发与现场实践</li>
							<li>规范的项目构架、完善的文档成果物输出</li>
							<li>周到的售前、售后以及行业咨询服务</li>
							<li>合理的研发价格</li>
							<li>稳定长期的合作关系</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="advantage_ta">
				<span> <a class="a2">Our&nbsp;Case</a>&nbsp;&nbsp;&nbsp;我们的案例
				</span>
			</div>
			<div class="advantage_tb">
				<span> <a class="a3">如您所见，我们追求的不仅是吸引您的眼球，而是创造产品与用户之间的共鸣</a>
				</span>
			</div>
			<div class="tw2">
				<div class="tw2a">
					<a href="#">
						<div class="tp1">
							<img src="./image/c.jpg" width="340px" />
						</div>
					</a>
					<div class="tp1_wz">锚泊调度系统</div>
				</div>
				<div class="tw2b">
					<a href="#">
						<div class="tp2">
							<img src="./image/case_2.png" width="340px" />
						</div>
					</a>
					<div class="tp2_wz">乐行宝智能电动车</div>
				</div>
				<div class="tw2c">
					<a href="#">
						<div class="tp3">
							<img src="./image/b.jpg" width="340px" />
						</div>
					</a>
					<div class="tp3_wz">冥想训练</div>
				</div>
			</div>
			<div class="advantage_ta">
				<span> <a class="a2">Customer</a>&nbsp;&nbsp;&nbsp;我们的客户
				</span>
			</div>
			<div class="advantage_tb">
				<span> <a class="a3">我们非常在意客户对我们的评价，这是对我们工作的认可和见证</a>
				</span>
			</div>
			<div class="kehu">
				<img src="./image/2017-10-25_022855.png" width="1100px" />
			</div>
		</div>
		<div class="finish">
			<div class="f_top">
				<div class="f_topl">
					<ul>
						<li><a href="#">关于庐瓜</a></li>
						<li>|</li>
						<li><a href="#">联系我们</a></li>
						<li>|</li>
						<li><a href="#">人才招聘</a></li>
						<li>|</li>
						<li><a href="#">服务支持</a></li>
					</ul>
				</div>
				<div class="f_topr">
					<span>关注我们：</span>
					<div class="wx"></div>
					<div class="wb"></div>
				</div>
			</div>
			<div class="f_bottom">
				<span>Copyright&nbsp;&copy;&nbsp;2011-2017&nbsp;南京庐瓜网络科技有限公司&nbsp;版权所有&nbsp;苏ICP备15048443号</span>
			</div>
		</div>
	</div>
</body>
</html>