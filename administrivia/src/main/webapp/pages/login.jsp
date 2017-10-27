<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/login.css">
</head>
<body>
	<form action="1.php" method="post">
		<div class="max">
			<div class="yhdl">
				<div class="toRight_l"></div>
				<div class="toRight_wz">&middot;&nbsp;&nbsp;用户登录&nbsp;&nbsp;&middot;</div>
				<div class="toRight_r"></div>
			</div>
			<div class="nr">
				<div class="nr_a">
					<div class="nr_al">手机号</div>
					<div class="nr_ar">
						<input type="text" name="phone" />
					</div>
				</div>
				<div class="nr_b">
					<div class="nr_bl">密码</div>
					<div class="nr_br">
						<input type="password" name="pass" />
					</div>
				</div>
				<div class="nr_c">
					<div class="nr_cl">验证码</div>
					<div class="nr_cc">
						<input type="text" name="yzm" />
					</div>
					<div class="nr_cr">文字看不清写的啥</div>
				</div>
				<div class="nr_d">
					<input type="submit" value="登录">
				</div>
				<div class="nr_e">
					<div class="nr_el">
						<span>还没有账号，</span><a
							href="<%=request.getContextPath()%>/pages/news.jsp">立即注册</a>
					</div>
					<div class="nr_er">
						<a href="#">忘记密码？</a>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>