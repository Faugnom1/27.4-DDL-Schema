-- Regions Table
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(255)
);

-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255),
    Email VARCHAR(255),
    PreferredRegion INT,
    FOREIGN KEY (PreferredRegion) REFERENCES Regions(RegionID)
);

-- Posts Table
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    Title VARCHAR(255),
    Text TEXT,
    UserID INT,
    Location VARCHAR(255),
    Region INT,
    PostDateTime DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (Region) REFERENCES Regions(RegionID)
);

-- Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

-- PostCategories Table
CREATE TABLE PostCategories (
    PostCategoryID INT PRIMARY KEY,
    PostID INT,
    CategoryID INT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
