CREATE TABLE ProductDetail_1NF (
    OrderId INT,
    CustomerName VARCHAR(100),
    product VARCHAR(50),
);

INSERT INTO ProductDetail_1NF (OrderId, CustomerName, product)  
values
(101, 'John Doe, 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(104, 'Emily Clark', 'Phone');

--#Achieving 2NF (Second Normal Form)
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
CREATE TABLE OrderItems (
    OrderId INT,
    product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderId, product),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);

#Populating the Orders table
INSERT INTO Orders (OrderId, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(104, 'Emily Clark');

#Populating the OrderItems table
INSERT INTO OrderItems (OrderId, product, Quantity)
VALUES
(101, 'Laptop', 1),
(101, 'Mouse', 2),
(102, 'Tablet', 1),
(102, 'Keyboard', 1),
(102, 'Mouse', 1),
(104, 'Phone', 1);
