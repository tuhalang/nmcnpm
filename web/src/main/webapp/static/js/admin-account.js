/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("#form-change-password").submit(function (event) {

    /* stop form from submitting normally */
    event.preventDefault();

    /* get the action attribute from the <form action=""> element */
    var $form = $(this),
            url = $form.attr('action');

    /* Send the data using post with element id name and name2*/
    $.ajax({
        url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/admin/api/account',
        contentType: 'application/text;charset=utf-8',
        dataType: 'text',
        data: {
            data: btoa("current="+$('#current-pass').val()+"&new="+$('#new-pass').val()+"&confirm="+$('#confirm-pass').val())
        },
        type: 'POST',
        success: function (response) {
            alert(response)
        },
        error: function (x, e) {
            alert(e)
        }
    });

});
