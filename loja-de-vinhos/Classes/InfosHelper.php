<?php

include_once 'Classes/Conexao.php';
include_once 'Classes/Curl.php';

class InfosHelper {

    private $db;
    private $curl;

    public function __construct() {
        $this->db = new Conexao();
        $this->curl = new Curl(); 
    }
    
    //função para buscar clientes com maiores valores de compra.
    public function listarClientesMaioresCompras() {
        //busca historico de compras
        $codigos = mysqli_query($this->db->conn(), "SELECT DISTINCT(codigo) FROM historicocompras");
        
        $dados = array();
        //soma valores por compra
        while ($codigo = $codigos->fetch_assoc()) {
            $valorTotalSql = mysqli_query($this->db->conn(), "SELECT SUM(valor) AS valorTotal FROM produtos WHERE idCodigo = '{$codigo['codigo']}'");
            while ($valorTotal = $valorTotalSql->fetch_assoc()) {
               $valorTotal = $valorTotal['valorTotal'];
               $dados[$codigo['codigo']]['valorTotal'] = number_format($valorTotal,2,",",".");
            }
            
            $infosSql = mysqli_query($this->db->conn(), "SELECT c.nome, c.cpf, hc.codigo FROM clientes AS c INNER JOIN historicocompras AS hc ON c.cpf = hc.cliente WHERE codigo = '{$codigo['codigo']}' GROUP BY hc.codigo" );
            while ($info = $infosSql->fetch_assoc()) {
               $dados[$codigo['codigo']]['nome'] = $info['nome'];
               $dados[$codigo['codigo']]['cpf'] = $info['cpf'];
            }       
        }
        
        return $dados;
    }
    
    public function maiorValorUltimaCompra(){
        $comprasSql = mysqli_query($this->db->conn(), "SELECT DISTINCT(hc.codigo) AS codigo, cliente FROM historicocompras AS hc WHERE hc.data LIKE '%2016%'");
        
        $resumoCompras = array();
        
        while ($compra = $comprasSql->fetch_assoc()) {
            $valorTotalSql = mysqli_query($this->db->conn(), "SELECT SUM(valor) AS valorTotal FROM produtos WHERE idCodigo = '{$compra['codigo']}'");
            while ($valorTotal = $valorTotalSql->fetch_assoc()) {
               $valorTotal = $valorTotal['valorTotal'];               
               $resumoCompras[$compra['codigo']]['valorTotal'] = $valorTotal;
            }
        }
        
        $maiorValor = 0;
        foreach($resumoCompras as $k=>$resumo){
            
            if($maiorValor < $resumo['valorTotal']){ 
               $maiorValor = $resumo['valorTotal'];
               $codigo = $k;
            } 
        }

        $maiorValor = number_format($maiorValor,2,",",".");
        
        $dadosAssociado = array();
        $resumos = mysqli_query($this->db->conn(), "SELECT c.nome, c.cpf FROM historicocompras AS hc INNER JOIN clientes AS c ON hc.cliente = c.cpf WHERE hc.codigo = '{$codigo}'");
        while ($resumo = $resumos->fetch_assoc()) {
           $dadosAssociado['nome'] = $resumo['nome'];
           $dadosAssociado['cpf'] = $resumo['cpf'];
           $dadosAssociado['maiorValor'] = $maiorValor;
        }
        
        return $dadosAssociado;  
    }
    
    public function clientesMaisFieis(){
        //busca cliente mais fiel
        $antigos = mysqli_query($this->db->conn(), "SELECT c.nome, c.cpf FROM historicocompras AS hc INNER JOIN clientes AS c ON c.cpf = hc.cliente ORDER BY hc.data LIMIT 1");
        while ($antigo = $antigos->fetch_assoc()) {
            return $antigo;
        } 
    }
    
    public function recomendacaoVinho(){
       //busca produtos mais vendidos 
        $recomendacoes = mysqli_query($this->db->conn(), "SELECT * FROM produtos WHERE produto = 'Casa Silva Gran Reserva' AND variedade = 'Petit Verdot' ORDER BY `produto` ASC");
        while ($recomendacao = $recomendacoes->fetch_assoc()) {
            return $recomendacao;
        } 
    }
  
}