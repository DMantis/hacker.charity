run:
    npm run dev --prefix webapp

build:
    npm run build --prefix webapp

publish:
    npx --prefix ./webapp wrangler pages deploy
