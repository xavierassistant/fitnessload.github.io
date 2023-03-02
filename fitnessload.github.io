<!DOCTYPE html>
<html>
  <head>
    <title>EasyFit</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">   
    <style>
      /* Global styles */
      body {
        font-family: Arial, sans-serif; 
        font-size: 16px;
        color: #333;
      }

      /* Header styles */
      header {
        background-color: #f8f8f8;
        padding: 20px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
      }

      header h1 {
        font-size: 36px;
        font-weight: bold;
        margin: 0;
      }

      /* Navigation styles */
      nav {
        background-color: #333;
        color: #fff;
        padding: 10px 20px;
      }

      nav ul {
        margin: 0;
        padding: 0;
        list-style: none;
      }

      nav li {
        display: inline-block;
        margin-right: 20px;
      }

      nav li:last-child {
        margin-right: 0;
      }

      nav a {
        color: #fff;
        text-decoration: none;
      }

      /* Main content styles */
      .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
      }

      h2 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
      }

      .row {
        display: flex;
        flex-wrap: wrap;
        margin: 0 -10px;
      }

      .col {
        flex: 1;
        padding: 0 10px;
      }

      .card {
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
      }

      .card h3 {
        font-size: 20px;
        font-weight: bold;
        margin: 0 0 10px 0;
      }

      .card p {
        margin: 0;
      }

      .card img {
        max-width: 100%;
        margin-bottom: 10px;
      }

      /* Footer styles */
      footer {
        background-color: #333;
        color: #fff;
        padding: 20px;
      }

      footer p {
        margin: 0;
      }

      footer a {
        color: #fff;
        text-decoration: none;
      }
    </style>
  </head>

  <body>
    <header>
      <div class="container">
        <h1>EasyFit</h1>
      </div>
    </header>

    <nav>
      <div class="container">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Workouts</a></li>
          <li><a href="#">Nutrition</a></li>
          <li><a href="#">About</a></li>
        </ul>
      </div>
    </nav>

    <main>
        <div class="container">
          <h1>EasyFit</h1>
          <p>Get your personalized workout and nutrition plan today!</p>
          <form id="user-form">
            <label for="goal">What is your fitness goal?</label>
            <select id="goal" name="goal">
              <option value="lose-weight">Lose weight</option>
              <option value="build-muscle">Build muscle</option>
              <option value="improve-health">Improve health</option>
            </select>
            <label for="gender">What is your gender?</label>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label>
            <label for="age">What is your age?</label>
            <input type="number" id="age" name="age" min="18" max="99" required>
            <button type="submit" id="get-plan-btn">Get Personalized Plan</button>
          </form>
          <div id="custom-plan"></div>
        </div>
 <script>
const userForm = document.querySelector('#user-form');
    const customPlan = document.querySelector('#custom-plan');
    
    userForm.addEventListener('submit', (event) => {
      event.preventDefault();
      const goal = document.querySelector('#goal').value;
      const gender = document.querySelector('input[name="gender"]:checked').value;
      const age = document.querySelector('#age').value;
    
      let planText = '';
    
      if (goal === 'lose-weight') {
        planText = `Based on your goal of losing weight, we recommend a high-protein, low-carb diet and a combination of cardio and strength training exercises.
                    For your age of ${age} and gender of ${gender}, you should aim for 1200-1500 calories per day and 30-45 minutes of exercise per day, 5-6 days per week.`;
      } else if (goal === 'build-muscle') {
        planText = `Based on your goal of building muscle, we recommend a high-protein, moderate-carb diet and a combination of heavy lifting and bodyweight exercises.
                    For your age of ${age} and gender of ${gender}, you should aim for 2500-3000 calories per day and 60-90 minutes of exercise per day, 5-6 days per week.`;
      } else if (goal === 'improve-health') {
        planText = `Based on your goal of improving health, we recommend a balanced diet and a combination of aerobic and resistance exercises.
                    For your age of ${age} and gender of ${gender}, you should aim for 2000-2500 calories per day and 30-60 minutes of exercise per day, 5-6 days per week.`;
      }
    
      customPlan.style.color = 'purple';
      customPlan.textContent = planText;
    });
    </script>


    <main>
      <div class="container">
      <h2>Workouts</h2>
        <p>Here are some workout options that can help you achieve your fitness goal:</p>
        <div class="row">
          <div class="col">
            <div class="card">
              <img src="https://images.unsplash.com/photo-1470468969717-61d5d54fd036?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=444&q=80" alt="Card image cap">
              <h3>Cardio</h3>
              <p>Cardio exercises are great for burning calories and improving cardiovascular health. Some examples of cardio exercises include running, cycling, swimming, and jumping rope.</p>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="https://images.unsplash.com/photo-1517838277536-f5f99be501cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" alt="Card image cap">
              <h3>Strength training</h3>
              <p>Strength training exercises help to build muscle, increase metabolism, and improve bone density. Some examples of strength training exercises include weight lifting, bodyweight exercises, and resistance band exercises.</p>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="https://images.unsplash.com/photo-1591258370814-01609b341790?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="Card image cap">
              <h3>Pilates</h3>
              <p>Pilates is a low-impact form of exercise that helps to improve flexibility, balance, and core strength. It involves a series of controlled movements and breathing techniques.</p>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="https://images.unsplash.com/photo-1588286840104-8957b019727f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" alt="Card image cap">
              <h3>Yoga</h3>
              <p>Yoga is a practice that combines physical postures, breathing techniques, and meditation. It can help to improve flexibility, strength, and mental well-being.</p>
            </div>
          </div>
        </div>
      </div>
    </main>


<footer>
  <div class="container">
    <p>&copy; 2023 EasyFit</p>
    <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
  </div>
</footer>
</body>
</html> 
