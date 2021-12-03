<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/index_include/manager_header.jsp"/>
<main>
    <div class="container" style="margin:50px auto;">
        <div class="manageUser-page-box">
            <div class="sub_tit_wrap">
                <div class="sub_tit_inner">
                <h2>회원관리</h2>
                </div>
            </div><!--sub_tit_wrap end-->
            <hr/>

            <div class="m_main_content">
                <div class="search-area-box">
                    <form onsubmit="searchByName()">
                    <div class="search-input-box">
                        <input id="name" type="text" name="name" placeholder="이름를 입력해주세요." />
                    </div>
                    <div class="search-btn-box">
                        <button name="search_btn" type="submit" value="검색"><i class="fas fa-search"></i></button>
                    </div>
                    </form>
                </div> <!-- end search-area-box-->

                <div class="user-list-area-box">
                    <table class="userlist-tb">
                        <colgroup>
                            <col width="20%">
                            <col width="7%">
                            <col width="8%">
                            <col width="30%">
                            <col width="20%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">아이디</th>
                                <th scope="col">이름</th>
                                <th scope="col">핸드폰</th>
                                <th scope="col">주소</th>
                                <th scope="col">이메일</th>
                                <th scope="col">가입날짜</th>
                            </tr>
                        </thead>
                        <tbody id="notice">
                            <c:forEach var="user" items="${usersEntity}">
                            <tr>  
                               
                                <td>${user.user.user_id}</td> 
                                <td><a>${user.user.user_name}</a></td> 
                                <td>${user.user.user_tel}</td>
                                <td>${user.user.user_address1}  ${user.user.user_address2}</td>      
                                <td>${user.user.user_email}</td>     
                                <td>${user.user.create_date}</td> 
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table> 
                </div>  <!-- end user-list-area-box-->


            </div>

            <div class="pagination-box">
                <ul class="pagination">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                  </ul>
                  
            </div>

        </div>
    </div>
</main>
<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
</html>