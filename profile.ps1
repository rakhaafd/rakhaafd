oh-my-posh init pwsh --config "D:\Scoop\apps\oh-my-posh\28.0.0\themes\spaceship.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons
Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Enables history-based auto-suggestions
Set-PSReadLineOption -PredictionSource History

# Accepts the current inline suggestion using the Right Arrow key
Set-PSReadlineKeyHandler -Key RightArrow -Function ForwardChar
