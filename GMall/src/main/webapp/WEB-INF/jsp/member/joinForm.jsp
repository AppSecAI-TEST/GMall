<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>ȸ������</title>
	</head>
	
	<body>
		<form:form modelAttribute="member" method="post" action="join.mall">
			<table>
				<tr valign="top" height="50">
					<td>ȸ�� ����</td>
					<td>
						<form:radiobutton path="type" value="1" label="�Ϲ� ȸ��" />
						<form:radiobutton path="type" value="2" label="����� ȸ��" />
					</td>
				</tr>
				
				<tr>
					<td>���̵�</td>
					<td>
						<form:input path="id" /> 
					</td>
				</tr>
				
				<tr>
					<td>��й�ȣ</td>
					<td>
						<form:password path="pass" />
					</td>
				</tr>	
				
				<tr>
					<td>�̸�</td>
					<td>
						<form:input path="name" />
					</td>
				</tr>
				
				<tr>
					<td>�г���</td>
					<td>
						<form:input path="nickname" />
					</td>
				</tr>
				
				<tr>
					<td>����</td>
					<td>
						<form:radiobutton path="gender" value="1" label="��" />
						<form:radiobutton path="gender" value="2" label="��" />
					</td>
				</tr>
				
				<tr>
					<td>����ó</td>
					<td>
						<form:input path="tel" />
					</td>
				</tr>
				
				<tr>
					<td>�ּ�</td>
					<td>
						<form:input path="address" />
					</td>
				</tr>
				
				<tr>
					<td>���� ��ǰ</td>
					<td>
						<form:select path="favorite">
							<form:option value="����" label="����" />
							<form:option value="�ػ깰" label="�ػ깰" />
							<form:option value="����" label="����" />
							<form:option value="ä��" label="ä��" />
							<form:option value="���" label="���" />
							<form:option value="�߰���" label="�߰���" />
						</form:select>
					</td>
				</tr>
				
				<!-- ���ǹ����� ����� ���� ����  -->
				
				<tr height="40px;">
					<td colspan="2" align="center">
						<input type="submit" value="���" />
						<input type="reset" value="����" />
					</td>
				</tr>
			</table>				
		</form:form>
	</body>
</html>