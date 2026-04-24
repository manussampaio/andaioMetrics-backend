import express from 'express';
import dontenv from 'dotenv';
import { auth } from "./lib/auth.js";
import { toNodeHandler } from "better-auth/node";

dontenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.all("/api/auth/*path", toNodeHandler(auth));

app.get("/health", (req, res) => {
  res.json({ status: "OK" });
});

app.get('/', (req, res) => {
    res.json({
        message: 'ANDAIO Metrics rodando!!',
        status: 'OK'
    })
});

app.listen(PORT, () => {
    console.log(`Servidor em http://localhost:${PORT}`);
    console.log(`Auth disponível em http://localhost:${PORT}/api/auth`);

});