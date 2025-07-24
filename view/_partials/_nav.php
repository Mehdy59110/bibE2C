<nav>

    <img id="logo" src="../src/logo2.png" alt="Logo E2C">
    <div id="nav-bar">
        <?php 
            foreach($navlist as $navbutton){?>
            <a class="nav-button" href=<?=$navbutton["path"]?>><?=$navbutton["label"]?></a>
 <?php 
            }
        ?>
        
        </div>

    </nav>