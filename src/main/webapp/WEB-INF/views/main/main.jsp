<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet" href="/resources/CSS/main/main.css" />
</head>
<body>
   <h1>간편요금조회</h1>
        
        <div class="billing-box">    
                <div class="billing-search">
                    <div class="contact-number">
                        <h3>사용계약번호</h3>
                        <input></input>
                    </div>
                    
                    
                    <div class="billing-day">
                        <h3>청구년월</h3>
                        <select name="year" id="year2">

                        </select>
                        <select name="month" id="month-select">

                            
                        </select>
                    
                        <button>조회</button>
                        
                    </div>
                    
                </div>
            

            <p>※<span>사용계약번호</span>를 입력해 주세요.<span>사용계약번호</span>는 청구서에 기재되어 있습니다.</p>
        </div>

    
    <h2>가스요금내역</h2>
        
    <div class="table-box">    
        <div class="table">
            <table>
                <tr>
                    <td>공급가액</td>
                    <td>-원</td>
                </tr>
                <tr>
                    <td>부가세</td>
                    <td>-원</td>
                </tr>
                <tr>
                    <td>연체료</td>
                    <td>-원</td>
                </tr>
                <tr>
                    <td>결제금액</td>
                    <td>-원</td>
                </tr>
            </table>
        </div>
        <div class="chart-container">
            <canvas id="myDoughnutChart"></canvas>
        </div>        
    </div>

        
        <a href="#">한국지역난방공사 요금표</a>
        <h2>납부내역출력</h2>
        
        <div class="printer-box">
            <label for="year-select"> </label>
            <select id="year-select">
            <!-- JavaScript로 옵션 생성 -->
            </select>
            
            <div class="button">
                <button type="button">인쇄</button>
                <button type="button">엑셀저장</button>
            </div>    
        </div>
        
        
         <script>
      
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
        </script>
        
        <script>
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
          </script>
    
    
    <script>
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
    </script> 
    
</body>
</html>