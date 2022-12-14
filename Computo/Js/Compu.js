// Support Test (polyfill)
const supportsContainerQueries = "container" in document.documentElement.style;


if (!supportsContainerQueries) {
  import("https://cdn.skypack.dev/container-query-polyfill");
}