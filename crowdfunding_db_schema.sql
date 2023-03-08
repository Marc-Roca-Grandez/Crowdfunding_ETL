DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(15) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(30)NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(10) NOT NULL PRIMARY KEY,
    category VARCHAR(30)NOT NULL
);

CREATE TABLE contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30)NOT NULL,
	last_name VARCHAR(30) NOT NULL,
    email VARCHAR(100)NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
	company_name VARCHAR(150), 
	description VARCHAR(150),
	goal INT,
	pledged INT,
	outcome VARCHAR(50),
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	staff_pick VARCHAR(50),
	spotlight VARCHAR(50),
	category_and_subcategory VARCHAR(100),
	category VARCHAR(30),
	subcategory VARCHAR(30),
	category_id VARCHAR(10),
	subcategory_id VARCHAR(15),
	
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);