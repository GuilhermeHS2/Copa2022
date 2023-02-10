<?php
if(isset($_POST['submit']))
{
    //print_r('Nome:'.$_POST['nome']);
    //print_r('<br>');
    //print_r('Email:'.$_POST['email']);
    //print_r('<br>');
    //print_r('Telefone:'.$_POST['telefone']);
   // print_r('<br>');
    //print_r('Senha:'.$_POST['senha']);
    //print_r('<br>');
    //print_r('sexo:'.$_POST['genero']);
    //print_r('<br>');
    //print_r('Data de Nascimento:'.$_POST['dtnascimento']);

    include_once('config.php');

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $senha = $_POST['senha'];
    $genero = $_POST['genero'];
    $dtnascimento = $_POST['dtnascimento'];

    $result = mysqli_query($conexao, "INSERT INTO usuario(nome,email,telefone,sexo,data_nasc,senha) VALUES('$nome','$email','$telefone','$genero','$dtnascimento','$senha')");

    header('Location: login.php');
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="css/cadastro.css">
</head>
<body>
<a href="home.php">Voltar</a>
    <div class="box">
        <form action="cadastro.php" method="POST">
            <fieldset>
                <legend><b>Cadastro</b></legend>
                <br>
                <div class="inputBox">
                <input type="text" name="nome" id="nome" class="inputUser" required>
                <label for="nome" class="labelInput">Nome Completo</label>
            </div>
            <br><br>
            <div class="inputBox">
                <input type="text" name="email" id="email" class="inputUser" required>
                <label for="email" class="labelInput">Email</label>
            </div>
            <br><br>
            <div class="inputBox">
                <input type="tel" name="telefone" id="telefone" class="inputUser" required>
                <label for="telefone" class="labelInput">Telefone</label>
            </div>
            <br><br>
            <div>
                <div class="inputBox">
                    <input type="password" name="senha" id="senha" class="inputUser" required>
                    <label for="senha" class="labelInput">Senha</label>
            </div>
            <p>Sexo:</p>
            <input type="radio" id="feminino" name="genero" value="feminino" required>
            <label for="feminino">Feminino</label>
            <br>
            <input type="radio" id="masculino" name="genero" value="masculino" required>
            <label for="masculino">Masculino</label>
            <br>
            <input type="radio" id="outro" name="genero" value="outro" required>
            <label for="outro">Outro</label>
            <br><br>
                <label for="dtnascimento"><b>Data de Nascimento</b></label>
                <input type="date" name="dtnascimento" id="dtnascimento" required> 
            <br><br>
            <br><br>
            <input type="submit" name="submit" id="submit">
            </fieldset>
        </form>
</body>
</html>