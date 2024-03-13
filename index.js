const express = require("express");

const app = express();

app.use(express.static("nopsta.com", { extensions: ["html"] }));

app.use(`/oraand/:id`, (_, res) =>
  res.sendFile(`nopsta.com/oraand/index.html`, { root: __dirname })
);
app.use(`/petarp/:id`, (_, res) =>
  res.sendFile(`nopsta.com/petarp/index.html`, { root: __dirname })
);

app.get("/a/oraand/token-count", (_, res) => res.json({ value: 1024 }));
app.get("/a/oraand/mint-price", (_, res) => res.json({ value: 0.0256 }));

app.get("/a/petarp/token-count", (_, res) => res.json({ value: 64 }));
app.get("/a/petarp/mint-price", (_, res) => res.json({ value: 2560 }));
app.get("/a/petarp/versions", (_, res) =>
  // 0xfff: TODO: Find out if this is derived from chainstate
  res.json({
    value: [
      1, 0, 0, 1, 1, 2, 1, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    ],
  })
);
app.get("/a/petarp/:tokenId", async (req, res) => {
  // TODO: replace with on-chain calls
  const response = await fetch('https://nopsta.com/a/petarp/' + req.params.tokenId);
  const data = await response.json();
  return res.json(data);
});
app.get("/a/petarp/:tokenId/video", async (req, res) => {
  return res.json({
    "value": {
      "v":0,
      "status":"Generated",
      "path":"\/petarp\/videos\/petarp-" + req.params.tokenId.padStart(3, "0") + ".mp4"
    }
  });
});
app.get("/a/petarp/custom-bytes", (_, res) =>
  res.json(require("./mock").CUSTOM_BYTES_RESPONSE_STUB)
);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
