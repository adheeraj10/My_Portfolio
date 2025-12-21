# How to View This Website on Your Mobile Phone

You have two easy ways to view your portfolio on your phone.

## Method 1: Local Network (For Instant Testing)
Use this method to test quickly while on the same WiFi.

1.  **Open Terminal** in this folder.
2.  **Start a Server**:
    Run the following command:
    ```bash
    python3 -m http.server 8000
    ```
3.  **Find Your IP Address**:
    Open a new terminal tab and run:
    ```bash
    ipconfig getifaddr en0
    ```
    (It will look like `192.168.x.x` or `10.0.0.x`)
4.  **Open on Phone**:
    Open your phone's browser and visit:
    `http://YOUR_IP_ADDRESS:8000`
    
    *Example: http://192.168.1.5:8000*

## Method 2: Deploy to the Internet (Shareable)
Use this to share your site with the world.

### Using Netlify Drop (Drag & Drop)
1.  Visit [app.netlify.com/drop](https://app.netlify.com/drop).
2.  Drag this entire `Portfolio_Website` folder onto the page.
3.  It will generate a live URL for you instantly.

### Using Vercel (Command Line)
1.  Run `npx vercel` in this folder.
2.  Follow the prompts (Hit Enter for defaults).
3.  It will give you a `vercel.app` link.
