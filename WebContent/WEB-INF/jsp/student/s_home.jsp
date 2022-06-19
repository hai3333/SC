<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!-- 包含头部信息用于适应不同设备 -->
    <meta name="viewport"
          content="width=device-width, initial-scale=1
    	user-scalable=no">
    <!-- 包含 bootstrap 样式表 -->
    <link rel="stylesheet"
          href="../BootStrap/css/bootstrap.min.css">
    <!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
    <!-- 可选: 包含 jQuery 库 -->
    <script src="../BootStrap/js/jquery-3.1.1.js"></script>

    <!-- 可选: 合并了 Bootstrap JavaScript 插件 -->
    <script src="../BootStrap/js/bootstrap.min.js"></script>
    <title>学生框架</title>
    <!--学生的整体框架-->
    <style type="text/css">
        .home{
            height: 200px;
            width: 1200px;
            background-color: #FFFFFF;
        }
        .myself{
            margin-top:30px ;
            height: 200px;
            width: 400px;
            background-color:#F8F8F8;
            float: left;
        }
        .myself img{
            margin: 30px;
            border: 10px;
            float: left;
        }
        .tongzhi{
            border-right: 30px;
            height: 300px;
            width: 700px;
            /*background-color: #39987C;*/
            float: right;
            font-size: large;
        }
        .myname{
            float: left;
        }
        .subject{
            height: 500px;
            width: 700px;
            background-color: #F8F8F8;
            float: left;

        }

    </style>

</head>
<body>
<!--整个页面栅格-->
<div class="container-fluid "
     style="background-color: blasck; padding: 0px; margin-left: 4%;">
    <div class="home">
        <div class="myself">
            <img src="http://jwxt.swun.edu.cn/zftal-ui-v5-1.0.2//assets/images/user_logo.jpg" />
            <div class="myname">
                <c:if test="${!empty student }">

                    <h3>${student.s_name }</h3>
                    <h4>${student.s_account }</h4>
                    <h4>${student.s_dept}</h4>

                </c:if>

            </div>


        </div>
        <div class="tongzhi">
            <h1>通知</h1>

            <c:if  test="${!empty notice }">
                <span>

                <c:forEach items="${notice }" var="n" varStatus="loop">
                  <div style="background-color: #F0F0F0; border-bottom:#337ab7 1px ">
                      <a style="font-size: 20px;color: #3daed0 ">  *【${n.nt_title }】 ${n.nt_content}  </a>
                    <a style="font-size: 16px;color: #2d2d2d">（发件人：${ntTName[loop.count-1] }） ${n.nt_time }</a>
                  </div>
                    </c:forEach>
            </c:if>



        </div>


        <%--获取课表--%>
        <div class="subject">
           <h1>我的课程</h1>
            <c:if test="${!empty work }">
                <c:forEach items="${work }" var="w" varStatus="loop">
                    <div style="background-color: #F0F0F0; border-bottom:#337ab7 1px ">
                        <a style="font-size: 20px;color: #3daed0 ">  ${w.w_course }</a>

                    </div>
                </c:forEach>
            </c:if>




        </div>




    </div>

</div>
</body>
</html>