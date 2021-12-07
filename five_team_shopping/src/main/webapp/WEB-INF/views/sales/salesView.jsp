<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/index.css">
  <link rel="stylesheet" href="/css/sales/salesView.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet">
    <title>item_view</title>
</head>
<body>
    <jsp:include page="../include/index_include/index_header.jsp"/>

    <div class="container">
      <div class="inner_header">
        <span class="root_path">HOME</span>
        <span>></span>
        <span class="current_path">TOP</span>
      </div>
            <div class="inner_box">
                <div class="img_part">
                    <img src="images/item1.jpg" alt=""/>
                    <img src="images/item2.jpg" alt=""/>
                    <img src="images/item3.jpg" alt=""/>
                   
                </div>
                <div class="info_part">
                    <div class="info_box">
                        <div class="title_box">
                            <div class="info_title">
                                톰스 아가일 카라니트
                            </div>
                            <p class="info_price">
                                34,000원
                            </p>
                        </div>
                       <div class="select_box">
                           <div class="color_select">
                                <div class="select_title">
                                    COLOR
                                </div>
                                <div class="option_box">
                                    <select name="color_select" id="color_select">
                                        <option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
                                        <option value="**" disabled="" link_image="">-----------------------<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option></option>
                                        <option value="블랙" link_image="">블랙</option>
                                        <option value="블루" link_image="">블루</option>
                                        <option value="베이지" link_image="">베이지</option>
                                    </select>
                                </div>
                           </div>
                           <div class="size_select">
                                <div class="select_title">
                                    SIZE
                                </div>
                                <div class="option_box">
                                    <select name="color_select" id="color_select">
                                        <option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
                                        <option value="**" disabled="" link_image="">-----------------------<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option></option>
                                        <option value="sizeS" link_image="">S</option>
                                        <option value="sizeM" link_image="">M</option>
                                        <option value="sizeL" link_image="">L</option>
                                    </select>
                                </div>
                           </div>
                       </div>
                       <div class="dtl_btn_box">
                           <button class="dtl_btn">쇼핑백 담기</button>
                           <button class="dtl_btn">구매하기</button>
                       </div>
                    </div>
                </div>
                
            </div>
    </div>
	<jsp:include page="../include/index_include/index_footer.jsp"/>

    </body>
    <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
</html>