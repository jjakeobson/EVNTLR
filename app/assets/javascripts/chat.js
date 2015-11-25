$(function () {
    var pusher = new Pusher('0cdf7561a0fb9a4dcab5');
    var channel1 = pusher.subscribe('chat');
    pusher.connection.bind('connected', function () {
        var socket_id = pusher.connection.socket_id;
        $('#socket_id').val(socket_id);
    });

    channel1.bind('new_message', function (data) {
        // Code smell - Duplicated view
        // It's exactly app/views/chat_messages/_chat_message.html
        $('.messages').prepend('<li>' + data.name + ' says ' + data.message + '</li>');
    });
});
