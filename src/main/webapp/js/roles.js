$(document).ready(function() {

$('.btn-xoa').click(function() {

   var id = $(this).attr("id-role")
   var row =$(this).closest('tr')

       $.ajax({
             method: "POST",
             url: "http://localhost:8080/CRM/api/roles",
             data: { id: id }
           })
             .done(function( data ) {

                  if(data.isSuccess) {
                       row.remove();
                  }else {
                        alert('XOa that bai')

                  }

             });
  })

  $('#btn-add-role').click(function(e) {
      e.preventDefault()
     var name = $("#name").val()
     var desc = $("#desc").val()
         $.ajax({
               method: "POST",
               url: "http://localhost:8080/CRM/api/roles/add",
               data: { name: name , desc: desc}
         }).done(function( data ) {
                    alert("THEM THANH CONG")
           });
    })

})