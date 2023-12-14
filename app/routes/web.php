<?php
    use App\Controllers\DevicesController;
    use App\Controllers\CategoryController;

    $app->get("/", [DevicesController::class, "index"]);
    $app->get("./", [CategoryController::class, "index"]);

    $app->get("/Device/adauga", [DevicesController::class, "create"]);

    $app->get('/Device/details/{id}', [DevicesController::class, "details"]);
    $app->get('/details/{id}', [DevicesController::class, "details"] );

    $app->get("./category/adauga", [CategoryController::class, "create"]);

    $app->post("/Device/store", [DevicesController::class, "store"]);
    $app->post("./category/category/store", [CategoryController::class, "store"]);

    $app->post("/Device/login", [DevicesController::class, "autorize"]);
    $app->get("/Device/edit/{id}", [DevicesController::class, "edit"]);
    $app->put("/Device/update/{id}", [DevicesController::class, "update"]);
    $app->delete("/Device/delete/{id}", [DevicesController::class, "delete"]);
    $app->post("/Device/sort", [DevicesController::class, "index"]);