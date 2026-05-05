
---

## 二、flash_eu_rom.bat 「最终上传版」
```bat
@echo off
chcp 65001 >nul
title Xiaomi 10S HyperOS To EU Flash Tool
cls

echo ======================================================
echo     Xiaomi 10S (thyme) 国行澎湃OS 刷欧版稳定版
echo     适配 super.img.000 ~ super.img.13 全分卷
echo ======================================================
echo 警告：刷机将清空全部数据，请提前备份资料！
echo ======================================================
pause
cls

echo [1/17] 刷入 boot.img
fastboot flash boot boot.img

echo [2/17] 刷入 vendor_boot.img
fastboot flash vendor_boot vendor_boot.img

echo [3/17] 刷入 dtbo.img
fastboot flash dtbo dtbo.img

echo [4/17] 刷入 vbmeta.img
fastboot flash vbmeta vbmeta.img

echo [5/17] 刷入 recovery.img
fastboot flash recovery recovery.img

echo ======================================================
echo 开始刷写Super超长分卷，请勿拔线、断电！
echo ======================================================
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

echo.
echo [16/17] 清除用户数据分区
fastboot erase userdata

echo.
echo [17/17] 刷机完成，正在重启设备
fastboot reboot
echo 首次开机需要3-10分钟，请耐心等待...
echo.
pause