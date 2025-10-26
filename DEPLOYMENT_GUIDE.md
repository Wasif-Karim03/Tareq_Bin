# Deployment Guide for Uttara Cricket Academy Website

This guide will help you deploy your website to GitHub and Vercel so others can access it online.

## Steps to Deploy

### 1. Create a New GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the **"+"** icon in the top right → **"New repository"**
3. Repository name: `uttara-cricket-academy` (or any name you prefer)
4. Description: "Cricket academy website for Coach Tareq Bin Delwar"
5. Keep it **Public** (for free deployment)
6. **DO NOT** initialize with README, .gitignore, or license
7. Click **"Create repository"**

### 2. Connect Your Local Project to GitHub

After creating the repository, GitHub will show you commands. Run these in your terminal:

```bash
cd /Users/wasifkarim/Desktop/Sawon/portfolio

# Remove the old remote (if not already done)
git remote remove origin

# Add your new GitHub repository as remote
git remote add origin https://github.com/Wasif-Karim03/uttara-cricket-academy.git

# Push your code to GitHub
git branch -M main
git push -u origin main
```

**Note:** Replace `Wasif-Karim03/uttara-cricket-academy` with your actual GitHub username and repository name!

### 3. Deploy to Vercel (Free & Easy)

1. Go to [Vercel.com](https://vercel.com) and sign in with your GitHub account
2. Click **"Add New..."** → **"Project"**
3. Import your GitHub repository (`uttara-cricket-academy`)
4. Vercel will auto-detect it's a Next.js project
5. **Project Settings:**
   - Framework Preset: Next.js
   - Root Directory: `./portfolio` (or just leave default)
   - Build Command: `npm run build` (auto-detected)
   - Output Directory: `.next`
6. Click **"Deploy"**
7. Wait 1-2 minutes for the build to complete
8. Your site will be live at: `https://uttara-cricket-academy.vercel.app`

### 4. (Optional) Add Custom Domain

If you want to use a custom domain like `uttaracricketacademy.com`:

1. In Vercel dashboard, go to your project
2. Click **"Settings"** → **"Domains"**
3. Add your domain
4. Follow the DNS configuration instructions

## What You Get

✅ **Live Website**: Share with anyone: `https://[your-repo].vercel.app`  
✅ **Automatic Deployments**: Every time you push to GitHub  
✅ **Free SSL Certificate**: Secure HTTPS connection  
✅ **Global CDN**: Fast loading worldwide  
✅ **Free Forever**: No credit card required for basic tier  

## Updating Your Site

Whenever you make changes:

```bash
cd /Users/wasifkarim/Desktop/Sawon/portfolio
git add .
git commit -m "Your update message"
git push
```

Vercel will automatically rebuild and deploy your changes in ~2 minutes!

## Environment Variables (For Contact Form)

When deploying to Vercel, add these environment variables:

1. In Vercel dashboard → Project → Settings → Environment Variables
2. Add:
   - `RESEND_API_KEY` = Your Resend API key (get from resend.com)
   - `CONTACT_EMAIL` = info@uttaracricketacademy.com

## Need Help?

- [Vercel Documentation](https://vercel.com/docs)
- [Next.js Deployment](https://nextjs.org/docs/deployment)

