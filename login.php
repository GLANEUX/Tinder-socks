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

  <link rel="stylesheet" href="assets/css/login.css" />
</head>

<body>
  <div class="screen">
    <div class="form-container">
      <div class="form-content">
        <h2><a href="home.php">Chaussette</a></h2>
        <h3>Connexion</h3>
        <?php
        if (isset($_SESSION['error_connexion'])) { ?>
          <p>
            <?php echo $_SESSION['error_connexion']; ?>
          </p>
        <?php } ?>
        <form action="controller/login_controller.php" method="POST">
          <label for="username" id="email-label">
            <input type="text" id="username" placeholder="Pseudo" name="username" required /></label>
          <label for="password" id="password-label">
            <input type="password" id="password" placeholder="Mot de passe" name="password" required /></label>
          <input class="btn-login" type="submit" value="Connexion" />
        </form>

        <p>
          Vous n'avez pas de compte ?
          <a href="register.php">Inscription</a>
        </p>
      </div>
    </div>
  </div>
</body>

</html>