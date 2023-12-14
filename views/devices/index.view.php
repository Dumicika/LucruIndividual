<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Products</title>
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
    <?php include __DIR__ . '/../partials/nav.view.php'; ?>
    <div class="container">
        
        <div class="row">
            <div class="col-md-2">
                <h5>Filtrare produse</h5>
                <form action="/device/sort" method="post">
                    <div class="mb-3">
                        <label for="titlu">Name</label>
                        <input type="text" name="titlu" id="titlu" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="category">Category</label>
                        <select name="category" id="category" class="form-control">
                            <option></option>
                            <?php foreach( $brands as $brand ): ?>
                                <option value="<?=$brand?>"><?=$brand?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="type">Type</label>
                        <select name="type" id="type" class="form-control">
                            <option></option>
                            <?php foreach( $typeuri as $type ): ?>
                                <option value="<?=$type?>"><?=$type?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn btn-secondary">Sort</button>
                </form>
            </div>
            <div class="col-md-10">
                <a href="/device/adauga" class="btn btn-info mb-2 text-white">Add</a>
                <div class="container mt-5">
                    <h2 class="text-center">Disponible Devices </h2>
                    <div  class="row mt-5 m-5" >
                        <?php foreach ($devices as $key => $device): ?>
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <img src="<?= $device->image; ?>" class="card-img-top" alt="...">
                                    
                                    <p class="card-text"><strong>Name:</strong><?=$device->titlu?></p>
                                    <p class="card-text"><strong>Marca:</strong><?=$device->type ?></p>
                                    <p class="card-text"><strong>Price:</strong><?=$device->pret?></p>
                                    <a href="/device/details" class="btn btn-primary">Details</a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>