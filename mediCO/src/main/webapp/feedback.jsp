<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Feedback Page</title>
  <style>
    body {
      font-family: "Segoe UI", sans-serif;
      background: #f4f7f8;
      padding: 40px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .feedback-container {
      background: white;
      padding: 30px 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      max-width: 500px;
      width: 100%;
    }

    h2 {
      text-align: center;
      color: #333;
      margin-bottom: 25px;
    }

    label {
      display: block;
      margin-top: 15px;
      color: #444;
      font-weight: 500;
    }

    input, select, textarea {
      width: 100%;
      padding: 10px 12px;
      margin-top: 6px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 15px;
      transition: border-color 0.3s;
    }

    input:focus, textarea:focus, select:focus {
      border-color: #4dc0b5;
      outline: none;
    }

    textarea {
      resize: vertical;
      min-height: 100px;
    }

    button {
      margin-top: 20px;
      width: 100%;
      padding: 12px;
      background-color: #4dc0b5;
      color: white;
      font-size: 16px;
      font-weight: bold;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    button:hover {
      background-color: #3ab0a3;
    }
  </style>
</head>
<body>

  <div class="feedback-container">
    <h2>Feedback Form</h2>
    <form action="<%= application.getContextPath()%>/feedback" method="post">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" required />

      <label for="email">Email</label>
      <input type="email" id="email" name="email" required />

      <label for="rating">Rating</label>
      <select id="rating" name="rating" required>
        <option value="">Select</option>
        <option value="5">Excellent (5)</option>
        <option value="4">Very Good (4)</option>
        <option value="3">Good (3)</option>
        <option value="2">Fair (2)</option>
        <option value="1">Poor (1)</option>
      </select>

      <label for="message">Your Feedback</label>
      <textarea id="message" name="message" required></textarea>

      <button type="submit">Submit Feedback</button>
    </form>
  </div>

</body>
</html>
