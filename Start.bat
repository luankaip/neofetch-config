:: 配置环境变量
$env:SCOOP='D:\Scoop\Scoop'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
$env:SCOOP_GLOBAL='D:\Scoop\ScoopApps'
:: 使用管理员运行
[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')

:: 安装scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/lukesampson/scoop/master/bin/install.ps1')

:: 安装neofetch
scoop install neofetch

:: 使用neofetch
neofetch