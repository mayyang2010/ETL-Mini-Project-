crowdfunding_db_schema.sql



CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY NOT NULL,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(50)
);


CREATE TABLE campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC(10,2) NOT NULL,      
    pledged NUMERIC(10,2) NOT NULL,    
    outcome VARCHAR(50) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launch_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
	category_sub_category VARCHAR(50) NOT NULL,
	category VARCHAR(50) NOT NULL,
	subcategory VARCHAR(50) NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

