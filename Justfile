run:
    npm run dev --prefix webapp

build:
    npm run build --prefix webapp

publish: build
    npx --prefix ./webapp wrangler pages deploy

stats:
    #!/usr/bin/env sh
    PROJECT_COUNT=$(cat webapp/src/data/projects.json | jq length)
    echo "Number of projects: $PROJECT_COUNT"

@ help:
    echo "Possible commands"
    echo "* stats: shows current stats of the project"
    echo "* run: run local dev preview"
    echo "* build: build the release version of the app"
    echo "* publish: publish to cloudflare pages (requires auth keys)"
