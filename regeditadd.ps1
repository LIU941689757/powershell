# 定义路径
$registryPath = "HKLM:\Software\LIU"

# 创建新项
New-Item -Path "HKLM:\Software" -Name "LIU"

# 设置值
Set-ItemProperty -Path $registryPath -Name "Version" -Value "1.0"
Set-ItemProperty -Path $registryPath -Name "Author" -Value "Liu"

# 读取值
$values = Get-ItemProperty -Path $registryPath
Write-Host "Version: $($values.Version)"
Write-Host "Author: $($values.Author)"

pause