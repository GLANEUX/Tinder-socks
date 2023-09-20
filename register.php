<?php require('config/setting.php');?>
<?php if(isset($_SESSION['username'])){header("Location: index.php");}?>
<?php include('partials/head.php'); ?>
<link rel="stylesheet" href="assets/css/register.css" />
</head>
<body>

  <div class="screen">
    <div class="form-container">
      <div class="form-content">

        <h2><a href="home.php">Chaussette</a></h2>
        <h3>Créer votre compte</h3>
        <p> Nous avons besoin de vos informations pour trouver votre paire </p>

        <?php if (isset($_SESSION['error_inscription'])) { ?>
          <p> <?php echo $_SESSION['error_inscription']; ?> </p>
        <?php } ?>

        <form action="controller/register_controller.php" method="POST" enctype="multipart/form-data">
          <h3>Dites nous en plus à propos de vous</h3>

          <div class="main-informations">
            <label for="name">
              <input type="text" id="name" placeholder="Pseudo" name="name" required />
            </label>
            <label for="email">
              <input type="email" id="email" placeholder="Mail" name="email" required />
            </label>
            <label for="password">
              <input type="password" id="password" placeholder="Mot de passe" name="password" required />
            </label>
            <label for="description">
              <input type="text" id="description" placeholder="Description" name="description" required />
            </label> <br>
            <label for="visuel">
              <h4>Photo de profil :</h4>
            </label>
            <input type="file" class="form-control" id="visuel" name="visuel" required />
          </div>

          <h4>Couleur :</h4>
          <div class="hobbies radio" id="couleurContainer">
            <?php
            $data = $conn->prepare('SELECT * FROM couleur');
            $data->execute();
            $couleurs = $data->fetchAll(PDO::FETCH_ASSOC);
            foreach ($couleurs as $couleur): ?>
              <div>
                <label for="<?= $couleur['couleur']; ?>">
                  <input id="<?= $couleur['couleur']; ?>" type="radio" name="couleur" value="<?= $couleur['couleur']; ?>" required />
                  <span> <?= $couleur['couleur']; ?> </span>
                </label>
              </div>
            <?php endforeach; ?>
          </div>
          <div>
            <div class="newColor">
              <label for="newColor">
                <input type="text" id="newColor" class="newC" placeholder="Ajoutez" name="newColor" />
              </label>
              <button type="button" class="newColorb" onclick="ajouterCouleur()">+</button>
            </div>
          </div>

          <h4>Marque :</h4>
          <div class="hobbies radio" id="marqueContainer">
            <?php
            $data = $conn->prepare('SELECT * FROM marque');
            $data->execute();
            $marques = $data->fetchAll(PDO::FETCH_ASSOC);
            foreach ($marques as $marque): ?>
              <div>
                <label for="<?= $marque['marque']; ?>">
                  <input id="<?= $marque['marque']; ?>" type="radio" name="marque" value="<?= $marque['marque']; ?>" required />
                  <span> <?= $marque['marque']; ?> </span>
                </label>
              </div>
            <?php endforeach; ?>
          </div>
          <div class="newColor">
            <label for="newMarque">
              <input type="text" id="newMarque" class="newC" placeholder="Ajoutez" name="newMarque" />
            </label>
            <button type="button" class="newColorb" onclick="ajouterMarque()">+</button>
          </div>

          <h4>Taille :</h4>
          <div class="hobbies radio" id="tailleContainer">
            <?php
            $data = $conn->prepare('SELECT * FROM taille');
            $data->execute();
            $tailles = $data->fetchAll(PDO::FETCH_ASSOC);
            foreach ($tailles as $taille): ?>
              <div>
                <label for="<?= $taille['taille']; ?>">
                  <input id="<?= $taille['taille']; ?>" type="radio" name="taille" value="<?= $taille['taille']; ?>" required />
                  <span> <?= $taille['taille']; ?> </span>
                </label>
              </div>
            <?php endforeach; ?>
          </div>
          <div class="newColor">
            <label for="newTaille">
              <input type="text" id="newTaille" class="newC" placeholder="Ajoutez" name="newTaille" />
            </label>
            <button type="button" class="newColorb" onclick="ajouterTaille()">+</button>
          </div>

          <input class="btn-login" type="submit" value="Inscription" />
          
        </form>

        <p> Vous avez déjà un compte ? <a href="login.php">Connexion</a> </p>

      </div>
    </div>
  </div>
</body>
<script src="assets/javascript/add.js"></script>
</html>