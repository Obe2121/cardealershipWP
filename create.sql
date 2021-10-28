CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    year_made VARCHAR(15),
    vin VARCHAR(255),
    amount integer,
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(255),
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);
CREATE TABLE service(
    service_id SERIAL PRIMARY KEY,
    service_date DATE NOT NULL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    parts_id SERIAL NULL,
    car_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id)
);



