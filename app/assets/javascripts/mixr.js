$(document).ready(document_ready);

function document_ready()
{
  show_or_hide_login_register_links();
}

function show_or_hide_login_register_links()
{
  $('#form').empty();

  if($('.username').length)
    $('#anonymous').hide();
  else
    $('#anonymous').show();
}


function cancel_login_form()
{
  $('#form').empty();
  $('#anonymous').show();
  $('#cocktail_btn').show();
}

function cancel_form()
{
  $('#form').empty();
  $('#login_btn').show();
  $('#reg_btn').show();
  $('#cocktail_btn').show();
}

function hide_cocktails()
{
  $('#user').hide();
  $('#anonymous').show();
}
