# Hugo Blogging Quickstart

A minimal repository based on the [Hugo Quick Start guide](https://gohugo.io/getting-started/quick-start/) to get started with blogging and deploying on Luddy web servers.

## Steps

### Clone repository and submodules

```bash
git clone git@github.com:iuprohealth/hugo-blogging-quickstart.git
cd hugo-blogging-quickstart/
git submodule init
git submodule update
```

### Download a copy of `hugo`

We can download a copy from the repository: https://github.com/gohugoio/hugo/releases

For convenience, setup scripts for Linux/MacOS will download a copy and extract it here:

```bash
bash setup_hugo_linux.sh
```

```bash
bash setup_hugo_macos.sh
```

### Preview the blog locally

```bash
./hugo -D server
```

This should show the site running on: `http://localhost:1313/~hayesall/blog/`

... we'll tweak the address in the next step.

### Deploy to Luddy Web Servers

(**1**) If you haven't before, login to one of the Luddy servers (e.g. `burrow`) and run the `make-cgi` setup script.[^1]

```bash
ssh yourusername@burrow.luddy.indiana.edu
make-cgi
```

(**2**) Edit the `config.toml` file to set your IU username.

https://user-images.githubusercontent.com/11916674/187786566-5d357b0f-d64d-4232-95de-d7b3bfc3e9cf.mp4

(**3**) Edit the `deploy_site.sh` script with your IU username.

https://user-images.githubusercontent.com/11916674/187786710-afe162b1-f4fd-4e4f-8e3c-6190775fe68c.mp4

(**4**) Run the deploy script, which builds the site and uses `rsync` to send it to the server[^2]

```bash
bash deploy_site.sh
```

## What next?

Look at the `content/posts/` directory and the `static` directory. Currently there's

- there's a single post: `setup-hugo-blogging.md`
- and a single image: `faces_in_the_crowd_words.jpg`


## Footnotes

[^1]: The Confluence page has further about the servers and this step: [How do I run CGI scripts on the Luddy school web server?](https://uisapp2.iu.edu/confluence-prd/pages/viewpage.action?pageId=130122153)

[^2]: The Hugo documentation has some additional notes on deploying with rsync (https://gohugo.io/hosting-and-deployment/deployment-with-rsync/)
