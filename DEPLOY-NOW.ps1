# ─── HATRI PICK CLUB — DEPLOY SCRIPT ────────────────────────────────────────
Write-Host ""
Write-Host "🏓 Hatri Pick Club — Deploy to Vercel" -ForegroundColor Green
Write-Host "──────────────────────────────────────" -ForegroundColor DarkGray

# Check if git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Git chưa được cài. Tải tại: https://git-scm.com" -ForegroundColor Red
    exit 1
}

# Check if node is installed
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Node.js chưa được cài. Tải tại: https://nodejs.org" -ForegroundColor Red
    exit 1
}

Write-Host "📦 Cài dependencies..." -ForegroundColor Cyan
npm install

Write-Host "🔨 Build project..." -ForegroundColor Cyan
npm run build

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Build thất bại!" -ForegroundColor Red
    exit 1
}

Write-Host "🚀 Deploy lên Vercel..." -ForegroundColor Cyan
git add -A
git commit -m "deploy: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push

Write-Host ""
Write-Host "✅ Deploy thành công!" -ForegroundColor Green
Write-Host "🌐 Vercel sẽ tự động build và publish trong ~1 phút" -ForegroundColor Green
Write-Host ""
