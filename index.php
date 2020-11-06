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
require_once("./lib/classes/grocery_list.php");
$database = new Database();
$dbc = $database->GetDatabaseConnection();

$dish = new Dish($dbc);

$grocery_list = new GroceryList($dbc);

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
            break;
        }

        case "detail": {
            $data = $dish->SelectDishOrDishes($dish_id);
            $template = 'detail.html.twig';
            $title = "detail pagina";
            break;
        }

        case "groceries": {
            $data = $grocery_list->GetGroceryListFromDatabase(1);
            $template = "grocery_list_page.html.twig";
            $title = "Boodschappen";
            break;
        }

        case "favourites": {
            $data = $dish->SelectDishOrDishes();
            $template = "favourites_page.html.twig";
            $title = "Favorieten";
            break;
        }

}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST["post_action"])) {
        switch($_POST["post_action"]) {
            case "AddRating":
                $dish->AddRating($_POST["dish_id"], $_POST["rating"]);
                $_SESSION["dishes_rated"] = $data;
                break;
                ### Add groceries to the grocery list
            case "AddGrocery":
                $dish_id = $_POST["dish_id"];
                $dish = $dish->SelectDishOrDishes($dish_id);
                foreach($data[0]["ingredients"] as $ingredient) {
                    foreach($ingredient as $food_item) {
                        foreach($food_item as $item) {
                            $grocery_list->CheckToAddFoodItemToGroceryList(1, $item["ID"], $ingredient["amount"]);
                        }
                    }
                }
                break;
                ### Update grocery amount
            case "UpdateGroceryAmount":
                $food_item_id = $_POST["food_item_id"];
                $amount = $_POST["post_amount"];
                $grocery_list->UpdateAmountOfProduct(1, $food_item_id, $amount);
                break;
                ### Remove grocery item from list
            case "RemoveGrocery":
                $food_item_id = $_POST["food_item"];
                $grocery_list->RemoveIngredientFromGroceryListInDatabase(1, $food_item_id);
                break;
                ### Remove ALL groceries from list
            case "RemoveAllGroceries":
                foreach($data as $food_item) {
                    $grocery_list->RemoveIngredientFromGroceryListInDatabase(1, $food_item["food_item"][0]["ID"]);
                }
                break;
        }
    }
}
/// Onderstaande code schrijf je idealiter in een layout klasse of iets dergelijks
/// Juiste template laden, in dit geval "homepage"
$template = $twig->load($template);

/// En tonen die handel!
echo $template->render(["title" => $title, "data" => $data]);

echo "<pre>";
var_dump($data);

