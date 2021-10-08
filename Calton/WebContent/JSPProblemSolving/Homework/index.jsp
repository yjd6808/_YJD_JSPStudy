<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String pageTypeStr = request.getParameter("pageType");
	int pageType = 1;	// 디폴트 페이지는 공지사항 페이지 입니다^^
	
	if (pageTypeStr != null) {
		pageType = Integer.parseInt(pageTypeStr);
	} 
	
	String pageUrl = "";
	
	switch (pageType) {
	case 1:
		pageUrl = "TopMenu/notice.jsp";
		break;
	case 2:
		pageUrl = "TopMenu/board.jsp";
		break;
	case 3:
		pageUrl = "TopMenu/faq.jsp";
		break;
	case 4:
		pageUrl = "TopMenu/qna.jsp";
		break;
	case 5:
		pageUrl = "SideMenu/java.jsp";
		break;
	case 6:
		pageUrl = "SideMenu/jsp.jsp";
		break;
	case 7:
		pageUrl = "SideMenu/oracle.jsp";
		break;
	case 8:
		pageUrl = "SideMenu/html.jsp";
		break;
	case 9:
		pageUrl = "SideMenu/css.jsp";
		break;
	default:
		pageUrl = "TopMenu/notice.jsp";
		break;
	}
%>
<!DOCTYPE html>
<html>
<head>
<style>
	table {
	    font-size: 16px;
	    border: black solid 1px ;
	    width: 1000px;
	    height: 700px;
	}
	td { border: black solid 1px ; }
	.header { padding-left: 10%;}
	.side-menu { width: 20%; }
	.content {}
	.footer { width: 100%; }
	.side-menu li { list-style: none;}
	.side-menu ul { padding: 0px;}
	.content iframe { 
        width: 100%; 
        height: 100%; 
        border-style: none;
    }
 </style>
</head>
<body>
	<table>
       <tr>
           <td class="header" colspan="2">
               <a href="index.jsp?pageType=1">공지사항</a><span> |</span>
               <a href="index.jsp?pageType=2">게시판</a><span> |</span>
               <a href="index.jsp?pageType=3">FAQ</a><span> |</span>
               <a href="index.jsp?pageType=4">QnA</a>
           </td>
       </tr>
       <tr>
           <td class="side-menu">
               <ul>
                   <li><a href="index.jsp?pageType=5">Java</a></li>
                   <li><a href="index.jsp?pageType=6">JSP</a></li>
                   <li><a href="index.jsp?pageType=7">Oracle</a></li>
                   <li><a href="index.jsp?pageType=8">HTML</a></li>
                   <li><a href="index.jsp?pageType=9">CSS</a></li>
               </ul>
           </td>
           <td class="content">
           		<%= String.format("<iframe src=\"%s\";></iframe>", pageUrl) %>
           </td>
       </tr>
       <tr>
           <td class="footer" colspan="2">
               Since 2021
           </td>
       </tr>
    </table>
</body>
</html>