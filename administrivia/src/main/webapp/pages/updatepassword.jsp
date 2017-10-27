<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/updatep.css">
</head>
<body>
	<form action="" method="post">
		<div class="max">
			<div class="left">
				<div class="left_t">西湖牛肉羹</div>
				<div class="left_b">
					<a href="#">
						<div class="left_bt">
							<span> 我的活动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;> </span>
						</div>
					</a> <a href="#">
						<div class="left_bb">
							<span> 修改密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;> </span>
						</div>
					</a>
				</div>
			</div>
			<div class="right">
				<div class="right_a">
					旧密码&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass1" />
				</div>
				<div class="right_b">
					新密码&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass2" />
				</div>
				<div class="right_c">
					确认密码&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass3" />
				</div>
				<div class="right_d">
					<input type="submit" value="确认修改">
				</div>
			</div>
		</div>
	</form>
</body>
</html>