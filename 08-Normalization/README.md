
# Experiment 8 - Normalization

## Aim

To understand normalization using 1NF, 2NF, 3NF and BCNF.

## Unnormalized Table

StudentCourse

| StudentID | StudentName | Course | Faculty | FacultyPhone |
|---|---|---|---|---|

This table can contain redundant information.

## First Normal Form - 1NF

Rules:

- Each column should contain atomic values.
- No repeating groups should exist.

## Second Normal Form - 2NF

A table should:

- Be in 1NF
- Have no partial dependency.

## Third Normal Form - 3NF

A table should:

- Be in 2NF
- Have no transitive dependency.

## BCNF

For every functional dependency:

X → Y

X should be a candidate key.

## Normalized Tables

### Students

StudentID  
StudentName

### Courses

CourseID  
CourseName

### Faculty

FacultyID  
FacultyName  
FacultyPhone

### Enrollment

StudentID  
CourseID

### Teaching

FacultyID  
CourseID

## Benefits

- Reduced redundancy
- Better consistency
- Easier maintenance
- Reduced update anomalies

## Conclusion

Normalization organizes database tables efficiently and reduces unnecessary duplicate data.
