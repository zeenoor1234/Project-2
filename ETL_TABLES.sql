CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(15)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(25)
);

CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    email VARCHAR(50)
);

CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(50),
    description VARCHAR(100),
    goal FLOAT,
    pledged FLOAT,  
    outcome VARCHAR(12),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(5),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);