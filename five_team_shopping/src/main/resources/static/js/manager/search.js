/*--------------------------------------------------------------/
/							이름 검색								/	
/--------------------------------------------------------------*/
async function searchByName(){
	event.preventDefault();
	
	let searchReqDto = {
      name: document.querySelector("#name").value,
      // userId: userId,
    };
    
     console.log(JSON.stringify(searchReqDto));
     
     let response = await fetch("/manager/searchname", {
      method: "post",
      body: JSON.stringify(searchReqDto),
      headers: {
        "Content-Type": "application/json; charset=utf-8",
      },
    });
    
    let parseResponse = await response.json();
    console.log(parseResponse);
    
    if (parseResponse.code === 1) {
      let userBoxEl = document.querySelector("#notice");
  
      console.log(parseResponse.data);
  
      userBoxEl.innerHTML = ""; // userBoxEl 안 html 태그 날리기     

      let items = parseResponse.data;

      items.forEach(users => {
        let userItem = document.createElement("tr");
        let temp = `
        
        <td>${users.user_id}</td>
        <td class="left"><a>${users.user_name}</a></td>
        <td><a>${users.user_email}</a></td>
        <td><a>${users.create_date}</a></td>
        <td>0</td>
        
      `;

      userItem.innerHTML = temp;
      userBoxEl.prepend(userItem);

      });

    } else if(parseResponse.code == -1) {
      alert("해당 이름의 사용자가 존재하지 않습니다.");
      location.reload();
    } else{
      alert("세션이 만료되었습니다. 다시 로그인해주세요.");
      location.href = "/auth/manager/loginform";
    }
}


/*--------------------------------------------------------------/
/						category search							/	
/--------------------------------------------------------------*/
async function categorySearch() {
  event.preventDefault();

  let categoryDto = {
    category: document.querySelector("#category").value,
  };

  console.log(JSON.stringify(categoryDto));

  let respCategory = await fetch("/manager/searchCategory", {
    method: "post",
    body: JSON.stringify(categoryDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  let parseRespCategory = await respCategory.json();
  console.log(parseRespCategory);

  if (parseRespCategory.code == 1) {
    let itemBoxEL = document.querySelector("#notice");
    console.log(parseRespCategory.data);
    itemBoxEL.innerHTML = "";

    let itemsByCategory = parseRespCategory.data;

    itemsByCategory.forEach((items) => {
      let itemLine = document.createElement("tr");
      let innerLine = `
      <td>${items.id}</td>     
      <td>${items.user.name}</td>
      <td class="left"><a>${items.product.productName}</a></td>     
      <td>${items.date}</td>     
      <td>${items.product.price}</td> 
      <td>1</td>  
      `;

      itemLine.innerHTML = innerLine;
      itemBoxEL.prepend(itemLine);
    });
  } else if (parseRespCategory.code == -1) {
    alert("해당 카테고리 제품이 없습니다.");
    location.reload();
  } else {
    alert("세션이 만료되었습니다. 다시 로그인해주세요.");
    location.href = "/auth/manager/loginform";
  }
}


/*--------------------------------------------------------------/
/					판매현황 이름 검색								/	
/--------------------------------------------------------------*/
async function saledItemByName() {
  event.preventDefault();

  let searchReqDto = {
    name: document.querySelector("#name").value,
  };

  console.log(JSON.stringify(searchReqDto));

  let response = await fetch("/manager/saleditemsByName", {
    method: "post",
    body: JSON.stringify(searchReqDto),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  });

  let parseResponse = await response.json();
  console.log(1, parseResponse);

  if (parseResponse.code === 1) {
    let userBoxEl = document.querySelector("#notice");
    console.log(parseResponse.data);

    let saleditems = parseResponse.data;

    userBoxEl.innerHTML = ""; // userBoxEl 안 html 태그 날리기

    saleditems.forEach((saled) => {
      let userItem = document.createElement("tr");
      let temp = `
      <td>${saled.id}</td>     
      <td>${saled.user.name}</td>
      <td class="left"><a>${saled.product.productName}</a></td>     
      <td>${saled.date}</td>     
      <td>${saled.product.price}</td> 
      <td>1</td>    
    `;

      userItem.innerHTML = temp;
      userBoxEl.prepend(userItem);
    });
  } else if (parseResponse.code == -1) {
    alert("해당 이름의 사용자가 존재하지 않습니다.");
    location.reload();
  } else if (parseResponse.code == 0) {
    alert("세션이 만료되었습니다. 다시 로그인 해주세요.");
    location.href = "/auth/manager/loginform";
  }
}
