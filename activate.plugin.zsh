# Utility command to activate local Python venv
# located at the same folder of the code project

function activate() {
  local current_folder=$(basename "$PWD")
  local venv_candidates=(".venv" "venv" ".env" ".hatch/${current_folder}")
  local venv
  local candidate

  for candidate in $venv_candidates; do
    if [[ -d  "$candidate" ]]; then
      venv=$candidate
    fi
  done

  venv="${venv}/bin/activate"

  if [[ -f "$venv" ]]; then
    source "$venv"
  else
    echo "venv not found"
  fi
}
