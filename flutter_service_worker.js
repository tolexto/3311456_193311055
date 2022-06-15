'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "9630b6f93da02158e081a4735da0bba5",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/lib/models/1.png": "34ec9dc836bdf35ed2796ac549c142eb",
"assets/lib/models/18.png": "15fa5ad349ac4745274d62dfb06c53ce",
"assets/lib/models/2.png": "986a33ebaa28acd0850f63e64e6b7694",
"assets/lib/models/3.png": "e4a5f9793caa8d7362eb5234c46aaa34",
"assets/lib/models/4.png": "7f85eab7a915c7d4f0e9b99ffd450d3c",
"assets/lib/models/5.png": "6c96494f1f725f606bd05b77ebb5965a",
"assets/lib/models/6.png": "2abeb8bce558484a85f32aae93a9b5ba",
"assets/lib/models/7.png": "b61949d87d8e8e4433eb1938bfcd4c45",
"assets/lib/models/agiz.png": "1a975179673a10c545409d57a6dfcd31",
"assets/lib/models/Bacak.png": "7724e98e55ca0eee3869e07630111d06",
"assets/lib/models/BackGround.jpg": "8957469577c22ff3bdcc0b5fc3499152",
"assets/lib/models/beyin.png": "30cd192f02f76f4f21d7cce7f0c3a95a",
"assets/lib/models/boyun.png": "6c960c40f4e4050cc5f8acb5ca7cc292",
"assets/lib/models/burun.png": "df6ed4b103ca9ad803f9c0202900593d",
"assets/lib/models/dahiliye.png": "540366b8a9f773a5b53f791758e6c458",
"assets/lib/models/erkekAnatomi.png": "25c66b541c188e7aa9380d0d00aa5997",
"assets/lib/models/fotoyok.png": "ee6bd369e0e2a4d4e3f1dc9a63db97af",
"assets/lib/models/gogusHastaliklari.png": "4ba0019552e9607992e9fc68e7142439",
"assets/lib/models/goz.png": "24d2096ac7c7e2c40891849fcea15fc4",
"assets/lib/models/ik.png": "81556f1b817ec9671c95572ecd348c96",
"assets/lib/models/kadinAnatomi.png": "ae06656ee3ca0e26217248b8711851dc",
"assets/lib/models/Kafa.png": "49c0d7f3c6325d2354586e140e542c1d",
"assets/lib/models/kardiyoloji.png": "68b10ab54098dbb4ec2abe627667b9fa",
"assets/lib/models/Karin.png": "9771bcfcbe13986972685fe4ad7576af",
"assets/lib/models/KBB.png": "f71175fa659af80840b6869dcc8ee2c4",
"assets/lib/models/kulak.png": "3e4d8f3af45b288c0713ae920caea1d9",
"assets/lib/models/mide.png": "1349c34fdbfd11bab097d039f95dd6ab",
"assets/lib/models/Ozel_Bolge.png": "c5675e1f110d73066a294099f9166c09",
"assets/NOTICES": "687eeffcddbdd864b513203b4c61f836",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "c94b92fd65fba94f95b0209861ac652b",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e22a2ecf4692b857d37c5f206fa5d398",
"/": "e22a2ecf4692b857d37c5f206fa5d398",
"main.dart.js": "a2e367ed7faa314bfafce96f852dc883",
"manifest.json": "c9c6e178b1a37f4ddb356807fa7235ed",
"version.json": "a3322b2f035e5345663b567001345585"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
