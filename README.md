# 小米小爱同学课程表导入教程

这是一个静态网站项目，提供了小米小爱同学课程表导入的教程。

## 文件说明

- `index.html` - 主页面（独立HTML，包含内联CSS，适合所有平台）
- `content.md` - Markdown 版本内容（适合静态站点生成器）
- `index.md` - GitHub Pages 专用版本
- `_config.yml` - Jekyll/GitHub Pages 配置

## 部署方式

### 1. GitHub Pages
直接推送到 GitHub 仓库，启用 Pages 功能即可。

### 2. Cloudflare Pages
```bash
# 方式1：通过 Git 集成
# 在 Cloudflare Dashboard 中连接 GitHub 仓库

# 方式2：使用 Wrangler CLI
npm install -g wrangler
wrangler pages deploy .
```

### 3. EdgeOne (腾讯云)
直接上传 `index.html` 文件到 EdgeOne 静态托管服务。

### 4. Vercel
```bash
# 安装 Vercel CLI
npm install -g vercel

# 部署
vercel --prod
```

### 5. Netlify
```bash
# 方式1：拖拽文件夹到 Netlify 网页

# 方式2：使用 CLI
npm install -g netlify-cli
netlify deploy --prod
```

### 6. 本地预览
```bash
# Python 3
python3 -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Node.js
npx http-server
```

## 配置文件说明

- `netlify.toml` - Netlify 配置
- `vercel.json` - Vercel 配置
- `_headers` - Cloudflare Pages 头部配置
- `wrangler.toml` - Cloudflare Workers/Pages 配置

## 注意事项

1. 所有平台都可以直接使用 `index.html`
2. 如需修改内容，编辑 `index.html` 即可
3. 图片占位符需要替换为实际截图

## License

MIT