$rootFolder = Split-Path -Path $PSScriptRoot -Parent
$envFolder = Join-Path -Path $rootFolder -ChildPath 'Environments'
$templateFolder = Join-Path -Path $rootFolder -ChildPath "Templates\EnvironmentTemplate"

$envName = Read-Host -Prompt 'What is the name of the new environment (letters and numbers only)?'

if ("$envName" -notmatch "^\w+$")
{
    Write-Host "Provided name '$envName' contains invalid characters. Only letters and numbers are allowed." -ForegroundColor Red
    return
}

$envs = Get-ChildItem -Path $envFolder -Directory
$counter = 1
foreach ($env in $envs)
{
    Write-Host "$counter. $($env.BaseName)"
    $counter++
}

$targetEnvType = 0
$tmpEnvType = Read-Host -Prompt 'What is the environment type of the new environment?'
if ([int]::TryParse($tmpEnvType, [ref]$targetEnvType))
{
    if ($targetEnvType -notin 1..$envs.Count)
    {
        Write-Host "Provided number '$targetEnvType' is not valid. Valid numbers are 1 to $($envs.Count)." -ForegroundColor Red
        return
    }
}
else
{
    Write-Host "Provided answer '$tmpEnvType' is not valid. It is not a number." -ForegroundColor Red
    return
}

$envTypeFolder = $envs[$targetEnvType-1]
Write-Host "Creating new environment named '$envName' in folder '$($envTypeFolder.BaseName)'"
$targetFolder = Join-Path -Path $envTypeFolder.FullName -ChildPath $envName

if ((Test-Path -Path $targetFolder) -eq $false)
{
    $null = New-Item -Path $targetFolder -ItemType Directory -Force
}

foreach ($file in (Get-ChildItem -Path $templateFolder -File))
{
    Copy-Item -Path $file.FullName -Destination (Join-Path -Path $targetFolder -ChildPath ($file.Name -replace "EnvironmentTemplate",$envName)) -Force
}
