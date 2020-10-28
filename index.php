<?php
//// Allereerst zorgen dat de "Autoloader" uit vendor opgenomen wordt:
require_once("./vendor/autoload.php");

/// Twig koppelen:
$loader = new \Twig\Loader\FilesystemLoader("./templates");

/// VOOR PRODUCTIE:
/// $twig = new \Twig\Environment($loader), ["cache" => "./cache/cc"]);

/// VOOR DEVELOPMENT:
$twig = new \Twig\Environment($loader, ["debug" => true ]);
$twig->addExtension(new \Twig\Extension\DebugExtension());

/******************************/

/// Next step, iets met je data doen. Ophalen of zo
require_once("./lib/database.php");
require_once("./lib/classes/dish.php");
$database = new Database();
$dbc = $database->GetDatabaseConnection();

$dish = new Dish($dbc);
$data = $dish->SelectDishOrDishes();


/* 
URL: 
http://localhost/index.php?gerecht_id=4&action=detail
*/

$dish_id = isset($_GET["dish_id"]) ? $_GET["dish_id"] : "";
$action = isset($_GET["action"]) ? $_GET["action"] : "homepage";


switch($action) {

        case "homepage": {
            $data = $dish->SelectDishOrDishes();
            $template = 'homepage.html.twig';
            $title = "homepage";
            $page_id = $_GET["page_id"];
            break;
        }

        case "detail": {
            $data = $dish->SelectDishOrDishes($dish_id);
            $template = 'detail.html.twig';
            $title = "detail pagina";
            break;
        }

        /// etc

}


/// Onderstaande code schrijf je idealiter in een layout klasse of iets dergelijks
/// Juiste template laden, in dit geval "homepage"
$template = $twig->load($template);

/// En tonen die handel!
echo $template->render(["title" => $title, "data" => $data]);
