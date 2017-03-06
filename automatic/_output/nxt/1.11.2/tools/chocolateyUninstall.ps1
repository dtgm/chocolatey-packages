$procName = "nxt"
$errorAction = "SilentlyContinue"
Stop-Process -Name $procName `
             -Force `
             -ErrorAction $errorAction