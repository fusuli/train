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
	<form action="InsertServlet" method="post">
		<div class="max">
			<div class="yhdl">
				<div class="toRight_l"></div>
				<div class="toRight_wz">&middot;&nbsp;&nbsp;用户注册&nbsp;&nbsp;&middot;</div>
				<div class="toRight_r"></div>
			</div>
			<div class="nr">
				<div class="nr_a">
					<div class="nr_al">手机号</div>
					<div class="nr_ar">
						<input type="text" name="name" />
					</div>
				</div>
				<div class="nr_b">
					<div class="nr_bl">密码</div>
					<div class="nr_br">
						<input type="password" name="password" />
					</div>
				</div>
				<div class="nr_d">
					<input type="submit" value="注册">
				</div>
			</div>
		</div>
	</form>
</body>
</html>