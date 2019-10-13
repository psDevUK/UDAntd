
if ($Null -eq (Get-PackageProvider -Name NuGet -ErrorAction SilentlyContinue)) {
    Install-PackageProvider -Name NuGet -Force -Scope CurrentUser;
}

if ($Null -eq (Get-InstalledModule -Name PowerShellGet -MinimumVersion 2.0.0 -ErrorAction SilentlyContinue)) {
    Install-Module PowerShellGet -MinimumVersion 2.0.0 -AllowClobber -Scope CurrentUser -Force;
    Remove-Module -Name PowerShellGet -ErrorAction SilentlyContinue;
    Import-Module -Name PowerShellGet -MinimumVersion 2.0.0;
}

if ($Null -eq (Get-InstalledModule -Name PowerShellForGitHub -ErrorAction SilentlyContinue)) {
    Install-Module PowerShellForGitHub -Scope CurrentUser -Force;
    Import-Module PowerShellForGitHub -Force
}

if ($Null -eq (Get-InstalledModule -Name UniversalDashboard.Helmet -ErrorAction SilentlyContinue)) {
    Install-Module UniversalDashboard.Helmet -Scope CurrentUser -Force;
    Import-Module UniversalDashboard.Helmet -Force
}

if ($Null -eq (Get-InstalledModule -Name UniversalDashboard.Markdown -ErrorAction SilentlyContinue)) {
    Install-Module UniversalDashboard.Markdown -Scope CurrentUser -Force;
    Import-Module UniversalDashboard.Markdown -Force
}

if ($Null -eq (Get-InstalledModule -Name UniversalDashboard.SyntaxHighlighter -ErrorAction SilentlyContinue)) {
    Install-Module UniversalDashboard.SyntaxHighlighter -Scope CurrentUser -Force;
    Import-Module UniversalDashboard.SyntaxHighlighter -Force
}

if ($Null -eq (Get-InstalledModule -Name PSDocs -ErrorAction SilentlyContinue)) {
    Install-Module -Name PSDocs -Scope CurrentUser -Force;
    Import-Module PSDocs -Force
}
