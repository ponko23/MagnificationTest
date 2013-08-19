$ ()->
  $('#checkButton').click ()->
    chkItem = $('.checkList:checked')
    ItemNum = chkItem.length
    msgTxt = []
    msgTxt.push 'チェック：',ItemNum , '<br>'
    for i in chkItem
      msgTxt.push i.value
    
    msgTxt.push '猫' if ItemNum is 12
    $('#message').html msgTxt.join ''