
<?php
  require_once('config/init.php');
  require_once('database/user.php');

  $username = $_POST['username'];
  $password = $_POST['password'];

  try {
    insertUser($username, $password);
    header('Location: list_utente.php');
    header('Locatin: list_medico.php'); 
  } catch(PDOException $e) {
    header('Location: register.php');
  }
?>







<?php
  require_once('config/init.php');

  include('templates/header.php');
  include('templates/registar.php');
  include('templates/footer.php');
?>