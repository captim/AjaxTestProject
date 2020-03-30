<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.dumanskiy.entities.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dumanskiy.dao.OracleDAOConnection" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: olbe0615
  Date: 22.03.2020
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ajax Project</title>
  </head>
  <body>
  <%String name = request.getParameter("val");
    List<Student> studentList
            = OracleDAOConnection.getInstance().selectAllStudents();
    if (name == null || name.trim().equals("")) {%>
        <p>Please enter name!</p>
  <%} else {
          try {
              boolean flag = false;
              List<Student> similarStudents = new ArrayList<>();
              for (Student student : studentList) {
                  if(student.getName().startsWith(name)) {
                      similarStudents.add(student);
                      flag = true;
                  }
              }
              if (!flag) {%>
                  <p>No Record Found!</p>
            <%} else {%>
                  <table border='1' cellpadding='2' width='100%'>
                      <tr>
                          <th>Id</th>
                          <th>Name</th>
                          <th>Scholarship</th>
                      </tr>
                  <%for (Student student : similarStudents) {%>


                          <tr>
                              <td><%=student.getId()%></td>
                              <td><%=student.getName()%></td>
                              <td><%=student.getScholarship()%></td>
                          </tr>

                <%}%>
                  </table>
            <%}
          } catch (Exception e) {%>
              <p>Some problems ...</p>
        <%}
    }%>
  </body>
</html>
