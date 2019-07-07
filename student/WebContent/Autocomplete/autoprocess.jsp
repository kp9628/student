
<%@page import= "java.util.Date"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.*"%>
<%@page import="connect.ConnectionProvider"%>
<%@page import= "java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



 
        <%
    

Connection c=ConnectionProvider.getConn();
//String id=request.getParameter("t1");
Statement st=c.createStatement();
String qr="select * from qualification";
ResultSet rs=st.executeQuery(qr);
/* 
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from tbctry");
 */
        List li = new ArrayList();

        while (rs.next()) {
            li.add(rs.getString(1));
        }

        String[] str = new String[li.size()];
        Iterator it = li.iterator();

        int i = 0;
        while (it.hasNext()) {
            String p = (String) it.next();
            str[i] = p;
            i++;
        }

        //jQuery related start
        String query = (String) request.getParameter("q");

        int cnt = 1;
        for (int j = 0; j < str.length; j++) {
            if (str[j].toUpperCase().startsWith(query.toUpperCase())) {
                out.print(str[j] + "\n");
                if (cnt >= 5)// 5=How many results have to show while we are typing(auto suggestions)
                {
                    break;
                }
                cnt++;
            }
        }
 
%>
</body>
</html>