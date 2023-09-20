<?php require('config/setting.php');?>
<?php if(isset($_SESSION['username'])){header("Location: index.php");}?>


<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="shortcut icon" href="assets/img/favicon.png" />
  <title>Chaussette | retrouvé votre paire </title>

  <link rel="stylesheet" href="assets/css/style.css" />
  <style>
    .navbar {
      position: absolute;
    }
  </style>
</head>

<body>
  <nav class="navbar">
    <a class="logo" href="home.php">Chaussette</a>
    <div class="links-navbar">
      <ul>
        <li>
          <a href="#" class="tersi-button">Contact Us</a>
        </li>
        <li><a href="#" class="tersi-button">Q&A ?</a></li>
        <li>
          <a href="#" class="tersi-button">About</a>
        </li>
        <li>
          <a href="register.php" class="tersi-button">Inscription</a>
        </li>
        <li>
          <a href="login.php" class="secondary-button">Connexion</a>
        </li>

      </ul>
    </div>
    <div class="menu-hamburger">
      <div class="button-burger-menu"></div>
    </div>
  </nav>

  <main>
    <div class="screen">
      <div class="home">
        <h1>Chaussette</h1>
        <h2><span class="slogan-app"></span></h2>
        <a href="register.php" class="primary-button">Créer mon compte</a>
        <a href="login.php" class="mobile-login">Connexion</a>
      </div>
    </div>
  </main>


  <script src="assets/javascript/volet.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
  <script src="assets/javascript/auto_type.js"></script>
</body>

</html>