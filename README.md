# Laguna Seca Trip Board

Interactive weekend board for the Mission Foods Grand Prix of Monterey (Sep 4–6):
food, coffee and track timing for Friday–Sunday, with a route that updates as you
change picks and hands off to Google Maps for live traffic.

Static site, no build step:

- `index.html` — the board (Claude Design canvas page)
- `support.js` — the runtime that renders it (loads React from unpkg at runtime)
- `trip-data.js` — every place, plan and pick on the board

Selections are stored in the visitor's browser (`localStorage`) only — there is no backend.

## Deploy on Coolify

Option A — Dockerfile (recommended):

1. In Coolify, create a new **Application** from this Git repository.
2. Set **Build Pack** to `Dockerfile`. The included `Dockerfile` serves the three
   files with nginx on port **80**.
3. Deploy and attach your domain.

Option B — Static build pack: choose the `Static` build pack with the repository
root as the publish directory (there is no build command; `index.html` is already
the entry point).

## Local preview

```sh
python3 -m http.server 8080
# open http://localhost:8080
```

Note: the page needs internet access in the browser to fetch React from unpkg.com.
