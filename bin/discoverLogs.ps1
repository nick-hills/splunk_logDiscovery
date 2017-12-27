$paths="C:\" 
$timestamp = get-date -Format FileDateTimeUniversal
$list = get-childitem $paths -Include *.log -Recurse -ErrorAction SilentlyContinue -File -Name
$os = (Get-WmiObject -class Win32_OperatingSystem).Caption

foreach ($item in $list)
{
    write-host $timestamp hostName=${env:computername} foundPath=`"${item}`" os=`"$os`"
} 
