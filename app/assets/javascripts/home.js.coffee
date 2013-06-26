jQuery ->

  $headers = $('#home > section header')

  for i in [0...1]#$headers.length]
  # for header in $headers[0..0]
    $header = $($headers[i])
    $parent = $header.parent()

    bottom = $parent.offset().top + $parent.height()

    offset =
      top     : $header.parent().offset().top
      bottom  : bottom#$header.parent().offset().top + $header.parent().height()

    # $header.affix
    #   offset: offset