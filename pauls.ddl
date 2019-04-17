drop table if exists cartItem;

drop table if exists cart;

drop table if exists item;

drop table if exists user;





create table user (

	userId binary(16) not null,

	userEmilAddress varchar(128),

	userPassword varchar(128),

	primary key(userId)

);



create table cart (

	cartId binary(16) not null,

	cartAmount binary(16) not null,

	cartUserId binary(16) not null,

	primary key(cartId),

	foreign key (cartUserId) references user(userId)

);



create table cartItem (

	cartItemAmount binary(16) not null,

	cartItemCartId binary(16) not null,

	cartItemItemId binary (16) not null,

	foreign key (cartItemCartId) references cart(cartId),

	foreign key (cartItemItemId) references item(itemId)



);

create table item (

	itemId binary(16) not null,

	itemAmount binary(16),

	itemCost binary(16),

	primary key (itemId)

);