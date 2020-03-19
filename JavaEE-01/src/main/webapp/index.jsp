<%@ page import="com.javaee.code.class12.model.StudentHomework" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javaee.code.class12.jdbc.StudentHomeworkJdbc" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/3/5
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>

  <table align="center" width="960" border="1"
         bgcolor="black" cellpadding="1" cellspacing="1">
    <tr align="center" height="30" bgcolor="#5f9ea0">
      <td>ID</td>
      <td>学生学号</td>
      <td>作业编号</td>
      <td>作业标题</td>
      <td>作业内容</td>
      <td>创建时间</td>
    </tr>

    <%
      List<StudentHomework> list=(List<StudentHomework>) StudentHomeworkJdbc.selectAll();
      //List<StudentHomework> list=(List<StudentHomework>) request.getAttribute("list");

      if(null==list||list.size()<=0){
        out.println("None data.");
      }
      else{
        for (StudentHomework sh:list){

    %>

    <tr align="center" bgcolor="white">
      <td><%=sh.getId()%></td>
      <td><%=sh.getStuid()%></td>
      <td><%=sh.getHomeworkid()%></td>
      <td><%=sh.getHomeworktitle()%></td>
      <td><%=sh.getHomeworkContent()%></td>
      <td><%=sh.getCreatetime()%></td>
    </tr>

    <%
          /*
          out.println(sh.getId());
          out.println(sh.getStuid());
          out.println(sh.getHomeworkid());
          out.println(sh.getHomeworktitle());
          out.println(sh.getHomeworkContent());
          out.println(sh.getCreatetime());
           */
        }
      }
    %>


  </table>

  </body>
</html>
