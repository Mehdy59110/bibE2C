<?php
    $pageTitle = "Bibliothèque de l'E2C";
    $pagesubtitle = "Qu'est-ce que c'est ?";
    $navlist = [
        [
            "label" => "Bibliothèque",
            "path" => "../controller/libraryController.php"
        ],
        [
           "label" => "Détente",
           "path" => "../controller/gameController.php"
        ]
    ];
    //var_dump($navlist);
    $navlist[] = [
        "label" => "connecter",
        "path"  =>"#"
    ];
   
    //var_dump($navlist[]);
    
    
    
    require_once("../view/homeView.php");

?>


