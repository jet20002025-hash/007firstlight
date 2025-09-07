# 007 First Light Website Auto Upload Script
# 自动上传脚本

Write-Host "🚀 Starting automatic upload to GitHub..." -ForegroundColor Green

# 设置Git路径
$gitPath = "C:\Program Files\Git\cmd\git.exe"

# 检查Git是否存在
if (Test-Path $gitPath) {
    Write-Host "✅ Git found at: $gitPath" -ForegroundColor Green
} else {
    Write-Host "❌ Git not found. Please install Git first." -ForegroundColor Red
    exit 1
}

# 设置Git配置
Write-Host "🔧 Configuring Git..." -ForegroundColor Yellow
& $gitPath config --global user.name "jet20002025-hash"
& $gitPath config --global user.email "jet20002025-hash@users.noreply.github.com"

# 初始化Git仓库
Write-Host "📁 Initializing Git repository..." -ForegroundColor Yellow
& $gitPath init

# 添加所有文件
Write-Host "📄 Adding files..." -ForegroundColor Yellow
& $gitPath add .

# 提交文件
Write-Host "💾 Committing files..." -ForegroundColor Yellow
& $gitPath commit -m "Initial commit: 007 First Light website with SEO optimization"

# 设置主分支
Write-Host "🌿 Setting main branch..." -ForegroundColor Yellow
& $gitPath branch -M main

# 添加远程仓库
Write-Host "🔗 Adding remote repository..." -ForegroundColor Yellow
& $gitPath remote add origin https://github.com/jet20002025-hash/007firstlight.git

# 推送到GitHub
Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Yellow
& $gitPath push -u origin main

Write-Host "✅ Upload completed successfully!" -ForegroundColor Green
Write-Host "🌐 Your website is now available at: https://github.com/jet20002025-hash/007firstlight" -ForegroundColor Cyan
Write-Host "📱 You can also enable GitHub Pages for free hosting!" -ForegroundColor Cyan

# 暂停以查看结果
Read-Host "Press Enter to continue..."
