<?php
    namespace App\Controllers;

    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;
    use App\Models\Device;
    class DevicesController {
        public function index (Request $request, Response $response) {
            $query = Device::query();
            $data = $request->getParsedBody();
            if (isset($data['titlu']) && $data['titlu'] !== "") {
                $query->where('titlu', 'like', '%' . $data['titlu'] . '%');
            }
            if (isset($data['category']) && $data['category'] !== "") {
                $query->where('category', 'like', '%' . $data['category'] . '%');
            }
            if (isset($data['type']) && $data['type'] !== "") {
                $query->where('type', $data['type']);
            }
            
            $query->orderBy('titlu', 'asc');
            $devices = $query->get();
            // Pentru formular
            $autori = Device::select('category')->distinct()->orderBy('category', 'asc')->get()->pluck('category')->toArray();
            $typeuri = Device::select('type')->distinct()->orderBy('type', 'asc')->get()->pluck('type')->toArray();
            ob_start();
            include __DIR__ . "/../../views/devices/index.view.php";
            $html = ob_get_clean();
            $response->getBody()->write($html);
            return $response;
        }

        public function create(Request $request, Response $response) {
            ob_start();
            include __DIR__ . "/../../views/Devices/create.view.php";
            $html = ob_get_clean();
            $response->getBody()->write($html);
            return $response;
        }
        public function details(Request $request, Response $response, array $args) {
            ob_start();
            $device = Device::findOrFail($args['id']);
        
            $response->get('renderer')->render($response, '/../../views/Devices/details.view.php', ['id' => $Device]);
            return $response;
        }
        
        public function autorize(Request $request, Response $response) {
            ob_start();
            include __DIR__ . "/../../views/Devices/autorize.php";
            $html = ob_get_clean();
            $response->getBody()->write($html);
            return $response;
        }

        public function store(Request $request, Response $response) {
            $data = $request->getParsedBody();
            $contact = new Device($data);
            $contact->save();
            return $response
                ->withHeader('Location', '/')
                ->withStatus(302);
        }

        public function edit(Request $request, Response $response, $args) {
            $device = Device::findOrFail($args['id']);
            ob_start();
            include __DIR__ . "/../../views/Devices/edit.view.php";
            $html = ob_get_clean();
            $response->getBody()->write($html);
            return $response;
        }

        public function update(Request $request, Response $response, $args) {
            $data = $request->getParsedBody();
            $device = Device::findOrFail($args['id']);
            $device->update([...$data]);
            return $response
                ->withHeader('Location', '/')
                ->withStatus(302);
        }

        public function delete(Request $request, Response $response, $args) {
            $device = Device::findOrFail($args['id']);
            $device->delete();
            return $response;
        }
    }
