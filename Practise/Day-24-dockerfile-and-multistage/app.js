const http = require('http');

const PORT = 3000;

http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('🚀 Hello from Dockerized Node.js App\n');
}).listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
