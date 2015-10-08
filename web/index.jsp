<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- 
    Document   : index
    Created on : 2015-9-28, 13:58:01
    Author     : zxm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >JSP Page</title>
    </head>
    <body>

        <!--        <h1>Hello World!</h1>-->
        <%
//            String result = "";
//            String sqlString = "select * from QZDATA.qz_gl_processuserinfo";
//            String urlString = "jdbc:oracle:thin:@10.51.0.97:1521:PDBQZ";
//            String username = "QZDATA"; // 用户名
//            String password = "87014870"; //密码
//            String dbdriverString = "oracle.jdbc.driver.OracleDriver";
//            Connection conn = null;
//            Statement stmt = null;
//            PreparedStatement pstmt = null;
//            ResultSet rs = null;
//            //配置oracle连接
//
//            try {
//                Class.forName(dbdriverString);//注册驱动
//                conn = DriverManager.getConnection(urlString, username, password);//连接数据库
//                stmt = conn.createStatement();
//                rs = stmt.executeQuery(sqlString);
//
//                while (rs.next()) {
//                    out.print(rs.getString(1) + "");
//                    out.print("</br>");
//                }
//
//            } catch (Exception e) {
//                out.println(e);
//            }

        %>
        <sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver"
                           url="jdbc:oracle:thin:@10.51.0.97:1521:PDBQZ"
                           user="QZDATA"  password="87014870"/>


        <sql:query var="result" dataSource="${snapshot}">
            select instrid,stationid,pointid,samplerate,instrcode from QZDATA.QZ_DICT_STATIONINSTRUMENTS order by stationid,pointid
        </sql:query>

        <table border="1">
            <!-- column headers -->
            <tr>

                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>



        
</body>
</html>
