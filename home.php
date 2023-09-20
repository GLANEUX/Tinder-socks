<?php require('config/setting.php');?>
<?php if(isset($_SESSION['username'])){header("Location: index.php");}?>
<?php include('partials/head.php'); ?>
</head>
<body>
<?php include('partials/navbar.php'); ?>

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

</body>
<script src="assets/javascript/volet.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script src="assets/javascript/auto_type.js"></script>
</html>