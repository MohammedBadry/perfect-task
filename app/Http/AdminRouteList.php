<?php
/*
* To implement in admingroups permissions
* to remove CRUD from Validation remove route name
* CRUD Role permission (create,read,update,delete)
* [it v 1.6.39]
*/
return [
	"admingroups"=>["create","read","update","delete"],
	"admins"=>["create","read","update","delete"],
	"settings"=>["read","update"],
	"cars"=>["create","read","update","delete"],
	"categories"=>["create","read","update","delete"],
	"banners"=>["create","read","update","delete"],
	"vendors"=>["create","read","update","delete"],
	"users"=>["create","read","update","delete"],
	"deliveries"=>["create","read","update","delete"],
	"products"=>["create","read","update","delete"],
	"orders"=>["read","update","delete"],
	"orderstatuses"=>["create","read","update","delete"],
	"withdrawalrequests"=>["create","read","update","delete"],

];
