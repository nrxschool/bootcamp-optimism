const express = require('express');
const multer = require('multer');
const app = express();
const port = 3001;
const os = require('os');

function getLocalIpAddress() {
    const interfaces = os.networkInterfaces();
    for (const iface of Object.values(interfaces)) {
        for (const alias of iface) {
            if (alias.family === 'IPv4' && !alias.internal) {
                return alias.address;
            }
        }
    }
    return '0.0.0.0';
}

const upload = multer({ dest: 'uploads/' });


const page = express.static('public')
app.use(page);

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});


app.post('/upload', upload.single('arquivo'), (req, res) => {
    console.log(req.file);
    res.send('Arquivo recebido!');
});

app.listen(port, () => {
    console.log(`Servidor rodando em http://${getLocalIpAddress()}:${port}`);
});
