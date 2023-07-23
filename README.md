This repo is a template for redirecting domains using Cloudflare Pages.

## Install

```text
$ yarn
```

You will have to connect the site to the domain's project in Cloudflare Pages. You can run this command to list the available projects in Cloudflare:

```text
npx wrangler pages project list
```

## Configure

Change all instances of `example.com` to your domain name. (Search all the files for that string.)

## Build and Deploy

```text
$ yarn deploy
```

## Test Redirects

All the responses should be `301`.

```text
$ yarn test
```
