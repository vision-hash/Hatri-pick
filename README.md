# 🏓 Hatri Pick Club

Hệ thống quản lý thi đấu Pickleball — Hatri Pick Club

## Stack
- React 18 + Vite
- Firebase Realtime Database (sync realtime)
- Vercel (hosting)

## Thành viên
| Tên | Username | Mật khẩu | Role |
|-----|----------|-----------|------|
| Dũng Lê | dungle | 123456 | Admin |
| Hoàng Cường | hoangcuong | 123456 | Member |
| Dũng Lớn | dunglon | 123456 | Member |
| Hoàng Minh | hoangminh | 123456 | Member |
| Trung | trung | 123456 | Member |

## Cài đặt lần đầu

```bash
# 1. Cài dependencies
npm install

# 2. Chạy local
npm run dev

# 3. Build
npm run build
```

## Deploy lên Vercel

Chạy PowerShell script:
```powershell
.\DEPLOY-NOW.ps1
```

Hoặc push lên GitHub — Vercel tự động deploy.

## Firebase
- Project: hatri-pick-club
- Database URL: https://hatri-pick-club-default-rtdb.firebaseio.com
- Console: https://console.firebase.google.com/project/hatri-pick-club
