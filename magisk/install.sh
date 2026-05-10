SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "     Infinity Tweaks X 3.x     "
  ui_print "    By Cyberdev | Ver: v2.1    "
  ui_print "*******************************"
}
on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH/system 0 0 0755 0644
  chmod -R 755 $MODPATH
}

