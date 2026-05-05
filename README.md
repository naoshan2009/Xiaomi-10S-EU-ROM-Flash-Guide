# Xiaomi 10S (thyme) CN HyperOS → EU Stable Flash Guide
小米10S 国行澎湃OS 跨刷欧版稳定版
完整Fastboot线刷教程 | 超长分卷Super | 一键脚本 | 报错修复

---

## 📌 项目信息
- 设备：Xiaomi 10S (thyme)
- 原系统：国行 HyperOS 最终稳定版
- 目标系统：小米 EU 欧版稳定版
- 固件格式：动态分区超长分卷
- 分卷文件：`super.img.000` ~ `super.img.13`
- 运行环境：Windows Fastboot 线刷

---

## 📁 强制目录规范（必看，防止刷机失败）
### 目录要求
1. 文件夹路径**无中文、无空格、无特殊符号**
2. 所有工具、镜像、脚本**必须放在同一目录**

### 标准文件结构
```
Flash_Folder/
├── adb.exe
├── fastboot.exe
├── 其他依赖库文件
├── flash_eu_rom.bat
├── boot.img
├── vendor_boot.img
├── dtbo.img
├── vbmeta.img
├── recovery.img
├── super.img.000
├── super.img.001
├── super.img.002
├── super.img.003
├── super.img.004
├── super.img.005
├── super.img.006
├── super.img.007
├── super.img.008
├── super.img.009
├── super.img.10
├── super.img.11
├── super.img.12
└── super.img.13
```
---

## 🛠 Fastboot 常用命令速查表
| 命令 | 作用说明 |
|------|----------|
| fastboot flash boot boot.img | 刷入 Boot 分区 |
| fastboot flash vendor_boot vendor_boot.img | 刷入 Vendor_Boot |
| fastboot flash dtbo dtbo.img | 刷入 DTBO 分区 |
| fastboot flash vbmeta vbmeta.img | 关闭AVB校验，适配第三方REC |
| fastboot flash recovery recovery.img | 刷入 Recovery / TWRP |
| fastboot erase userdata | 清除数据、解除分区加密 |
| fastboot reboot | 正常重启进系统 |
| fastboot reboot bootloader | 重启回到Fastboot |
| fastboot reboot recovery | 重启进入REC模式 |

---

## 🧩 完整刷机命令（super.img.000 ~ super.img.13）
```bash
# 核心分区刷写
fastboot flash boot boot.img
fastboot flash vendor_boot vendor_boot.img
fastboot flash dtbo dtbo.img
fastboot flash vbmeta vbmeta.img
fastboot flash recovery recovery.img

# 按顺序刷写全部Super分卷
fastboot flash super super.img.000
fastboot flash super super.img.001
fastboot flash super super.img.002
fastboot flash super super.img.003
fastboot flash super super.img.004
fastboot flash super super.img.005
fastboot flash super super.img.006
fastboot flash super super.img.007
fastboot flash super super.img.008
fastboot flash super super.img.009
fastboot flash super super.img.10
fastboot flash super super.img.11
fastboot flash super super.img.12
fastboot flash super super.img.13

# 清除数据 & 重启
fastboot erase userdata
fastboot reboot
