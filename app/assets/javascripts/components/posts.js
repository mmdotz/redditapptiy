$('#newPost').on('click', function () {
$.ajax({
  url: '/posts',
  method: 'POST',
  dataType: 'JSON',
  data: {
    post: {
      url: $('#post_url').val(),
    }
  },
  success: function (response) {
    $('#post_url').val('');
    $('.field').prepend('<p>Link posted!</p>');
  }
 });
});
