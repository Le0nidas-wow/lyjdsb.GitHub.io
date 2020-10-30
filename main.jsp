<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>DDD</title>
<link href="style.css" rel="stylesheet">

</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/testcard?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC" 
	user="root" 
 	password="964923436"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from testcard;
</sql:query>
    <header>
        <h1>DDD</h1>
    </header>
      <nav>
        <ul>
          <li><a href="#">怪兽</a></li>
          <li><a href="#">魔法</a></li>
          <li><a href="#">陷阱</a></li>
        </ul>

        <form>
            </nav>
          <input type="search" name="q" placeholder="要搜索的内容">
          <input type="submit" value="搜索">
        </form>
        <main>
            <article>
                 <table border="1" width="100%">
<tr>
   <th>名字</th>
   <th>类型</th>
   <th>编号</th>
   <th>等级</th>
   <th>属性</th>
   <th>种族</th>
   <th>ATK</th>
   <th>DEF</th>
   <th>灵摆刻度</th>
   <th>连接箭头</th>
   <th>卡图</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.type_st}"/></td>
   <td><c:out value="${row.password}"/></td>
   <td><c:out value="${row.level}"/></td>
   <td><c:out value="${row.attribute}"/></td>
   <td><c:out value="${row.race}"/></td>
   <td><c:out value="${row.atk}"/></td>
   <td><c:out value="${row.defence}"/></td>
   <td><c:out value="${row.pend_r}"/></td>
   <td><c:out value="${row.link_arrow}"/></td>
   <td><img src="pics/<c:out value="${row.password}"/>.jpg"><td>
</tr>
</c:forEach>
</table>
              
            </article>
                    
        
        <aside><h2>类别筛选</h2>

        <ul>
          <li><a href="#">效果怪兽</a></li>
          <li><a href="#">效果/调整怪兽</a></li>
          <li><a href="#">灵摆/效果怪兽</a></li>
          <li><a href="#">灵摆/效果/调整怪兽</a></li>
          <li><a href="#">融合/效果怪兽</a></li>
          <li><a href="#">同调/效果怪兽</a></li>
          <li><a href="#">超量/效果怪兽</a></li>
          <li><a href="#">链接/效果怪兽</a></li>
          <li><a href="#">融合/灵摆/效果怪兽</a></li>
          <li><a href="#">同调/灵摆/效果怪兽</a></li>
          <li><a href="#">超量/灵摆/效果怪兽</a></li>
        </ul>
        </aside>
    </main>
        <footer>
            <p>© 2050 保留所有权利 | 宇 PPP 备 0054444944 号</p>
          </footer>

 
</body>
</html>
