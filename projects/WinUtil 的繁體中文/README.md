# WinUtil 的繁體中文

![WinUtil 繁體中文介面](docs/src/assets/branding/title-screen.png)

這是 [Chris Titus Tech WinUtil](https://github.com/ChrisTitusTech/winutil) 的繁體中文介面版本。翻譯只改變顯示文字；套件識別碼、登錄檔路徑、調整鍵名、預設集與還原資料均維持原樣，不會改變 WinUtil 的系統操作行為。

## 已完成的繁中化

- 主導覽、搜尋、主題、字體縮放與設定選單
- 安裝頁的操作按鈕、分類、工具提示與已選項目
- 安裝分類標題：瀏覽器、通訊、開發、文件、遊戲等
- 系統調整頁的主要操作、功能、修復與傳統 Windows 面板
- Windows Update 設定檔與安全性提醒
- Windows 11 ISO 建立流程、USB 清除警告與狀態記錄
- AppX 管理頁與影響說明

## 在 Windows 執行

1. 將此專案下載或複製到本機，例如 `C:\Tools\winutil-zh-tw`。
2. 以系統管理員身分開啟 PowerShell。
3. 執行：

```powershell
Set-ExecutionPolicy -Scope Process Bypass
Set-Location C:\Tools\winutil-zh-tw
.\Compile.ps1 -Run
```

`Compile.ps1` 會從來源產生 `winutil.ps1` 後啟動介面。請勿手動修改產生的 `winutil.ps1`。

## Windows Terminal 百寶箱

資料夾位於 Windows 電腦後，可將「百寶箱」profile 的 `commandline` 設為：

```json
"commandline": "pwsh.exe -NoExit -ExecutionPolicy Bypass -Command \"Set-Location 'C:\\Tools\\winutil-zh-tw'; .\\Compile.ps1 -Run\""
```

## 授權與上游

本專案衍生自 [Chris Titus Tech 的 WinUtil](https://github.com/ChrisTitusTech/winutil)，並保留原始的 MIT 授權條款（見 [LICENSE](LICENSE)）。繁體中文介面翻譯遵循相同授權。
