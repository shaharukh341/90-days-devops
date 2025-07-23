const http = require("http");

const server = http.createServer((req, res) => {
  res.end("Hello from private Docker registry demo!");
});

server.listen(3000, () => {
  console.log("App running on http://localhost:3000");
});
