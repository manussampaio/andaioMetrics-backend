import express from 'express'
import dontenv from 'dotenv'

dontenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.get('/', (req, res) => {
    res.json({
        message: 'ANDAIO Metrics rodando!!',
        status: 'OK'
    })
});

app.listen(PORT, () => {
    console.log(`Servidor em http://localhost:${PORT}`)
});
