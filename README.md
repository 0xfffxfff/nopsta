# nopsta.com

Work-in-progress archival of [nopsta.com](https://nopsta.com)

## How to Scrape Data

Run scripts:

    ./fetch-site.sh
    ./oraand-images.sh
    ./oraand-previews.sh
    ./petarp-images.sh
    ./petarp-meta.sh
    ./petarp-prg.sh

Run replace strings to remove hardcoded domain references:

    ./replace-strings.sh

## How to Run Server

Install dependencies:

    npm install

Login to Vercel

    vercel login

Run dev:

    npm run dev

Open in browser:

    http://localhost:3000
