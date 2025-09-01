#!/bin/bash

# 通用部署脚本
# 使用方法: ./deploy.sh [platform]
# 平台选项: github, cloudflare, vercel, netlify, all

PLATFORM=$1

deploy_github() {
    echo "📦 准备部署到 GitHub Pages..."
    git add .
    git commit -m "Update tutorial content"
    git push origin main
    echo "✅ GitHub Pages 部署完成"
}

deploy_cloudflare() {
    echo "☁️ 准备部署到 Cloudflare Pages..."
    if command -v wrangler &> /dev/null; then
        wrangler pages deploy .
    else
        echo "❌ 请先安装 wrangler: npm install -g wrangler"
        exit 1
    fi
    echo "✅ Cloudflare Pages 部署完成"
}

deploy_vercel() {
    echo "▲ 准备部署到 Vercel..."
    if command -v vercel &> /dev/null; then
        vercel --prod
    else
        echo "❌ 请先安装 vercel: npm install -g vercel"
        exit 1
    fi
    echo "✅ Vercel 部署完成"
}

deploy_netlify() {
    echo "🔷 准备部署到 Netlify..."
    if command -v netlify &> /dev/null; then
        netlify deploy --prod
    else
        echo "❌ 请先安装 netlify-cli: npm install -g netlify-cli"
        exit 1
    fi
    echo "✅ Netlify 部署完成"
}

case $PLATFORM in
    github)
        deploy_github
        ;;
    cloudflare)
        deploy_cloudflare
        ;;
    vercel)
        deploy_vercel
        ;;
    netlify)
        deploy_netlify
        ;;
    all)
        deploy_github
        deploy_cloudflare
        deploy_vercel
        deploy_netlify
        ;;
    *)
        echo "使用方法: ./deploy.sh [platform]"
        echo "平台选项: github, cloudflare, vercel, netlify, all"
        echo ""
        echo "示例:"
        echo "  ./deploy.sh github      # 部署到 GitHub Pages"
        echo "  ./deploy.sh cloudflare  # 部署到 Cloudflare Pages"
        echo "  ./deploy.sh vercel      # 部署到 Vercel"
        echo "  ./deploy.sh netlify     # 部署到 Netlify"
        echo "  ./deploy.sh all         # 部署到所有平台"
        exit 1
        ;;
esac