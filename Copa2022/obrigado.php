<?php
session_start();
include_once("conect.php");
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Obrigado</title>
    <h1>Obrigado pelo voto</h1>
<body
    <button>
        </div>
        <div class="d-flex">
            <a href="sair.php" class="btn btn-danger me-5">Sair</a>
        </div>
        </button>
        <?php
            $_SESSION['msg'] = "<span style='color: green'>Voto recebido com sucesso!</span>";
        ?>



</body>
</html>