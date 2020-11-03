<?php

class DevisController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        $postModel = new PostModel();

        $devis = $postModel->postDevis($_POST);
        $http->redirectTo('/thanks');
        
    }
}