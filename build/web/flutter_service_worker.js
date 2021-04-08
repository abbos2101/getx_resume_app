'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "54b3cff01eea0a3e8c8bf9c39d9e4c8a",
"assets/assets/flower(0.3.2).apk": "a4c44ac46d9c1b81aae4285ef7669998",
"assets/assets/img_fl1.jpg": "ddade0ceff45b10e7f43b8cd91ee1a02",
"assets/assets/img_fl2.jpg": "f18a8cb45da481fd937419cc4aabc397",
"assets/assets/img_fl3.jpg": "0702ef8f695c32e31c0d2eddc1acd006",
"assets/assets/img_fl4.jpg": "01d7c49d7d84b30e66025fc999d4838d",
"assets/assets/img_fl5.jpg": "fd1bae77145eb1544db4eb2a360ea89e",
"assets/assets/img_in1.webp": "c7482e46aeb86563016ede9528839ae6",
"assets/assets/img_in2.webp": "3dd6b61913c17d492a698721a221f6c4",
"assets/assets/img_in3.webp": "4b76e487e892b5f97bcb4bb28438b3d7",
"assets/assets/img_in4.webp": "9113683ea9cedb4fad697e774e1eca16",
"assets/assets/img_mn1.jpg": "88033a04c060124a8dc6153e1f2bfbe6",
"assets/assets/img_mn2.jpg": "366ea79c4a54c2614660ff1f7bc34508",
"assets/assets/img_mn3.jpg": "84e8e418ab82c549986d134651b31e1e",
"assets/assets/img_mn4.jpg": "827bd68798808f9db02cfc61502bb13a",
"assets/assets/img_mn5.jpg": "e36b37681b916af8bff6c939d8113eff",
"assets/assets/img_mn6.jpg": "7f42806a0e08b18ff4f57a5edbeacbe6",
"assets/assets/img_mn7.jpg": "6693e20042e6fc59b727d7b864036eaa",
"assets/assets/img_mn8.jpg": "31704bc07eb9dd7890a82f63cbf3577d",
"assets/assets/img_profile.jpg": "046a4d9eeec9eb0c8960f05487041485",
"assets/assets/img_sm1.webp": "258742548b0b1557e7c70068f2a5469a",
"assets/assets/img_sm2.webp": "c395283e4e34a60567d2fc67fb5564bb",
"assets/assets/img_sm3.webp": "4c429611bad22016f2b1e28c0fe616d0",
"assets/assets/img_sm4.webp": "c57e09e6afb44932ed80a70895b765cc",
"assets/assets/img_sm5.webp": "97e93f9b5c47cb1b7a2d6ac65b2169f1",
"assets/assets/img_sm6.webp": "1b2fe7cec128255ae28b174288acf453",
"assets/assets/img_sm7.webp": "51f38c397329329cc4d8d1f5a23a656a",
"assets/assets/mano(0.6.6).apk": "612ca8ea653a0c7147d539fa6a80d168",
"assets/assets/video_smartup.mp4": "839326936a7af2c83a4568c261199f94",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "ed227bef09f90a18489ffa5ef76d53aa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "8fd0b963650e4c3f70c6b221693cbfe3",
"/": "8fd0b963650e4c3f70c6b221693cbfe3",
"main.dart.js": "aec77bce9e0a46086c9ae63e599c1ec4",
"manifest.json": "5d6f96b8f7e7f224552f27b2d138075d",
"version.json": "e50bc60262cb9114be3bb5958f332a10"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
