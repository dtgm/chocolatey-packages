function WaitForSuccess([ScriptBlock] $script, [int]$seconds = 10,
  [string]$description = 'operation to complete')
{
  $skip = $false
  Write-Host "Waiting up to $($seconds)s for $description..."
  $result = 0..($seconds * 2) |
    % {
      if ($skip) { return $true }
      $status = &$script
      if ($status -eq $true)
      {
        $skip = $true
        return $true
      }
      else
      {
        Start-Sleep -Milliseconds 500
      }
      return $false
    } |
    Select -Last 1

  return $result
}
