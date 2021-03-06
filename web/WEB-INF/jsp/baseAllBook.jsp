
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%--BootStrap美化界面--%>
<%@include file="bb.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boxtry.css">

<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <!-- 上面这个div是整个查询表框的结束div -->


<div class="right">

    <!-- 上面这个div是整个查询表框的结束div -->

    <div class="rightdiv2">
        <p  class="zi" >   &nbsp;&nbsp; 列表结果 </p>

        <div>
            <div> <p><img src="${pageContext.request.contextPath}/images/firstSy/选择项底框 位置 X459  Y282 .png" alt=""> 下单时间</p>

                <select name="" id="" class="xiala" >
                    <option value=""></option>
                    <option value="">5月</option>
                    <option value="">6月</option>
                </select>
            </div>
            <div><p><img src="${pageContext.request.contextPath}/images/firstSy/选择项底框 位置 X459  Y282 .png" alt="">维修类型</p>


                <select name="" id="" class="xiala" >
                    <option value=""></option>
                    <option value="">5月</option>
                    <option value="">6月</option>
                </select>

            </div>
            <div><p><img src="${pageContext.request.contextPath}/images/firstSy/选择项底框 位置 X459  Y282 .png" alt="">用户</p>
                <form action="${pageContext.request.contextPath}/books/allBooksByInputName">
                    <input type="text" placeholder="请输入要查询的用户" name="inputName">
                    <input type="hidden" placeholder="请输入要查询的用户" name="nowPage" value="1">
                    <input type="submit" value="查询">
                </form>

            </div>
            <a href="${pageContext.request.contextPath}/books/allBooksByInputName?nowPage=1" style="display: inline-block;"  class="anniu" ><img   src="${pageContext.request.contextPath}/images/firstSy/查询 查询按钮 位置X1688Y331.png" alt=""></a>

        </div>

        <br><br><br>
        <table    border="1" align="center"  cellpadding='20' cellspacing = '0'  >
            <tr class="ditr">
                <th>选择</th>
                <th>表单ID</th>
                <th>提交用户</th>
                <th>提交人联系电话</th>
                <th>维修的设备</th>
                <th>维修人账号</th>
                <th>描述设备问题</th>
                <th>维修设备的总数量</th>
                <th>维修设备的地址</th>
                <th>提交表单时间</th>
                <th>完成表单时间</th>
                <th>表单状态</th>
                <th>维修结果描述</th>
                <th>操作</th>
            </tr>
            <c:forEach var="books" items="${list}" >
                <tr>
                    <th><input type="radio" name='select' id="select" value="${books.bookID}"></th>
                    <td><span>${books.bookID}</span></td>
                    <td><span>${books.inputName}</span></td>
                    <td><span>${books.phone}</span></td>
                    <td><span>${books.maintainThing}</span></td>
                    <td><span>${books.finishName}</span></td>
                    <td><span>${books.sayProblem}</span></td>
                    <td><span>${books.maintainNum}</span></td>
                    <td><span>${books.bookAddress}</span></td>
                    <td><span>${books.inputTime}</span></td>
                    <td><span>${books.finishTime}</span></td>
                    <td><span>${books.bookState}</span></td>
                    <td><span>${books.end}</span></td>
                    <td>
                        <span><a href="${pageContext.request.contextPath}/books/inputBooks?bookID=${books.bookID}" style="display: inline-block;" ><img src="${pageContext.request.contextPath}/images/firstSy/列表 新增按钮 位置X446 Y563 .png" alt=""></a></span>
                        <span><a href="${pageContext.request.contextPath}/books/toUpdateByBookID?bookID=${books.bookID}" style="display: inline-block;" ><img src="${pageContext.request.contextPath}/images/firstSy/列表 编辑按钮 位置X549Y563.png "alt=""></a></span>
                        <span><a href="${pageContext.request.contextPath}/books/deleteByBookID?bookID=${books.bookID}"  style="display: inline-block;" ><img src="${pageContext.request.contextPath}/images/firstSy/列表 删除按钮 位置X652Y563.png" alt=""></a></span>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <span >总记录数:${rows}条</span>
        <span>当前页数/总页数:<span >${page}</span> / <span id="totalPage">${sum}</span> </span>
        <input type="hidden" id="nowPage1" value="${page}">
        <form action="${pageContext.request.contextPath}/books/limit">
            <span><input type="text" placeholder="请输入页数" name="nowPage"></span>
            <span><input type="submit" value="查询"> </span>
        </form>

    </div>

</div>
</div>

</section>
<%@include file="foot.jsp"%>


