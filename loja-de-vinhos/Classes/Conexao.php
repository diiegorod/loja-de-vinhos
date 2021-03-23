<?php

class Conexao {
    
    //conexão de banco de dados
    public function conn() {
        $conn = mysqli_connect("localhost", "root", "", "lojavinhos"); 
        return $conn;
    }
}