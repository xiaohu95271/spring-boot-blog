<%--
  Created by IntelliJ IDEA.
  User: 13220
  Date: 2019/8/3
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";

%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<c:set var="path" value="<%=path%>"></c:set>
<c:set var="basePath" value="<%=basePath%>"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%--公共css--%>
<base href="/">
<link rel="stylesheet" href="${path}/layui/css/layui.css"  type="text/css" >

<script src="${path}/layui/layui.all.js" type="text/javascript"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer,form = layui.form;


    });
</script>
