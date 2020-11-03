<?php

class PostModel{

    public function postContact(){
        $database = new Database();
        $favoris = $database->executeSql('INSERT INTO `Contact`( `nom` , `prenom`, `email`, `message`) VALUES (?, ?, ?, ?)', [ $_POST['firstname'],  $_POST['name'], $_POST['email'], $_POST['message'] ]);
    }

    public function postDevis(){
        $database = new Database();
        $nbrPage;
  
        if($_POST['nbrpage'] === 'null' || $_POST['nbrpage'] === 'non') {
            $nbrPage = 'null';
        } else {
            $nbrPage = $_POST['siOui'];
        }

        $devis = $database->executeSql('INSERT INTO `Devis`( `civilite` , `nom`, `tel`, `mail`, `siteType`, `nbrPage`, `message`) VALUES (?, ?, ?, ?, ?, ?, ?)', [ $_POST['civilite'],  $_POST['name'], $_POST['tel'], $_POST['email'], $_POST['typesite'], $nbrPage, $_POST['message'] ]);
        
        $_SESSION['name'] = $_POST['name'];
        $_SESSION['civilite'] = $_POST['civilite'];
    }


}




?>