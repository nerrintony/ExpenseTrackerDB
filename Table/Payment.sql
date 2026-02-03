CREATE TABLE PaymentMethods (
    Id INT PRIMARY KEY Identity(1,1),
    UserID INT NOT NULL,
    MethodName VARCHAR(50) NOT NULL,

    FOREIGN KEY (UserID) REFERENCES [User](id)
);