<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/22
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="../js/jquery.js"></script>
<head>
    <title></title>

</head>
<body>
<button id="getstu">gett</button>
<c:if test=""></c:if>
</body>
<script type="application/javascript">
  $("#getstu").click(function(){
    $.ajax({
      url: "http://localhost:8080/admin/student/getstu",
      data: {},
      type: 'POST',
      success: function (data) {
        console.log(data.data);
      }})
  })

</script>
</html>
