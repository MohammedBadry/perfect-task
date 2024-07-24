<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body>

    <div class="email-content" style="background-color: #5E8C70;
                                      height: auto;
                                      max-width: 700px;
                                      margin: auto;
                                      border-radius: 15px;
                                      padding: 35px 16px;
                                      direction: rtl;
                                      text-align: center; ">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tajawal">

    <div class="email-logo" style="margin:auto;
                                   margin-bottom: 40px;
                                   max-height: 120px;
                                   max-width: 120px;">

         <a href="https://3zapp.com/" target="_blank">

              <!--img src="https://3zapp.com/" style="display: block;
                                 margin: auto;
                                 text-align: center;
                                 max-width: 100%;
                                 height: auto;"-->
        </a>
    </div>



    <h2 class="email-details-title" style="font-size: 22px;
                                           color: #fff;
                                           margin-bottom: 35px;
                                           margin-top: 0;
                                           text-align: center">
            طلب استفسار جديد
        </h2>

   <style>

        .details-value a,
         a.details-value{

            color: #fff !important;
        }

          .email-details{


              justify-content: center;
          }

    </style>


   <div class="email-details" style="display: block;
                                       margin-bottom: 12px;
                                       text-align: center;
                                       justify-content: center;
                                       flex-wrap: wrap;
                                       color: #fff;
                                       font-size: 16px">


         <span class="details-title" style="display: inline-block;padding-bottom: 12px; margin-left: 5px">
            الاسم :
         </span>
         <span class="details-value" style="display: inline-block;padding-bottom: 12px;">

            {{$user->name}}

         </span>


     </div>



     <div class="email-details" style="display: block;
                                       margin-bottom: 12px;
                                       text-align: center;
                                       justify-content: center;
                                       flex-wrap: wrap;
                                       color: #fff;
                                       font-size: 16px">


         <span class="details-title" style="display: inline-block;padding-bottom: 12px; margin-left: 5px">
            رقم التواصل :
         </span>
         <span class="details-value" style="display: inline-block;padding-bottom: 12px;">

            {{$user->mobile}}

         </span>


     </div>

     <div class="email-details" style="display: block;
                                       margin-bottom: 12px;
                                       text-align: center;
                                       justify-content: center;
                                       flex-wrap: wrap;
                                       color: #fff;
                                       font-size: 16px">


         <span class="details-title" style="display: inline-block;padding-bottom: 12px; margin-left: 5px">
            البريد الإلكتروني :
         </span>
         <a class="details-value" style="display: inline-block;padding-bottom: 12px;direction: ltr;color: #fff;">

            {{$user->email}}

         </a>


     </div>

     <div class="email-details" style="display: block;
                                       margin-bottom: 12px;
                                       text-align: center;
                                       justify-content: center;
                                       flex-wrap: wrap;
                                       color: #fff;
                                       font-size: 16px">


         <span class="details-title" style="display: inline-block;padding-bottom: 12px; margin-left: 5px">
            التفاصيل :
         </span>
         <span class="details-value" style="display: inline-block;padding-bottom: 12px;">

            {{$request->message}}

         </span>


     </div>


    <h3 class="email-details-title-note" style="font-size: 16px;
                                           color: #fff;
                                           margin-bottom: 0;
                                           margin-top: 0;
                                           text-align: center;
                                            font-weight: 100">

        شكرا لتواصلك معنا


    </h3>

    </div>




</body>

</html>
