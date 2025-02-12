# Hacker Charity :heart: 

This is a website which lists FOSS projects that accept donations. The goal is to make it easier for people to find projects to 
support with payments methods they prefer.

It grew out of a personal librecalc sheet I used to keep track of projects I wanted to donate to. As I don't have access
to many payment methods and generally prefer crypto donations, I kept track of which projects accepted which payment methods.

The website is hosted at [hacker.charity](https://hacker.charity). This is a static website built with [Astro](https://astro.build/).

# Contributing

## Adding a new project

To add a new project, please edit the [projects.json](./src/data/projects.json) file. The format is as follows:

```json
{
    "name": "Project Name",
    "link": "https://project.link",
    "tags": ["tag1", "tag2", "tag3"],
    "payment_methods": ["method1", "method2", "method3"],
    "methods_checked_by_hand": true,
    "description": "A short description of the project",
    "donation_page": "https://project.link/donations"
}
```

Fields description:

| Field                     | Description                                                                                                                                                                                                                                                             |
|---------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `name`                    | The name of the project.                                                                                                                                                                                                                                                |
| `link`                    | The URL of the project's homepage.                                                                                                                                                                                                                                      |
| `tags`                    | An array of tags that describe the project. Please don't add too many specific tags as they clutter the page. As a rule of thumb, a new tag should ideally cover at least 3 projects.                                                                                   |
| `payment_methods`         | An array of payment methods the project accepts. The possible options can be found in [payment_methods.json](./src/data/payment_methods.json).                                                                                                                          |
| `methods_checked_by_hand` | A boolean value indicating whether the payment methods were checked by a human and not through automation (AI, crawlers, etc.).                                                                                                                                         |
| `description`             | A short description of the project.                                                                                                                                                                                                                                     |
| `donation_page`           | The URL of the project's donation page, if one exists. If the only donation link is GitHub Sponsors on GitHub page, use the GitHub page. If the project only contains direct links to external resources without anchors or dedicated donation pages, leave this blank. |

## Adding a new payment method

I'm open to adding region-specific payment methods, but be aware that review will take considerable time and has a high chance of rejection.
Each proposed payment method will be thoroughly reviewed to ensure it is not a scam or fraudulent. 
Major cryptocurrencies (i.e., top 30-50 by CoinGecko) are welcome, but obscure coins with no usage are not.

**If no listed projects accept a payment method, it will be rejected without review**.

# 3rd party asset sources

| Asset         | Source                                               | License                                                   |
|---------------|------------------------------------------------------|-----------------------------------------------------------|
| Most cons     | [Simple Icons](https://simpleicons.org/)             | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) |
| Bank icon     | [SVG Repo](https://www.svgrepo.com/svg/513165/bank)  | [CC BY](https://creativecommons.org/licenses/by/4.0/)     |
| Heart favicon | [SVG Repo](https://www.svgrepo.com/svg/207519/heart) | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) |

