<?php require('config/setting.php'); ?>
<?php if (empty($_SESSION['username'])) { header("Location: home.php");}?>
<?php include('partials/head.php'); ?>
<link rel="stylesheet" href="assets/css/pair.css" />
</head>
<body>

<?php include('partials/navbar.php'); ?>
<div class="screen">
  <div class="form-container">
    <div class="form-content">

      <?php $username = $_SESSION['username']; ?>
      <h3> <?= $username; ?> </h3>
      <p>Les chaussetes avec qui tu formes une paire :</p>

        <section id="container--match">

          <!-- recuperer toutes les paires qui nous ont like -->
          <?php $data = $conn->prepare("SELECT * FROM paire WHERE ID_M=:i");
          $data->execute([":i" => "$username"]);
          $users = $data->fetchAll(PDO::FETCH_ASSOC);

          // pour chaque pair qui a like l'user verifier si nous on la like
          foreach ($users as $user) { 
            $dataPairs = $conn->prepare("SELECT * FROM paire WHERE ID_U=:y AND ID_M=:i");
            $dataPairs->execute([':y' => $username,':i' => $user['ID_U']]);
            $pairs = $dataPairs->fetchAll(PDO::FETCH_ASSOC); 

            if (!empty($pairs)):
              $dataPair = $conn->prepare("SELECT * FROM users WHERE username=:i");
              $dataPair->execute([':i' => $pairs[0]['ID_M']]);
              $pair = $dataPair->fetch(PDO::FETCH_ASSOC); ?>

              <article class="card--match">
                <figure>
                  <img src=<?= $pair['image'] ?> alt="#">
                </figure>
                <div>
                  <h4> <?= $pair['username'] ?> </h4>
                  <ul>
                    <li> <?= $pair['taille'] ?> </li>
                    <li> <?= $pair['marque'] ?> </li>
                    <li> <?= $pair['couleur'] ?> </li>
                  </ul>
                </div>
              </article>
              
            <?php endif ?>
            
          <?php } ?>
        </section>
    </div>
  </div>
</div>
</body>
<script src='https://hammerjs.github.io/dist/hammer.min.js'></script>
<script src="assets/javascript/volet.js"></script>
</html>