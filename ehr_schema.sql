-- Table: patients
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender VARCHAR(10) NOT NULL,
  address VARCHAR(200) NOT NULL
);

-- Table: doctors
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  specialization VARCHAR(100) NOT NULL
);

-- Table: medicines
CREATE TABLE medicines (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT
);

-- Table: prescriptions
CREATE TABLE prescriptions (
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id),
  medicine_id INTEGER REFERENCES medicines(id),
  dosage VARCHAR(50),
  instructions TEXT,
  prescribed_date DATE NOT NULL
);
