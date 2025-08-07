<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Stylish Header</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: "Segoe UI", sans-serif;
    }

    header {
      background-color: #1e1e2f;
      color: white;
      padding: 15px 40px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    }

    .logo {
      font-size: 1.8rem;
      font-weight: bold;
      color: #4dc0b5;
    }

    nav a {
      margin-left: 25px;
      text-decoration: none;
      color: #f0f0f0;
      font-weight: 500;
      transition: color 0.3s ease;
    }

    nav a:hover {
      color: #4dc0b5;
    }

    @media (max-width: 600px) {
      header {
        flex-direction: column;
        align-items: flex-start;
      }
      nav {
        margin-top: 10px;
      }
      nav a {
        display: block;
        margin: 8px 0;
      }
    }
  </style>
</head>
<body>

  <header>
    <div class="logo">MyWebsite</div>
    <nav>
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">Services</a>
      <a href="#">Contact</a>
    </nav>
  </header>

</body>
</html>
