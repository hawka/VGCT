jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $ ->
    $display = $("#about-text")
    $display.toggle (->
      $display.text "ABOUT"
      ), ->
      $display.text "The VGCT allows gamers to track their characters across multiple games. Create a profile to begin."
