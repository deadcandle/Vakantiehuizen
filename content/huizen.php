
<br>
<div class="row">
    <div class="col-fluid">
        <?php
        require("config/db_config.php");
        $conn = new mysqli($host, $user, $pass, $db);
        $pageData = "select titel, tekst from teksten where pagina = 'huizen'";
        if ($result = $conn -> query($pageData)) { ?>
        <?php
            $row = $result -> fetch_assoc();
            echo "<h1>".$row["titel"]."</h1>";
            echo "<p>".$row["tekst"]."</p>";
        ?>
        <?php } ?>
    </div>
</div>
<div class="row">
    <?php
        require("config/db_config.php");
        $conn = new mysqli($host, $user, $pass, $db);
        $pageData = "select huis, personen, omschrijving, prijs from huizen";
        $result = $conn -> query($pageData);
        if ($result -> num_rows > 0) {
            while ($row = $result -> fetch_assoc()) {
                echo "<div class='col-3'>";
                echo "<h3>".$row["huis"]."</h3>";
                echo "<p>".$row["omschrijving"]."</p>";
                echo "<hr>";
                echo "<b style='float:right'>€ ".$row["prijs"]."</b>";
                echo "</div>";
            }
        }
        ?>
</div>
