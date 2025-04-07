'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8057cf5849328e7df992d5ecf074558c",
"assets/AssetManifest.bin.json": "48bdf5d4b45b78989c5d33cc0d32e18b",
"assets/AssetManifest.json": "dbdff9052e3c463bed1bbe7898379c3d",
"assets/assets/fonts/AvenirLTStd-Black.otf": "b1abb878e2529cb5cb4450139844155d",
"assets/assets/fonts/AvenirLTStd-Book.otf": "ecb0c2ae369ba2a89d9a1ec2a1b3187b",
"assets/assets/fonts/AvenirLTStd-Heavy.otf": "a7edaaca7240679d0cda0cce2c2e896e",
"assets/assets/fonts/AvenirLTStd-Light.otf": "0b78ec9d509f67bfe3f8458c9d285df0",
"assets/assets/fonts/AvenirLTStd-Medium.otf": "4f995fa49446998983e05df9994dc96c",
"assets/assets/fonts/AvenirLTStd-Roman.otf": "b1d7c6e085a31e9f5e4745c9aef6eb4b",
"assets/assets/icons/info_icon.svg": "0e018566a27323f0bb42fbfe3adcb7e8",
"assets/assets/icons/scan_icon.svg": "c7d72c7df5429a892c77eed69f70887f",
"assets/assets/icons/search_icon.svg": "6199d61afcf09b0fb5b233b3fd4a64b5",
"assets/assets/image/casper_logo.png": "0a060ab096471a2ad95d791ab65ab997",
"assets/assets/image/dreamworks_logo.png": "0c240836bf093ed337cba60367a87418",
"assets/assets/image/hubmart_logo.png": "6dd7327d20aa72d2e555e2953ca8b772",
"assets/assets/image/imate_stores_logo.png": "0f1d733f80d88e1dd115989efd4457d3",
"assets/assets/image/iphone_12_image.png": "ea9349336ce90635f8f323ba4c060e9a",
"assets/assets/image/iphone_x_image.png": "f69e73523574a4d5d4e65e65ad0d3cda",
"assets/assets/image/justrite_logo.png": "00b86a0ba4561f4b7e74eedc52631ffe",
"assets/assets/image/just_fones_logo.png": "b49af621fb546649b401b8df941a138f",
"assets/assets/image/just_used_logo.png": "2e0643fccba73bb0dfee00c1c3a70fd5",
"assets/assets/image/nokia_phone_image.png": "264c608b667976b86b267af493aa9cc1",
"assets/assets/image/ogabassey_logo.png": "60a91fe17078306834e9187ba8605428",
"assets/assets/image/okay_fones_logo.png": "77f0920e2d43b780e3e7069c81be6de0",
"assets/assets/image/orile_logo.png": "955ce791e9ae8c233557521549c2ec67",
"assets/assets/image/pointek_logo.png": "1691724da3c6807fd4120d0ef605dd4f",
"assets/assets/image/pressure_cooker_image.png": "98d0eb43dae3f3a9c503cf5624f383c0",
"assets/assets/image/ps4_controller_image.png": "87b87a9d66d76b2d2f5edf27536e5f11",
"assets/assets/image/search_image.png": "60601a878aa9cfd79e80c6b51940e438",
"assets/assets/image/slot_logo.png": "b53b96c351adb0029c0269f06f3dd9bf",
"assets/assets/image/speaker_image.png": "9c58bc36fa228f4fd93a09cad26519dc",
"assets/FontManifest.json": "6c979b4069cc7c3610dcadcd1c0b10e9",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "ee61cf2e54e2dd022922706abef26c38",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "5931a3c6e1c813f6e283a1585e830d56",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2a53d1d36bc64ef50d685ce33e5ba3b9",
"/": "2a53d1d36bc64ef50d685ce33e5ba3b9",
"main.dart.js": "25d5f43845105588d4893c503af22d39",
"manifest.json": "4dd911197d77764727ecbed908a9a940",
"version.json": "d92e214785ec443820a8d07f1c3628df"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
