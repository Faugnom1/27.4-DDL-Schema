-- Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Specialization VARCHAR(255),
    ContactInformation VARCHAR(255)
);

-- Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10)
);

-- Visits Table
CREATE TABLE Visits (
    VisitID INT PRIMARY KEY,
    DoctorID INT,
    PatientID INT,
    VisitDateTime DATETIME,
    Diagnosis TEXT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Diagnoses Table
CREATE TABLE Diagnoses (
    DiagnosisID INT PRIMARY KEY,
    VisitID INT,
    Disease VARCHAR(255),
    Description TEXT,
    TreatmentPrescribed TEXT,
    FOREIGN KEY (VisitID) REFERENCES Visits(VisitID)
);
