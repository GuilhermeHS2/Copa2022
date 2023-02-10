
<?php
session_start();
    if((!isset($_SESSION['email']) == true) and (!isset($_SESSION['senha']) == true))
    {
        unset($_SESSION['email']);
        unset($_SESSION['senha']);
        header('Location: login.php ');

    }
    
    $logado = $_SESSION['email'];

?>
<?php
include_once("conect.php");
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voto</title>
    <link rel="stylesheet" href="css/voto.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body style='display: flex; align-items: center; flex-direction: column;'>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="position: fixed; width: 100%; background-color:darkred !important">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Voto para Copa 2022</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="d-flex">
            <a href="sair.php" class="btn btn-danger me-5">Sair</a>
        </div>
    </nav>
    <br>
    <?php
    echo "<h1 style='margin-top:60px;'>Bem vindo <u>$logado</u></h1>";
    ?>
    <h2>Qual Seleção vai ganhar a copa do mundo ?</h2>
    <h3>Vote</h3>
    <?php
    if(isset($_SESSION['msg'])){
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }
    $result_times = "SELECT * FROM `times`";
    $resultado_times = mysqli_query ($conn, $result_times  );


    while($row_times = mysqli_fetch_assoc($resultado_times)){
        echo "Numero do time: " . $row_times['id'] . "<br>";
        echo "Nome do time: " . $row_times['selecoes'] . "<br>";
        echo "Votos do time: " . $row_times['qntvoto'] . "<br>";
        echo "<a href='votar.php?id=".$row_times['id']."'>Votar</a><br><hr>";
    }
    ?>
</body>
</html>