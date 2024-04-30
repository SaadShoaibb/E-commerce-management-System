 $(document).ready(function () {
   $("#owl-demo").owlCarousel({
    autoPlay: 3000,
    navigation: false,
    slideSpeed: 300,
    paginationSpeed: 400,
    singleItem: true,
    items: 1
   });

   $("#attach-1").click(function () {
       $(".optional-1").slideToggle();
   });

   $(".attach-2").click(function () {
       $(".optional-2").slideToggle();
   });

   $(".attach-3").click(function () {
       $(".optional-3").slideToggle();
   });
    
   $('input[type=file]').change(function () {
       var val = $(this).val().toLowerCase();
       var regex = new RegExp("(.*?)\.(docx|png|doc|jpeg|jpg|zip|rar|pdf|xlsx|bmp|ppt|pptx|gif|txt|xls)$");
       if (!(regex.test(val))) {
           $(this).val('');
           alert('Please select correct file format \n Acceptable formats are docx ,png ,doc ,pdf , xlsx, bmp , ppt , pptx, gif, txt, xls, zip, rar, jpeg, jpg ');

       }
       if (this.files[0].size > 1000000) {
           //reset file upload control
           $(this).val('');
           //show an alert to the user
           alert('Allowed file size exceeded 1MB');

       }

   });
});

 $(document).on('click', '.browse', function () {
     var file = $(this).parent().parent().parent().find('.file');
     file.trigger('click');
 });
 $(document).on('change', '.file', function () {
     $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
 });

 $(document).ready(function () {
     $('.box').hide(); //hide
     $('.other').hide(); //set default class to be shown here, or remove to hide all

 $('.trees').change(function () { //on change do stuff
     $('.box').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });

     $('.sos').hide(); //hide
     $('.trop').hide(); //set default class to be shown here, or remove to hide all

 $('.selections').change(function () { //on change do stuff
     $('.sos').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });

 $('.parak').hide(); //hide
 $('.poocho').hide(); //set default class to be shown here, or remove to hide all

 $('.seection').change(function () { //on change do stuff
     $('.parak').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });


 $('.paro').hide(); //hide
 $('.Online-Tuition-Assistance').hide(); //set default class to be shown here, or remove to hide all

 $('.ection').change(function () { //on change do stuff
     $('.paro').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });

 $('.cvs').hide(); //hide
 $('.Resume-Services').hide(); //set default class to be shown here, or remove to hide all

 $('.ect').change(function () { //on change do stuff
     $('.cvs').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });


 $('.acad').hide(); //hide
 $('.academic-services').hide(); //set default class to be shown here, or remove to hide all

 $('.addm').hide(); //hide
 $('.Admission-Advisory-Service').hide(); //set default class to be shown here, or remove to hide all

 $('.strees').change(function () { //on change do stuff
     $('.acad').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });

 $('.traj').change(function () { //on change do stuff
     $('.addm').hide(); //hide all with .box class
     $('.' + $(this).val()).show(); //show selected option's respective element
 });

 });