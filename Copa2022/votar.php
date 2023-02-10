<?php
session_start();
include_once("conect.php");

if(isset($_GET['id'])){
if(isset($_COOKIE['voto_cont']))
    $id = $_GET['id'];
    $result_times = "UPDATE times SET qntvoto = qntvoto + 1 WHERE id = '$id' ";
    $resultado_times = mysqli_query($conn, $result_times);

   if(mysqli_affected_rows($conn)){
    $_SESSION['msg'] = '<script>alert("Voto recebido com sucesso!.");</script>';
    header('Location: obrigado.php');

   }else{
    $_SESSION['msg'] = "<span style='color: red'>Erro ao votar!</span>";
    header('Location: voto.php');
   }

}

?>
