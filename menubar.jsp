<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-2 disable-mobile left-sidebar">
      <div class="widget widget-btn">
      <form action="askQuestion.jsp">
        <button type="submit" data-toggle="modal" class="action ask-question"> <i class="fa fa-plus"></i>
        	ASK A QUESTION
	 </button>
	 </form>
      </div>
      <!-- END BUTTON MODAL QUESTION -->
      <div class="widget widget-menus">
        <div class="menu-left-menu-container">
          <ul id="menu-left-menu-1" class="menu">
            <li class="fa-question-circle menu-item menu-item-type-custom menu-item-object-custom menu-item-1765"><a href="${pageContext.request.contextPath }/QuestionController?flag=loadQuestion"><i class="fa fa-question-circle"></i>Questions</a></li>
            <li class="fa-th-list menu-item menu-item-type-post_type menu-item-object-page menu-item-1742"><a href="answer.jsp"><i class="fa fa-th-list"></i>Categories</a></li>
            <li class="fa-th-list menu-item menu-item-type-post_type menu-item-object-page menu-item-1742"><a href="${pageContext.request.contextPath }/AnswerController?flag=oldestAnswer&id=1"><i class="fa fa-th-list"></i>Comment</a></li>
<%--             <li class="fa-th-list menu-item menu-item-type-post_type menu-item-object-page menu-item-1742"><a href="${pageContext.request.contextPath }/NewsFeedController?flag=loadnewsfeed"><i class="fa fa-th-list"></i>Social Temp</a></li> --%>
          </ul>
        </div>
      </div>
      <!-- END LEFT MENU -->
      <div class="clearfix"></div>
      <!-- SOCIAL LINKs --
      <div class="social-links">
        <ul>
          <li> <a href="#" target="_blank" class="social fb"> <i class="fa fa-facebook"></i> </a> </li>
          <li> <a href="#" target="_blank" class="social tw"> <i class="fa fa-twitter"></i> </a> </li>
          <li> <a href="#" target="_blank" class="social gg"> <i class="fa fa-google"></i> </a> </li>
        </ul>
      </div>
      <!-- END / SOCIAL LINKs -->
      <div class="copyright"> &copy;2016 TimQ <br>
        <a href="#">Terms & Privacy</a> </div>
    </div>
    
</body>
</html>