if [[ "$SPIN" = 1 ]]
then
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    cartridge insert ryancbahan/enable-sp-and-balance-beta-flag
    . /cartridges/enable-sp-and-balance-beta-flag/setup.sh 1
  fi
fi
