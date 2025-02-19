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
