
<?php
include_once "Classes/InsertDb.php";
include_once "Classes/InfosHelper.php";

$insert = new InsertDb();

$infosHelper = new InfosHelper();

//inserção de clientes e historico de compras no banco de dados
//rodar uma vez para insercao
//$insertClientes = $insert->insertClientes();
//$insertHistoricos = $insert->insertHistoricos();


//item 1 do exercício
$maioresCompras = $infosHelper->listarClientesMaioresCompras();
print_r($maioresCompras);

//item 2 do exercício
$maiorCompraUltimoAno = $infosHelper->maiorValorUltimaCompra();
print_r($maiorCompraUltimoAno);

//item 3 do exercício
$fidelidade = $infosHelper->clientesMaisFieis();
print_r($fidelidade);

//item 4 do exercício
$recomendacao = $infosHelper->recomendacaoVinho();
print_r($recomendacao);


?>



