run:
    npm run dev --prefix webapp

build:
    npm run build --prefix webapp

publish: build
    npx --prefix ./webapp wrangler pages deploy
