#==================================================================================================
# GitHub Profile
#==================================================================================================

Push-Location (Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

Import-Module \Git\posh-git\posh-git

function global:prompt
{
    $realLASTEXITCODE = $LASTEXITCODE

    # Reset color, which can be messed up by Enable-GitColors
    $Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor

    Write-Host($pwd.ProviderPath) -nonewline

    Write-VcsStatus

    $global:LASTEXITCODE = $realLASTEXITCODE
    return "> "
}

Enable-GitColors

Pop-Location

Start-SshAgent -Quiet

#==================================================================================================
# [Eof]
#==================================================================================================
