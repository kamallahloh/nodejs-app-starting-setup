import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send(`
    <h1>Hello from inside the very basic Node app!</h1>
  `);
})

// local machine node -v = v14.21.3
console.log(`Running on Node.js version: ${process.version}`);
// docker Running on Node.js version: v23.9.0 as per Dockerfile and latest version of node

app.listen(3000);


/*(node:1) [MODULE_TYPELESS_PACKAGE_JSON] Warning: Module type of file:///app/server.js is not specified and it doesn't parse as CommonJS.
Reparsing as ES module because module syntax was detected. This incurs a performance overhead.
To eliminate this warning, add "type": "module" to /app/package.json.
(Use `node --trace-warnings ...` to show where the warning was created)*/