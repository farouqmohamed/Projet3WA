<?php

class ThanksController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
        $name;

        if(!array_key_exists('name', $_SESSION) && !array_key_exists('civilite', $_SESSION)) {
        header('Location: index.html');
        } else{
        $name = $_SESSION['civilite']. $_SESSION['name'];
        }
        return ['name' => $name];
        session_destroy();
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
		
    }
}