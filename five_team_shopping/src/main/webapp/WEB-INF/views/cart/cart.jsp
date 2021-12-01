<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/cart.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <header>
            <div class="title">
                SHOPPING BAG <div class="title_quantity">(1)</div>
            </div>
        </header>
        <main>
            <div class="middlespace">

                <div class="middlespace_left">
                    <hr>
                    <div class="middlespace_left_content">

                        <div class="middlespace_left_content_west">
                            <div class="middlespace_left_checkbox">
                                <input type="checkbox" name="xxx" value="yyy" checked>
                            </div>
                            <div class="middlespace_left_photo">
                                <img src="" width="100"; height="120">
                            </div>
                            <div class="middlespace_left_info">
                                <div class="middlespace_left_info_">톰스 아가일 카라니트</div>
                                <div class="middlespace_left_info_price">34000원</div>
                                <div class="middlespace_left_info_option">
                                    <div>[옵션:베이지]</div><div class="middlespace_left_info_optionmodify">변경</div>
                                </div>
                                <div class="middlespace_left_info_quantitybutton">
                                    <div class="quantity_button_number">10</div><div class="quantity_button_minus">-</div><div class="quantity_button_plus">+</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="middlespace_left_content_east">
                            <div class="middlespace_left_deletebutton">
                                삭제
                            </div>
                        </div>

                    </div>
                    <hr>
                </div>

                <div class="middlespace_right">
                    <hr>
                    <div class="middlespace_right_info">
                        <div class="salesprice">
                            <div>상품 합계금액</div><div>34,000원</div>
                        </div>
                        <div class="deliveryprice">
                            <div>배송비</div><div>2,500원</div>
                        </div>
                        <div class="totalprice">
                            <div><strong>총 주문합계</strong></div><div>36,500원</div>
                        </div>
                    </div>
                    <hr>
                    <div class="middlespace_right_buttons">
                        <div class="button_allclear">
                            쇼핑백비우기
                        </div>
                        <div class="button_specificclear">
                            선택상품삭제
                        </div>
                        <div class="button_specificorder">
                            선택상품주문
                        </div>
                        <div class="button_allorder">
                            전체상품주문
                        </div>
                    </div>
                    <div>
                        <div><strong>쇼핑백 이용안내</strong><br></div>
                        <div class="info">쇼핑백에 담긴 상품은 30일동안 보관됩니다. 보관된 상품은 30일 이후에 삭제되오니 쇼핑백에서 삭제된 경우 다시 쇼핑백에 담아주시기 바랍니다.</div>
                    </div>
                </div>
            </div>
        </main>
        <footer>

        </footer>
        
    </div>
</body>
</html>