# geometry_status - show a symbol with error/success and root/non-root information

geometry_status() {
  : ${GEOMETRY_STATUS_COLOR:=default}
  : ${GEOMETRY_STATUS_COLOR_ERROR:=red}
  : ${GEOMETRY_STATUS_SYMBOL:=🚀}
  : ${GEOMETRY_STATUS_SYMBOL_ERROR:=💩}
  : ${GEOMETRY_STATUS_SYMBOL_ROOT:=▼}
  : ${GEOMETRY_STATUS_SYMBOL_ROOT_ERROR:=▽}

  ( ${GEOMETRY_STATUS_SYMBOL_COLOR_HASH:=false} ) && {
    local colors=({1..9})

    (($(echotc Co) == 256)) && colors+=({17..230})

    if (( ${+GEOMETRY_STATUS_SYMBOL_COLOR_HASH_COLORS} )); then
      colors=(${GEOMETRY_STATUS_SYMBOL_COLOR_HASH_COLORS})
    fi

    local sum=0; for c in ${(s::)^HOST}; do ((sum += $(print -f '%d' "'$c"))); done

    local index=$(($sum % ${#colors}))

    [[ "$index" -eq 0 ]] && index=1

    GEOMETRY_STATUS_COLOR=${colors[${index}]}
  }

  local color=GEOMETRY_STATUS_COLOR symbol=GEOMETRY_STATUS_SYMBOL
  [[ $UID = 0 || $EUID = 0 ]] && symbol+=_ROOT
  (( $GEOMETRY_LAST_STATUS )) && symbol+=_ERROR && color+=_ERROR

  ansi ${(P)color} ${(P)symbol}
}
