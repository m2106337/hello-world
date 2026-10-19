# 

這是 WinUtil 的繁體中文介面來源版本。翻譯只改變顯示文字；套件識別碼、登錄檔路徑、調整鍵名、預設集與還原資料均維持原樣，因此不會改變 WinUtil 的系統操作行為。

## 已翻譯範圍

- 主導覽、搜尋、主題、字體縮放與設定選單
- 安裝頁的操作按鈕、分類與說明
- 系統調整頁的主要操作與常用調整項目
- Windows Update 設定檔與安全性提醒
- Windows 11 ISO 建立流程、USB 清除警告與狀態記錄
- AppX 管理頁與影響說明

其餘調整項會先保留英文。它們的功能、設定鍵與還原行為沒有改變；可在 `config/translations.json` 的 `zh-TW` 詞庫逐步補齊。

## 在 Windows 執行

1. 將整個資料夾解壓縮到本機，例如 `C:\Tools\winutil-zh-tw`。
2. 以系統管理員身分開啟 PowerShell。
3. 執行：

```powershell
Set-ExecutionPolicy -Scope Process Bypass
Set-Location C:\Tools\winutil-zh-tw
.\Compile.ps1 -Run
```

`Compile.ps1` 會從來源產生 `winutil.ps1` 後啟動介面。請勿手動修改產生的 `winutil.ps1`。

## Windows Terminal 百寶箱

等這個資料夾位於你的 Windows 電腦後，可將「百寶箱」profile 的 `commandline` 換成：

```json
"commandline": "pwsh.exe -NoExit -ExecutionPolicy Bypass -Command \"Set-Location 'C:\\Tools\\winutil-zh-tw'; .\\Compile.ps1 -Run\""
```

這只會從你的本機資料夾編譯並啟動繁中版本，不會改動官方 WinUtil。

## 授權與上游

本專案衍生自 [Chris Titus Tech 的 WinUtil](https://github.com/ChrisTitusTech/winutil)，並保留原始的 MIT 授權條款（見 `LICENSE`）。繁體中文介面翻譯遵循相同授權。
