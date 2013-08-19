$ ()->
  aspectFit = ()->
    browserW = innerWidth
    browserH = innerHeight
    bodyStyle = $('body')
    if browserH < browserW
      if browserH * 2 < browserW
        bodyStyle.css
          width: browserH * 2
          height: browserH
      else
        bodyStyle.css
          width: browserW
          height: browserW / 2
    else
      if browserW * 2 < browserH
        bodyStyle.css
          width: browserW
          height: browserW * 2
      else
        bodyStyle.css
          width: browserH / 2
          height: browserH

  aspectFit()

  $(window).resize ()->
    aspectFit()