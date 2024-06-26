-- CATEGORY TABLE--
drop table category
create table category(
	category_id varchar(10) primary key not null,
	category varchar(25)
)

-- subcategory table--

create table subcategory(
	subcategory_id varchar(15) primary key not null,
	subcategory varchar(25) 
)

-- create table campaign--


create table campaign(
cf_id INT not null,
contact_id INT not null,
company_name VARCHAR not null,
description VARCHAR not null,
goal FLOAT not null,
pledged FLOAT not null,
outcome VARCHAR not null,
backers_count INT not null,
country VARCHAR not null,
currency VARCHAR not null,
launched_date DATE not null,
end_date DATE not null,
category_id VARCHAR not null,
subcategory_id VARCHAR not null,
primary key(cf_id),
foreign key(contact_id) references contacts(contact_id),
foreign key(category_id) references category(category_id),
foreign key(subcategory_id) references subcategory(subcategory_id));

-- create table contacts--

create table contacts(
contact_id INT not null,
first_name VARCHAR not null,
last_name VARCHAR not null,
email VARCHAR not null,
primary key (contact_id));



-- creating some statements--
  select * from category 

-- select subcategory--

select * from subcategory 

-- select campaign--

select *from campaign


-- select contacts--

select *from contacts

-- extrat bonus--
select campaign.cf_id, campaign.contact_id, campaign.goal, campaign.company_name,campaign.outcome,contacts.contact_id, contacts.first_name
from campaign
inner join contacts on 
campaign.contact_id = contacts.contact_id


