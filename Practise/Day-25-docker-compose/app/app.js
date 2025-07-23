const http = require('http');
const { MongoClient } = require('mongodb');

const PORT = 3000;
const mongoURL = `mongodb://${process.env.DB_HOST || 'localhost'}:${process.env.DB_PORT || 27017}`;

http.createServer(async (req, res) => {
  try {
    const client = await MongoClient.connect(mongoURL, { useUnifiedTopology: true });
    const db = client.db('devops');
    const collection = db.collection('test');
    await collection.insertOne({ message: 'Hello from Compose!' });
    const count = await collection.countDocuments();
    res.writeHead(200);
    res.end(`🎉 Connected to MongoDB! Docs in collection: ${count}\n`);
    await client.close();
  } catch (err) {
    res.writeHead(500);
    res.end(`MongoDB connection error: ${err.message}`);
  }
}).listen(PORT, () => {
  console.log(`🚀 App running on http://localhost:${PORT}`);
});
