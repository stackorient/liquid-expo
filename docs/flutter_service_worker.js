'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "cd8d43e7f07e730db7799ca1eafcf561",
"assets/assets/flare/liquid.flr": "a8db0bcd5241b4478a98603141d17669",
"assets/assets/images/ltextexp.png": "45b5d96b07a113f2cbbc6e5e7d8a1d1f",
"assets/assets/logos/logo-horizontal.png": "385f1bdf077d9938d82b2568e18727f7",
"assets/assets/logos/logo-vertical.png": "b084449cc6b3935728bf53ec7c9762bf",
"assets/assets/logos/logo.png": "583245140c528b0635b30ceeadd39a5f",
"assets/assets/logos/logo.svg": "72782fc4ba4bd81a71896fb703a36efd",
"assets/assets/logos/logo_big.png": "820e1f28d2b73e6acb81e3c682274654",
"assets/assets/logos/logo_big_border.png": "0fe6f0047957a7ff2dd49e9a8a759bec",
"assets/assets/logos/logo_with_title.svg": "21d64a7c65695f4d4fc32ab42261ea4d",
"assets/assets/logos/only_text.png": "cf7bae0196a3711af185d552b8d11e73",
"assets/assets/logos/only_text.svg": "6ee407e1ca5da5bba78689f58fa2824d",
"assets/FontManifest.json": "a1c552b27767112273ba8e673937bc02",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/Poppins/Poppins-Black.ttf": "42cf9f0820d16f3ac2c26a7710ce70f2",
"assets/fonts/Poppins/Poppins-BlackItalic.ttf": "16dc9819cb371f042475ae8b0c309cba",
"assets/fonts/Poppins/Poppins-Bold.ttf": "c23534acbeddbaadfd0ab2d2bbfdfc84",
"assets/fonts/Poppins/Poppins-BoldItalic.ttf": "5bda2710554b202e3e69cf2ec4e0e663",
"assets/fonts/Poppins/Poppins-ExtraBold.ttf": "6b78c7ec468eb0e13c6c5c4c39203986",
"assets/fonts/Poppins/Poppins-ExtraBoldItalic.ttf": "e59d32640b0023d4c484239b189e1f01",
"assets/fonts/Poppins/Poppins-ExtraLight.ttf": "8ea2657f263b6b2a404bfb57f4160013",
"assets/fonts/Poppins/Poppins-ExtraLightItalic.ttf": "f5080ea9cccdd72a62241b2410f1b773",
"assets/fonts/Poppins/Poppins-Italic.ttf": "89c81a3cbc00c32cbe1b28561029be0d",
"assets/fonts/Poppins/Poppins-Light.ttf": "2a47a29ceb33c966c8d79f8d5a5ea448",
"assets/fonts/Poppins/Poppins-LightItalic.ttf": "926a872e20b6555f4d2a395d6d1bc01e",
"assets/fonts/Poppins/Poppins-Medium.ttf": "ba95810b56f476990ca71d15139d5111",
"assets/fonts/Poppins/Poppins-MediumItalic.ttf": "9e911c68b683bfce45bb6effc5403b1d",
"assets/fonts/Poppins/Poppins-Regular.ttf": "41e8dead03fb979ecc23b8dfb0fef627",
"assets/fonts/Poppins/Poppins-SemiBold.ttf": "342ba3d8ac29ac8c38d7cef8efbf2dc9",
"assets/fonts/Poppins/Poppins-SemiBoldItalic.ttf": "0fc816cbaaddf3d5b8c6b00c4acddf58",
"assets/fonts/Poppins/Poppins-Thin.ttf": "c0fafa8397437c95848724aed686d63b",
"assets/fonts/Poppins/Poppins-ThinItalic.ttf": "272bb70478d0d2c7fc9b4d6c948b5f18",
"assets/fonts/Roboto/Roboto-Black.ttf": "5ebb24ee1112dd9562629375c387879a",
"assets/fonts/Roboto/Roboto-BlackItalic.ttf": "99682a78fa4fe61e1177b94757336bbf",
"assets/fonts/Roboto/Roboto-Bold.ttf": "e07df86cef2e721115583d61d1fb68a6",
"assets/fonts/Roboto/Roboto-BoldItalic.ttf": "5b44818d2b9eda3e23cd5edd7b49b7d5",
"assets/fonts/Roboto/Roboto-Italic.ttf": "a720f17aa773e493a7ebf8b08459e66c",
"assets/fonts/Roboto/Roboto-Light.ttf": "88823c2015ffd5fa89d567e17297a137",
"assets/fonts/Roboto/Roboto-LightItalic.ttf": "a3ce4440f2abf76f4a1b14b83920138c",
"assets/fonts/Roboto/Roboto-Medium.ttf": "58aef543c97bbaf6a9896e8484456d98",
"assets/fonts/Roboto/Roboto-MediumItalic.ttf": "cf23e1bb619029496260760b72aebd30",
"assets/fonts/Roboto/Roboto-Regular.ttf": "11eabca2251325cfc5589c9c6fb57b46",
"assets/fonts/Roboto/Roboto-Thin.ttf": "321de678e592d0b8f44f1a82d7ca4b62",
"assets/fonts/Roboto/Roboto-ThinItalic.ttf": "35a9c89aff1396595ad345e378a32aca",
"assets/fonts/Roboto_Mono/RobotoMono-Regular.ttf": "b4618f1f7f4cee0ac09873fcc5a966f9",
"assets/LICENSE": "3069f7d8705a203af44cf2711c937907",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"icons/logo.png": "583245140c528b0635b30ceeadd39a5f",
"index.html": "2dd612d0f2a6665a0aa881ddb6615d83",
"/": "2dd612d0f2a6665a0aa881ddb6615d83",
"logo.png": "583245140c528b0635b30ceeadd39a5f",
"main.dart.js": "c3b6ccb4a768acc6722bcca8607d3b98",
"manifest.json": "afb5e8eff4e84237544f4308514240a5"
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
        return fetch(event.request);
      })
  );
});
