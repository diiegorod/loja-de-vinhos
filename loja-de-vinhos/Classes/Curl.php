<?php

class Curl {

    //cria curl para acessar API de clientes
    public function execCurlClientes() {
        // Cria o cURL
        $curl = curl_init();
        // Seta algumas opções
        curl_setopt_array($curl, [
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => "http://www.mocky.io/v2/598b16291100004705515ec5",
        ]);
        // Envia a requisição e salva a resposta
        $response = curl_exec($curl);

        curl_close($curl);
        $response = json_decode($response, true);
        //print_r($response);die();
        return $response;
    }
    
    //cria curl para acessar API de histórico de compra
    public function execCurlHistorico() {
        // Cria o cURL
        $curl = curl_init();
        // Seta algumas opções
        curl_setopt_array($curl, [
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => "http://www.mocky.io/v2/598b16861100004905515ec7",
        ]);
        // Envia a requisição e salva a resposta
        $response = curl_exec($curl);

        curl_close($curl);
        $response = json_decode($response, true);

        return $response;
    }
}