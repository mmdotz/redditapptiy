$('#newPost').on('click', function () {
$.ajax({
  url: '/posts',
  method: 'POST',
  dataType: 'JSON',
  data: {
    post: {
      body: $('#post_body').val(),
    }
  },
  success: function (response) {
    $('#post_body').val('');
    $('.field').prepend('<p>Link posted!</p>');
  }
 });
});
