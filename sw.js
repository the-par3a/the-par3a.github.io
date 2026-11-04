const FONT_CACHE = "royesh-fonts-v2";

self.addEventListener("install", (event) => {
  self.skipWaiting();
});

self.addEventListener("activate", (event) => {
  event.waitUntil((async () => {
    const cacheNames = await caches.keys();
    await Promise.all(
      cacheNames
        .filter((name) => name.startsWith("royesh-fonts-") && name !== FONT_CACHE)
        .map((name) => caches.delete(name))
    );
    await self.clients.claim();
  })());
});

self.addEventListener("fetch", (event) => {
  const request = event.request;
  if (request.method !== "GET" || request.destination !== "font") return;

  const url = new URL(request.url);
  if (url.origin !== self.location.origin || !url.pathname.startsWith("/fonts/")) return;
  if (!/\.woff2?$/i.test(url.pathname)) return;

  event.respondWith((async () => {
    const cache = await caches.open(FONT_CACHE);
    const cached = await cache.match(request);
    if (cached) return cached;

    try {
      // Bypass the HTTP cache on a cache miss so a newly deployed font is stored.
      const response = await fetch(request, { cache: "reload" });
      if (response.ok && response.type === "basic") {
        await cache.put(request, response.clone());
      }
      return response;
    } catch (error) {
      const fallback = await cache.match(request);
      if (fallback) return fallback;
      throw error;
    }
  })());
});
