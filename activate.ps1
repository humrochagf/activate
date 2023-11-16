# Utility command to activate local Python venv
# located at the same folder of the code project

function activate
{
  $current_folder = Split-Path -Path (Get-Location ).Path -Leaf
  $venv_candidates = @('.venv', 'venv', '.env', ".hatch/${current_folder}")

  foreach ($candidate in $venv_candidates)
  {
    if (Test-Path -Path $candidate -PathType Container)
    {
      $venv = $candidate
    }
  }

  $venv = "${venv}/Scripts/Activate.ps1"

  if (Test-Path -Path $venv -PathType Leaf)
  {
    . $venv
  }
  else
  {
    Write-Output 'venv not found'
  }
}
