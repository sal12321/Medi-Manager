<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Student Registration</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #dbeafe, #c7d2fe);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 96vh;
      margin: 0;
    }
    .form-container {
      background-color: white;
      padding: 30px;
      border-radius: 10px;
      width: 100%;
      max-width: 400px;
      height : 100%;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    h2 {
      text-align: center;
      color: #4f46e5;
      margin-bottom: 20px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    input, select {
      width: 100%;
      padding: 8px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 14px;
    }
    button {
      width: 100%;
      background-color: #4f46e5;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }
    button:hover {
      background-color: #4338ca;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2>Student Registration</h2>
    <form action="<%= request.getContextPath() %>/registration" method="post">
      <label for="name">Full Name</label>
      <input type="text" id="name" name="name" required />

      <label for="email">Email</label>
      <input type="email" id="email" name="email" required  />

      <label for="phone">Phone Number</label>
      <input type="tel" id="phone" name="phone" required  />

      <label for="gender">Gender</label>
      <select id="gender" name="gender" required>
        <option value="">Select Gender</option>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
      </select>

      <label for="course">Course</label>
      <select id="course" name="course" required>
        <option value="">Select Course</option>
        <option>B.Tech</option>
        <option>B.Sc</option>
        <option>B.Com</option>
        <option>BA</option>
      </select>

      <label for="password">Password</label>
      <input type="password" id="password" name="password" required placeholder="••••••••" />

      <button type="submit">Register</button>
    </form>
  </div>
</body>
</html>
