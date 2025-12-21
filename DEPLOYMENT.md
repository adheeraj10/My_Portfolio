# Deployment Guide

## 🚀 Option 1: Automated Deployment (Recommended)
**"Update code -> Auto-update website"**

Yes! The best way to host your portfolio is to link **GitHub** with **Netlify**. This way, every time you save changes and push them to GitHub, your live website updates automatically within seconds.

### Step 1: Put your code on GitHub
1.  **Initialize Git** (if you haven't already):
    *   Open your terminal in the project folder.
    *   Run: `git init`
    *   Run: `git add .`
    *   Run: `git commit -m "Initial portfolio upload"`
2.  **Create a Repo**: Go to [GitHub.com/new](https://github.com/new) and create a new public repository (e.g., `my-portfolio`).
3.  **Push Code**: Follow the instructions GitHub gives you to push your code:
    *   `git remote add origin https://github.com/YOUR_USERNAME/my-portfolio.git`
    *   `git branch -M main`
    *   `git push -u origin main`

### Step 2: Connect Netlify
1.  Log in to [Netlify](https://netlify.com).
2.  Click **"Add new site"** > **"Import from an existing project"**.
3.  Select **GitHub**.
4.  Authorize Netlify to access your GitHub account.
5.  Search for and select your `my-portfolio` repository.
6.  **Build Settings**:
    *   **Base directory**: (Leave empty)
    *   **Publish directory**: (Leave empty, or type `/` if asked)
    *   Click **Deploy Site**.

### 🎉 Done!
*   Netlify will give you a URL (e.g., `adheeraj-portfolio.netlify.app`).
*   **To Update**: Just make changes on your computer, commit, and push (`git push`). Netlify detects the change and updates the live site instantly!

### Customizing: already have a manual site?
If you already have a site on Netlify (from drag-and-drop) and want to keep its name/URL but switch to GitHub updates:
1.  Go to your **Site Overview** in Netlify.
2.  Click **"Site configuration"** (or "Site settings").
3.  Click **"Build & deploy"** in the sidebar.
4.  Click **"Link repository"**.
5.  Choose **GitHub** and select your `My_Portfolio` repo.
6.  This effectively "upgrades" your manual site to the automatic one without creating a duplicate!

---

## Option 2: GitHub Pages (Manual)
This gives you a URL like `your-username.github.io`.

1.  **Create a GitHub Repository**:
    *   Go to [github.com/new](https://github.com/new).
    *   Name the repository **exactly** `your-username.github.io` (replace `your-username` with your actual GitHub username).
    *   *Example: if your user is `adheeraj`, name it `adheeraj.github.io`*.
    *   Make sure it is **Public**.

2.  **Upload Your Code**:
    *   **If using Git locally**:
        ```bash
        cd /Users/adheeraj/Downloads/Portfolio_Website
        git init
        git add .
        git commit -m "Initial commit"
        git branch -M main
        git remote add origin https://github.com/your-username/your-username.github.io.git
        git push -u origin main
        ```
    *   **If using Web Upload**:
        *   Open your new repository on GitHub.
        *   Click **Add file** > **Upload files**.
        *   Drag and drop all your project files (`index.html`, `style.css`, images, etc.) there.
        *   Commit the changes.

3.  **Done!**:
    *   Wait about 1-2 minutes.
    *   Visit `https://your-username.github.io`.

---

## Option 3: Netlify (Manual Drag & Drop)
This gives you a URL like `adheeraj-portfolio.netlify.app`.

1.  Go to [app.netlify.com](https://app.netlify.com).
2.  Sign up (you can use your GitHub account).
3.  Once logged in, go to the **"Sites"** tab.
4.  Bottom of the page says **"Drag and drop your site output folder here"**.
5.  Drag your entire `/Portfolio_Website` folder onto that area.
6.  It will be online instantly. You can change the "site name" in Site Settings to get a cleaner URL.

---

## Option 4: Vercel (Modern Web)
This gives you a URL like `adheeraj-portfolio.vercel.app`.

1.  Go to [vercel.com](https://vercel.com) and sign up.
2.  Install Vercel CLI (optional) or just use the web dashboard.
3.  **Web Dashboard**:
    *   Click **"Add New..."** > **"Project"**.
    *   Import from your GitHub repository (if you pushed it there).
    *   Vercel detects it's a static site and deploys it automatically.

---

## Important Note on "adheeraj.com" (Custom Domains)
While the **hosting** is free, a custom domain name ending in `.com` (like `adithyask.com`) is **not free**. You must buy it from a registrar (like GoDaddy, Namecheap, or Google Domains) for about $10-$15/year.

**If you buy a domain:**
1.  You can still use the **free hosting** above.
2.  You just allow the domain to point to your free GitHub/Netlify page (this is called setting a `CNAME` record).
3.  GitHub Pages and Netlify both have a "Custom Domain" setting where you enter `adheeraj.com` and they give you the DNS records to add.
