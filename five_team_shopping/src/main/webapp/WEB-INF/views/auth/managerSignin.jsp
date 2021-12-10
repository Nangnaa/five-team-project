<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="/css/index.css"/>
  <link rel="stylesheet" href="/css/auth/managerSignin.css"/>

 <!-- header include -->
<jsp:include page="../include/index_include/index_header.jsp"></jsp:include>

<div class="container" style="margin:50px auto;">
    <main>
        <div class="login_wrap">
            <div class="title">관리자 로그인</div>
            <div class="manager_login_form" >
                <div class="manager_form_box">
                    <div class="id_pw_box">
                      <form action="/manager/signin" id="login_form" method="post" role="form">
                        <input class="manager_login"  id="user_id" name="user_id" type="text" maxlength="20" placeholder="아이디를 입력해 주세요." required="required" autocomplete="off">
                        <input class="manager_login"  id="user_password" name="user_password" type="password" maxlength="20" placeholder="비밀번호를 입력해 주세요." required="required" autocomplete="off">
                        <input class="manager_login_btn" type="submit" value="로그인" />
                        </form>
                    </div>
                            
                    <hr />
                    <div class="managerloginfunc_button_box">
                                                
                    </div><!-- end managerloginfunc-button-box-->
                            
                    
              </div> <!-- end form-box -->
        </div>
    </main>
</div>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
<script src="/js/manager/managerSignin.js"></script>
</html>
