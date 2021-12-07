<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="../include/index_include/manager_header.jsp"/>

<div class="container" style="margin:50px auto;">

    <div class="sub_tit_wrap">
        <div class="sub_tit_inner">
        <h2>상품리스트</h2>
        </div>
    </div><!--sub_tit_wrap end-->
    <hr/>

<!-- c:forEach 사용하기 -->

    <div class="d-flex">
	    <c:forEach var="sales" items="${salesEntity}">
	      <div class="p-2 flex-fill">
	        <a href="/manager/detail/${sales.sales_id}" class="card" style="width: 18rem;">
	          <img class="card-img-top" src="/images/${sales.category}_list/${sales.salesImg}" alt="image cap">
	          <!-- <img src="/images/${product.category}_list/${product.productImg}" alt=""/>-->
	          <div class="card-body">
	            <h5 class="card-title">${sales.sales_title}</h5>
	            <p class="card-tdivext">${sales.sales_price}</p>
	          </div>
	        </a>
	        </div>
	      </c:forEach>
	      
    </div>
  </div>

</div>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>

