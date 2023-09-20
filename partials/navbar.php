<header class="navbar">
  <a class="logo" href="index.php">Chaussette   <?php if (isset($_SESSION['username'])) { ?> - <?= $_SESSION['username'];  }  ?>
</a>
  <div class="links-navbar">
    <ul>
      <?php if (isset($_SESSION['username'])) { ?>

        <li>
          <a href=".?logout" class="secondary-button">Se déconnecter</a>
        </li>
        <li>
          <a href="account.php" class="secondary-button"><i class="fa fa-user"></i></a>
        </li>
        <li>
          <a href="pair.php" class="secondary-button"> <i class="fa fa-heart"></i></a>
        </li>

      <?php 
      } 
      else 
      { 
      ?>

        <!-- <li>
          <a href="#" class="tersi-button">Contact Us</a>
        </li>
        <li><a href="#" class="tersi-button">Q&A ?</a></li>
        <li>
          <a href="#" class="tersi-button">About</a>
        </li> -->
        <li>
          <a href="register.php" class="tersi-button">Inscription</a>
        </li>
        <li>
          <a href="login.php" class="secondary-button">Connexion</a>
        </li>

      <?php } ?>

    </ul>
  </div>
  <div class="menu-hamburger">
    <div class="button-burger-menu"></div>
  </div>
</header>