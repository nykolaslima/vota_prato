$('.remove_comentario').bind('ajax:success', -> $(this).parent().remove());

$('form').bind('ajax:complete', (xhr, result) -> 
	$('#comentarios').replaceWith(result.responseText)
	$('textarea').val(''));
