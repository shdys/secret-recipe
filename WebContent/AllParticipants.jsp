<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>AllParticipants</title>
      <style type="text/css">
body {
	background-image: url(images/340362-106.jpg);
}
</style>
</head>
<body>
<li><a href="LoginAndRegistration.jsp" class="current">Return to the page of login and registration.</a></li>
<center>

<table width="200" border="1">
  <tr>
    <th scope="col">UserName</th>
    <th scope="col">UserEmail</th>
    <th scope="col">UserSex</th>
    <th scope="col">LeaveEarly</th>
    <th scope="col">IsCreater</th>
    <th scope="col">ChangeLeave</th>
  </tr>
  
  <s:iterator value="Participants" id="Participant" status="ss">
  <tr>
    <td><s:property value="#Participant.userName"/></td>
    <td><s:property value="#Participant.userEmail"/></td>
    <td><s:property value="#Participant.userSex"/></td>
    <td><s:property value="#Participant.leaveEarly"/></td>
    <td><s:property value="#Participant.IsCreater"/></td>
    <td><a href='<s:url action="ChangeLeave"><s:param name="ChangeLeaveEmail" value="#Participant.userEmail"/></s:url>'>ChangeLeave</a></td>
  </tr>
  </s:iterator>
  
  <tr>
  <form name="form1" id="ff1" method="post" action="SearchUsersByName">
    <th scope="col"><input type="text" class="form-control" placeholder="User Name :" name="userName" id="userName" required></th>
    <th scope="col">&nbsp;</th>
    <th scope="col">&nbsp;</th>
    <th scope="col"><button type="submit" class="btn btn-1" name="Search" id="Search">Search</button></th>
  </form>
  </tr>

</table>






<h3>Please input your choice here:</h3>

<form name="form2" id="ff2" method="post" action="CreatVoteActAndVote">

    <select name="type" id="type">
							<option value="Normal">Normal</option>
							<option value="Girls">Girls for free</option>
							<option value="Leave">Leaving early pay more</option>
	</select>
	<button type="submit" class="btn btn-3" name="CreatVoteAndVoteButton">Create</button>
</form>

</center>
</body>
</html>