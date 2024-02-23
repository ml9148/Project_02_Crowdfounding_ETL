-- Category Table
CREATE TABLE Category (
    category_id VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Subcategory Table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

-- Contacts Table
CREATE TABLE Contacts (
    contact_id INTEGER PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

-- Campaign Table
CREATE TABLE Campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER,
    company_name VARCHAR(255) NOT NULL,
    description TEXT,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(50),
    currency VARCHAR(50),
    launch_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(255),
    subcategory_id VARCHAR(255),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
SELECT * FROM Campaign;
