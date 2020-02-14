'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"/assets/assets/moon.png": "a270b8a10d1a9a52441bf5a322dd1b86",
"/assets/assets/MaterialIcons-Regular.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"/assets/assets/images/gg%20(27).jpg": "a9bc2405d6f1a650eab358208e95834b",
"/assets/assets/images/gg%20(35).jpg": "a55b5f0a826e323bed79b7227fed44e1",
"/assets/assets/images/gg%20(22).jpg": "c3ea0d1e3a0d87721fde48aa9916fd5e",
"/assets/assets/images/gg%20(4).jpg": "bc4501372126313f71eb7a5e1bd215bf",
"/assets/assets/images/gg%20(10).jpg": "dbd999be20c87ad12c148a69898ff1ff",
"/assets/assets/images/gg%20(3).jpg": "8ec5cf3aa50ac550cb4e1cb8219bed22",
"/assets/assets/images/gg%20(6).jpg": "7cb260998211b510303b8bc647b8f122",
"/assets/assets/images/gg%20(15).jpg": "bf40881973ac55c6a739cdfab65aac87",
"/assets/assets/images/gg%20(1).jpg": "df2a532b63d7746531cf79d0941a502b",
"/assets/assets/images/gg%20(30).jpg": "b22fae8c4bf5cf63d97f5e22d49cc282",
"/assets/assets/images/gg%20(23).jpg": "ff2f0c78d5fbb55a67e5528f6e9e7e44",
"/assets/assets/images/gg%20(5).jpg": "99caaf9e0e545a3987be21b00a832caf",
"/assets/assets/images/gg%20(14).jpg": "209b167be8e20345692c286ddf521908",
"/assets/assets/images/gg%20(11).jpg": "d282cb3dadedda2dd5552901896f61c2",
"/assets/assets/images/gg%20(24).jpg": "c1b7bd5d3437b18cb1a9e2add7f3a634",
"/assets/assets/images/gg%20(16).jpg": "e8b722b485a676996904f6dcffb6911c",
"/assets/assets/images/gg%20(20).jpg": "055873b28f13c9a5d4dacd9f6cbf26bb",
"/assets/assets/images/gg%20(25).jpg": "3c95bc869f44425adad6b866654d624e",
"/assets/assets/images/gg%20(29).jpg": "d1d5cb25b21ab8c3aae3ebfce1de6783",
"/assets/assets/images/gg%20(12).jpg": "5863a0bc16029b19f163a78534b5081f",
"/assets/assets/images/gg%20(31).jpg": "f3627e2cce3277a7071f031a48fde7b2",
"/assets/assets/images/gg%20(19).jpg": "d4e3d867e998df9e7c403e807322b2cb",
"/assets/assets/images/gg%20(28).jpg": "c82667889f7dd20938dfd2eed6d1ba97",
"/assets/assets/images/gg%20(17).jpg": "edd128de9da455e5e14b6bff89802393",
"/assets/assets/images/gg%20(26).jpg": "2eaab80354ad77d5cabfc0da3feff32c",
"/assets/assets/images/gg%20(13).jpg": "b8dd3419a94406afddc28bb0c0027510",
"/assets/assets/images/gg%20(34).jpg": "6bf6ba58c8454e36dc36fe693b117bab",
"/assets/assets/images/gg%20(7).jpg": "0108ffd43bc34a3c32babb532be01da2",
"/assets/assets/images/gg%20(18).jpg": "d10a0751b475763ee2a2b3b946797a04",
"/assets/assets/images/gg%20(9).jpg": "3eb6e0b8a3a68eb2ec65beff0f099754",
"/assets/assets/images/gg%20(8).jpg": "cc977264f5204e8e3d438c951741d34f",
"/assets/assets/images/gg%20(21).jpg": "a0af581f367cfb68aefbd492207130b4",
"/assets/assets/images/gg%20(2).jpg": "c15bf4a2e4a1baeb82b889e795cefb16",
"/assets/assets/images/gg%20(32).jpg": "b553d9162e7cc11b5d087eff3534f804",
"/assets/assets/images/gg%20(33).jpg": "b6d1863a021729e9ec1dc4cd5fdb8f12",
"/assets/assets/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"/assets/assets/medium_light.png": "bd516690c99267a778885736015befe8",
"/assets/assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"/assets/assets/FontManifest.json": "5ea430c32f4ad8eb37e3eaa44a8c6cf4",
"/assets/assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"/assets/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"/assets/assets/gg%20(2).jpg": "c15bf4a2e4a1baeb82b889e795cefb16",
"/assets/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"/assets/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"/assets/moon.png": "a270b8a10d1a9a52441bf5a322dd1b86",
"/assets/MaterialIcons-Regular.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"/assets/LICENSE": "1a80be6c5724a31e6f9c9e06dba53b63",
"/assets/gg (2).jpg": "c15bf4a2e4a1baeb82b889e795cefb16",
"/assets/images/gg (29).jpg": "d1d5cb25b21ab8c3aae3ebfce1de6783",
"/assets/images/gg (32).jpg": "b553d9162e7cc11b5d087eff3534f804",
"/assets/images/gg (3).jpg": "8ec5cf3aa50ac550cb4e1cb8219bed22",
"/assets/images/gg (9).jpg": "3eb6e0b8a3a68eb2ec65beff0f099754",
"/assets/images/gg (11).jpg": "d282cb3dadedda2dd5552901896f61c2",
"/assets/images/gg (2).jpg": "c15bf4a2e4a1baeb82b889e795cefb16",
"/assets/images/gg (13).jpg": "b8dd3419a94406afddc28bb0c0027510",
"/assets/images/gg (35).jpg": "a55b5f0a826e323bed79b7227fed44e1",
"/assets/images/gg (20).jpg": "055873b28f13c9a5d4dacd9f6cbf26bb",
"/assets/images/gg (15).jpg": "bf40881973ac55c6a739cdfab65aac87",
"/assets/images/gg (21).jpg": "a0af581f367cfb68aefbd492207130b4",
"/assets/images/gg (19).jpg": "d4e3d867e998df9e7c403e807322b2cb",
"/assets/images/gg (5).jpg": "99caaf9e0e545a3987be21b00a832caf",
"/assets/images/gg (30).jpg": "b22fae8c4bf5cf63d97f5e22d49cc282",
"/assets/images/gg (22).jpg": "c3ea0d1e3a0d87721fde48aa9916fd5e",
"/assets/images/gg (4).jpg": "bc4501372126313f71eb7a5e1bd215bf",
"/assets/images/gg (24).jpg": "c1b7bd5d3437b18cb1a9e2add7f3a634",
"/assets/images/gg (34).jpg": "6bf6ba58c8454e36dc36fe693b117bab",
"/assets/images/gg (33).jpg": "b6d1863a021729e9ec1dc4cd5fdb8f12",
"/assets/images/gg (8).jpg": "cc977264f5204e8e3d438c951741d34f",
"/assets/images/gg (25).jpg": "3c95bc869f44425adad6b866654d624e",
"/assets/images/gg (6).jpg": "7cb260998211b510303b8bc647b8f122",
"/assets/images/gg (26).jpg": "2eaab80354ad77d5cabfc0da3feff32c",
"/assets/images/gg (28).jpg": "c82667889f7dd20938dfd2eed6d1ba97",
"/assets/images/gg (12).jpg": "5863a0bc16029b19f163a78534b5081f",
"/assets/images/gg (31).jpg": "f3627e2cce3277a7071f031a48fde7b2",
"/assets/images/gg (18).jpg": "d10a0751b475763ee2a2b3b946797a04",
"/assets/images/gg (10).jpg": "dbd999be20c87ad12c148a69898ff1ff",
"/assets/images/gg (1).jpg": "df2a532b63d7746531cf79d0941a502b",
"/assets/images/gg (17).jpg": "edd128de9da455e5e14b6bff89802393",
"/assets/images/gg (23).jpg": "ff2f0c78d5fbb55a67e5528f6e9e7e44",
"/assets/images/gg (7).jpg": "0108ffd43bc34a3c32babb532be01da2",
"/assets/images/gg (27).jpg": "a9bc2405d6f1a650eab358208e95834b",
"/assets/images/gg (14).jpg": "209b167be8e20345692c286ddf521908",
"/assets/images/gg (16).jpg": "e8b722b485a676996904f6dcffb6911c",
"/assets/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"/assets/medium_light.png": "bd516690c99267a778885736015befe8",
"/assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"/assets/AssetManifest.json": "bc713a9a15c4fc6c76f622528fa2a98a",
"/assets/FontManifest.json": "5ea430c32f4ad8eb37e3eaa44a8c6cf4",
"/assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"/main.dart.js": "487e2db0170d39f18322a508e1b6c3fb",
"/index.html": "c3de8fa5e73bcf836b4e469a3bf0fd5d",
"/manifest.json": "c2d62a2fc14d084620ce71ae85640333",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
