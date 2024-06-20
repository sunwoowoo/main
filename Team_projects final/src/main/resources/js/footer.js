
  ///무한 이동
  const bannerList = document.querySelector('.top_move_img_box');
  const bannerItems = document.querySelectorAll('.top_move_img');
  const numBanners = bannerItems.length; // 총 배너의 갯수를 변수에 담기

// 선택된 배너의들을 복제해서 뒤에 이어 붙이기
  for (let i = 0; i < numBanners; i++) {
    bannerList.appendChild(bannerItems[i].cloneNode(true));
  }

// 배너 하나의 너비를 계산
  const bannerWidth = bannerItems[0].offsetWidth;
// 배너 리스트의 너비를 설정
  bannerList.style.width = `${bannerWidth * numBanners * 2 + 10 * (numBanners * 2 - 1)}px`;

// 현재 배너 위치와 마지막으로 애니메이션을 실행한 시간을 저장하는 변수를 초기화
  let currentPos = 0;
  let lastTime = 0;

// 애니메이션을 실행하는 함수를 정의
  function animate(timestamp) {
    // 마지막으로 애니메이션을 실행한 시간과 현재 시간 사이의 차이를 계산
    const delta = timestamp - lastTime;
    lastTime = timestamp;

    // 배너 리스트를 이동시킬 거리를 계산
    currentPos -= (bannerWidth + 10) * delta / 1000;
    // 만약 배너 리스트가 전부 왼쪽으로 이동했다면, 처음 위치로 이동
    if (currentPos <= -(bannerWidth + 10) * numBanners) {
      currentPos = 0;
    }
    // 배너 리스트를 이동
    bannerList.style.transform = `translateX(${currentPos}px)`;

    requestAnimationFrame(animate);
  }

  requestAnimationFrame(animate);



/////////////오른쪽

  const bannerList2 = document.querySelector('.bottom_move_img_box');
  const bannerItems2 = document.querySelectorAll('.bottom_move_img');
  const numBanners2 = bannerItems2.length; // 총 배너의 갯수를 변수에 담기

// 선택된 배너의들을 복제해서 뒤에 이어 붙이기
  for (let i = 0; i < numBanners2; i++) {
    bannerList2.appendChild(bannerItems2[i].cloneNode(true));
  }

// 배너 하나의 너비를 계산한다.
  const bannerWidth2 = bannerItems2[0].offsetWidth;
// 배너 리스트의 너비를 설정한다.
  bannerList2.style.width = `${bannerWidth2 * numBanners2 * 2 + 10 * (numBanners2 * 2 - 1)}px`;

// 현재 배너 위치와 마지막으로 애니메이션을 실행한 시간을 저장하는 변수를 초기화
  let currentPos2 = 0;
  let lastTime2 = 0;

// 애니메이션을 실행하는 함수를 정의
  function animate2(timestamp2) {
    // 마지막으로 애니메이션을 실행한 시간과 현재 시간 사이의 차이를 계산
    const delta = timestamp2 - lastTime2;
    lastTime2 = timestamp2;

    // 배너 리스트를 이동시킬 거리를 계산
    currentPos2 += (bannerWidth2 + 10) * delta / 1000;
    // 만약 배너 리스트가 전부 왼쪽으로 이동했다면, 처음 위치로 이동
    if (currentPos2 <= +(bannerWidth2 + 10) * numBanners2) {
      currentPos2 = 0;
    }
    // 배너 리스트를 이동
    bannerList2.style.transform = `translateX(${currentPos}px)`;

    requestAnimationFrame(animate2);
  }

  requestAnimationFrame(animate2);



