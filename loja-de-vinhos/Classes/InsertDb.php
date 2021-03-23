<?php

include 'Classes/Conexao.php';
include 'Classes/Curl.php';

class InsertDb {

    private $db;
    private $curl;

    public function __construct() {
        $this->db = new Conexao();
        $this->curl = new Curl();
    }

    //verifica se já consta registro do cliente no DB, caso contrário insere novo cliente
    public function insertClientes() {
        //chama curl de clientes
        $clientes = $this->curl->execCurlClientes();

        foreach ($clientes as $cliente) {
            
            $cpf = str_replace("-", ".", $cliente['cpf']);
            //verifica se já existe cliente
            $getCliente = mysqli_query($this->db->conn(), "SELECT COUNT(*) count FROM clientes WHERE cpf = '{$cpf}'");
            //insere um a um novos clientes
            if ($getCliente->current_field < 1) {
                //correção pontuação nos cpfs

                $insertCliente = mysqli_query($this->db->conn(), "INSERT INTO clientes VALUES ('{$cliente['id']}', '{$cliente['nome']}', '{$cpf}')");
            }
        }
    }

    //verifica se já consta registro de histórico no DB, caso contrário insere nova compra/histórico
    public function insertHistoricos() {
        //chama curl de histórico
        $historicos = $this->curl->execCurlHistorico();

        foreach ($historicos as $historico) {
            //verifica se já existe historico
            $getCodigo = mysqli_query($this->db->conn(), "SELECT COUNT(*) count FROM historicocompras WHERE codigo = '{$historico['codigo']}'");

            if ($getCodigo->current_field < 1) {
                //correção padrão da data, deixando em formato americano
                $dataFormat = $this->setFormatoData($historico['data'], 'd-m-Y', 'Y-m-d');

                //correção de erro na API com CPFs incorretos
                if ($historico['cliente'] != '000.000.000.01') {
                    $cliente = substr($historico['cliente'], 1);
                } else {
                    $cliente = '000.000.000.01';
                }

                //insere novo histórico
                $insertHistorico = mysqli_query($this->db->conn(), "INSERT INTO historicocompras VALUES (NULL, '{$historico['codigo']}', '{$dataFormat}', '{$cliente}')");

                //insere produto por produto comprado no histórico
                foreach ($historico['itens'] as $item) {
                    $insertProduto = mysqli_query($this->db->conn(), "INSERT INTO produtos VALUES (NULL, '{$historico['codigo']}', '{$item['produto']}', '{$item['variedade']}', '{$item['pais']}', '{$item['categoria']}', '{$item['safra']}', '{$item['preco']}')");
                }
            }
        }
    }

    //função para corrigir data
    public function setFormatoData($data, $entrada, $saida) {
        $data = \DateTime::createFromFormat("{$entrada}", "{$data}");
        return $data->format("{$saida}");
    }

}
