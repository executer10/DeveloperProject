
      
// 월 옵션 추가 (1월~12월)
const monthSelect = document.getElementById('month-select');
for (let month = 1; month <= 12; month++) {
const option = document.createElement('option');
option.value = month; // 선택 값
option.textContent = `${month}월`; // 표시 텍스트 (월 추가)
monthSelect.appendChild(option);
}

// 기본값 설정 (선택 사항)

monthSelect.value = new Date().getMonth() + 1; // 현재 월 기본 선택 (0부터 시작하므로 +1)
 
  
  
      // 현재 연도 계산
      const currentYear = new Date().getFullYear();
      const startYear = 2000; // 시작 연도
      const yearSelect = document.getElementById('year-select');
      const yearSelectt = document.getElementById('year2');
      // 년도 옵션 추가
      for (let year = startYear; year <= currentYear; year++) {
        const option = document.createElement('option');
        option.value = year; // 선택 값             
        option.textContent = `${year}년`; // 표시 텍스트 (년 추가)

        yearSelect.appendChild(option);
      }
      for (let year = startYear; year <= currentYear; year++) {
        const option = document.createElement('option');
        option.value = year; // 선택 값             
        option.textContent = `${year}년`; // 표시 텍스트 (년 추가)

        yearSelectt.appendChild(option);
      }

  
      // 기본값 설정 (선택 사항)
      yearSelect.value = currentYear; // 현재 연도 기본 선택
      yearSelectt.value = currentYear; // 현재 연도 기본 선택
   



  var ctx = document.getElementById('myDoughnutChart').getContext('2d');
  var myDoughnutChart = new Chart(ctx, {
      type: 'doughnut',
      data: {
          labels: ['공급가액', '연체료', '부가세'],
          datasets: [{
              data: [300000, 50000, 30000],
              backgroundColor: ['#4BC0C0', '#36A2EB', '#FFCE56'],
              hoverBackgroundColor: ['#FF6384', '#36A2EB', '#FFCE56']
          }]
      },
      options: {
          responsive: true,
          plugins: {
              legend: {
                  position: 'top',
              },
              tooltip: {
                  callbacks: {
                      label: function(context) {
                          var label = context.label || '';
                          if (label) {
                              label += ': ';
                          }
                          label += context.raw + '원';
                          return label;
                      }
                  }
              }
          }
      }
  });
  
// 프린터 관련 함수
document.getElementById('button2').onclick = function() {
    // 모니터 크기 가져오기
    const screenWidth = window.screen.width;
    const screenHeight = window.screen.height;

    // 새 창 크기 설정
    const windowWidth = 1000; // 새 창의 너비
    const windowHeight = 900; // 새 창의 높이

    // 중앙 좌표 계산
    const left = (screenWidth - windowWidth) / 2;
    const top = (screenHeight - windowHeight) / 2;

    // 페이지를 중앙에 열기
    const printWindow = window.open(
        'payment',
        '_blank',
        `width=${windowWidth},height=${windowHeight},left=${left},top=${top}`
    );

    // 새 창이 로드되면 프린트 실행
    printWindow.onload = function() {
        printWindow.print(); // 프린트 대화상자 열기        
    };
}; 

