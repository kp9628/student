<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="connect.ConnectionProvider"%>
 <title>update-process.jsp</title>
<html>
<body>

<%
Connection con=ConnectionProvider.getConn();


/* String id = request.getParameter("hd"); */




String[] q= request.getParameterValues("q");
String[] y= request.getParameterValues("y");
String[] p= request.getParameterValues("p");
String[] r= request.getParameterValues("r");
String[] lid= request.getParameterValues("lid");

out.println("...................");
if(q!=null)
{	
  for(int i=0; i<p.length; i++ )
   {
	//out.println("quli.."+lid[i]);
	
	
	 if(lid[i]=="" || y[i]=="" || p[i]=="" || q[i]=="" || r[i]=="")
	{
		 out.println("Course , Passing year and Percentage are not allowed blank..."); 
		 
	}
	 else{
	 
		PreparedStatement ps = null;
		
		
		try
		{
			
		String sql="Update quali set qualification=?, year=?, percentage=?,remark=? where id="+lid[i];
		ps = con.prepareStatement(sql);
	//	out.println("..................................."+sql);
		ps.setString(1,q[i]);
		ps.setString(2,y[i]);
		ps.setString(3,p[i]);
		ps.setString(4,r[i]);
		

		int i1 = ps.executeUpdate();
		if(i1 > 0)
		{
			
			//out.print("<script>alert('Update successfully.......')</script>");
			//response.sendRedirect("retrieveDel.jsp");
			/* response.sendRedirect("retrieveDel.jsp?log1=success"); */
		 // out.print("Record Updated Successfully.......");
		 }
		else
		 {
			
			
		out.print("There is a problem in updating Record......");
			

		}
		}
		catch(SQLException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		
		
	 } /* end else */ 

 }/*end for loop  */

} /* end header if */ 

/* update for header items */
String stdid=request.getParameter("stdid");
String n=request.getParameter("name");
String fn=request.getParameter("fname");
String e=request.getParameter("email");
String mob=request.getParameter("mobile");
String dob=request.getParameter("dob");
String adrs=request.getParameter("address");
String comment=request.getParameter("comment");
String regdate=request.getParameter("regdate");

 if(n=="" || fn=="" || e=="" || mob=="" || dob=="" || adrs=="" || regdate=="")
{
	 out.print("Blank fields are not allowed....");
 
}
 else
 {
	PreparedStatement ps = null;
	
	
	try
	{
		
	String sql="Update std3 set name=?, fname=?, email=?, mobile=?, dob=?, address=?, comment=?, regdate=? where id="+stdid;
	ps = con.prepareStatement(sql);
	out.println("..................................."+sql);
	ps.setString(1,n);
	ps.setString(2,fn);
	ps.setString(3,e);
	ps.setString(4,mob);
	ps.setString(5,dob);
	ps.setString(6,adrs);
	ps.setString(7,comment);
	ps.setString(8,regdate);
	
	

	int i1 = ps.executeUpdate();
	if(i1 > 0)
	{
		
		//out.print("<script>alert('Update successfully.......')</script>");
		//response.sendRedirect("retrieveDel.jsp");
		response.sendRedirect("retrieveDel2.jsp?log1=success"); 
	 // out.print(" header Record Updated Successfully.......");
	 }
	else
	 {
		
		
	out.print("There is a problem in updating Record......");
		

	}
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	
	
	
	
} /* end else*/ 

	
%>









</center></body></html>