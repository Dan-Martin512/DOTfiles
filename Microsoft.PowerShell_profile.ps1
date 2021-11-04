cls
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Import-Module PSReadLine


function rdp ($IP){
mstsc -v:$IP
}

function vi ($File){
$File = $File -replace “\\”, “/” -replace “ “, “\ “
bash -c “vi $File”
}

function vim ($File){
$File = $File -replace “\\”, “/” -replace “ “, “\ “
bash -c “vi $File”
}


Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PoshPrompt -Theme powerlevel10k_classic