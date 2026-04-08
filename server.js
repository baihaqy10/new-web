const express = require('express');
const os = require('os');
const app = express();
const PORT = process.env.PORT || 8080;

app.use(express.static('public'));

app.get('/api/info', (req, res) => {
    res.json({
        hostname: os.hostname(),
        platform: os.platform(),
        uptime: os.uptime(),
        message: "Hello dari OpenShift Cluster!"
    });
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});