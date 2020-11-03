<?php

class ContactController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        $postModel = new PostModel();
        $contact = $postModel->postContact($_POST);
        $http->redirectTo('/messageend');
    }
}