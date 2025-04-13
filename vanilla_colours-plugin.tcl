# Colours for vanilla

proc change_the_colours {mytoplevel} {
  set tkcanvas [tkcanvas_name $mytoplevel]
  $tkcanvas configure -background "#FFE45E"
  $tkcanvas configure -highlightcolor "#FFE45E" -highlightthickness 4
  if {$::editmode($mytoplevel) == 1} {
    # Reminder that window has been in editmode
    $tkcanvas configure -highlightcolor "#FF6392" -highlightthickness 4
  }
}

bind PatchWindow <<EditMode>> {+change_the_colours %W}
bind PatchWindow <<Loaded>> {+change_the_colours %W}

#		 $tkcanvas itemconfigure message -backlight green
#        $tkcanvas itemconfigure message -background yellow
#        $tkcanvas itemconfigure graph -fill black
#        $tkcanvas itemconfigure array -fill green
#        $tkcanvas itemconfigure array -activefill blue
#        $tkcanvas itemconfigure label -fill white
#        $tkcanvas itemconfigure msg -activefill white
#        $tkcanvas itemconfigure atom -activefill black
#        $tkcanvas itemconfigure text -fill white -font {Inconsolata 8}
#        $tkcanvas itemconfigure text -fill white -font {Consolas 8}
#        $tkcanvas itemconfigure cord -fill white
#        $tkcanvas itemconfigure {inlet || outlet} -outline black
#        $tkcanvas raise {inlet || outlet || cord}
        # store the background color, in case its been changed
#        $tkcanvas configure -background "#002b36"


#
#    obj - a regular, non-graphical object box
#    msg - a message box
#    cord - a cord, both signal and message
#    inlet - an inlet, both signal and message
#    outlet - an outlet, both signal and message
#    atom - a float or symbol atom box
#    text - a text comment
#    label - synonym for text
#    scalar - a graphical scalar element
#   graph - a graph for displaying an array
#    GOP - the Graph-on-Parent box that marks the visual area on a canvas
