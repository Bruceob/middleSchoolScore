<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/3/2
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>本学期成绩</title>
  <link rel="stylesheet" href="../css/stu_index.css">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="../javaScript/jquery.js"></script>
  <script src="../javaScript/bootstrap.min.js"></script>
</head>
<body>
<div style="height:60px;"></div>
    <!--成绩-->
    <div id="score_now">
      <div style="width:580px;margin-bottom:30px">
        <button class="btn btn-default">本学期成绩</button>
        <a href="/student/getAllScore?id=${msStudent.id}" target="main"><button class="btn btn-warning">所有成绩</button></a>
      </div>
        <div class="score_info">
          <table class="table table-bordered">
            <thead>
            <tr class="btn-info" style="height:46px">
              <th>数学</th>
              <th>语文</th>
              <th>英语</th>
 <c:if test="${nowScore.type=='1'||nowScore.type=='3'}">
              <th>物理</th>
              <th>化学</th>
              <th>生物</th>
              </c:if>
 <c:if test="${nowScore.type=='1'||nowScore.type=='2'}">
              <th>政治</th>
              <th>地理</th>
              <th>历史</th>
  </c:if>
 <c:if test="${nowScore.type=='5'}">
              <th>基本能力</th>
  </c:if>
              <th>总成绩</th>
              <th>班级排名</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>${nowScore.math}</td>
              <td>${nowScore.chinese}</td>
              <td>${nowScore.english}</td>
<c:if test="${nowScore.type=='1'||nowScore.type=='3'}">
              <td>${nowScore.physico}</td>
              <td>${nowScore.chemical}</td>
              <td>${nowScore.biology}</td>
  </c:if>
<c:if test="${nowScore.type=='1'||nowScore.type=='2'}">
              <td>${nowScore.political}</td>
              <td>${nowScore.geography}</td>
              <td>${nowScore.history}</td>
  </c:if>
              <c:if test="${nowScore.type=='5'}">
                <th>basicCompetencies</th>
              </c:if>
              <td>${allScore}</td>
              <td>${ranking}</td>
            </tr>
            </tbody>
          </table>

        </div>
      </div>
    <!--成绩-->
</body>
</html>
