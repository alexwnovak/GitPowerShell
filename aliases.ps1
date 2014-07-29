#==================================================================================================
# Functions
#==================================================================================================

function Git-AddAll              { git add -A }
function Git-Branch              { git branch }
function Git-Checkout            { git checkout $args }
function Git-CheckoutPartial     { git checkout -p -- $args }
function Git-CommitAll           { git add -A
                                   git commit -m $args }
function Git-Diff                { git diff }
function Git-DiffStaged          { git diff --staged }
function Git-DiffTool            { git difftool }
function Git-Fetch               { git fetch }
function Get-FetchPrune          { git fetch --prune }
function Git-GetStatus           { git status }
function Git-Log                 { git log --decorate --graph --oneline }
function Git-LogAll              { git log --all --decorate --graph --oneline }
function Git-NewBranch           { git checkout -b $args }
function Git-Pull                { git pull }
function Git-PushOriginHead      { git push origin HEAD }
function Git-PushWithForce       { git push -f origin HEAD }
function Git-PushWithUpstream    { git push -u origin HEAD }
function Git-RebaseAbort         { git rebase --abort }
function Git-RebaseContinue      { git rebase --continue } 
function Git-RebaseInteractive   { git rebase -i master }
function Git-ResetHard           { git reset --hard }
function Git-Show                { git show $args }

#==================================================================================================
# Aliases
#==================================================================================================

Set-Alias gaa Git-AddAll
Set-Alias gb Git-Branch
Set-Alias gbr Git-NewBranch
Set-Alias gca Git-CommitAll
Set-Alias gco Git-Checkout
Set-Alias gcp Git-CheckoutPartial
Set-Alias gdf Git-Diff
Set-Alias gds Git-DiffStaged
Set-Alias gdt Git-DiffTool
Set-Alias gf Git-Fetch
Set-Alias gfp Get-FetchPrune
Set-Alias glg Git-Log
Set-Alias glo Git-LogAll
Set-Alias gri Git-RebaseInteractive
Set-Alias gpu Git-Pull
Set-Alias gra Git-RebaseAbort
Set-Alias grc Git-RebaseContinue
Set-Alias grh Git-ResetHard
Set-Alias gs Git-GetStatus
Set-Alias gsh Git-Show
Set-Alias push Git-PushOriginHead
Set-Alias pushf Git-PushWithForce
Set-Alias pushu Git-PushWithUpstream

#==================================================================================================
# [Eof]
#==================================================================================================
