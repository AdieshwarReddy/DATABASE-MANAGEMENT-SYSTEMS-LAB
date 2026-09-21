
# Experiment 4 - Relational Algebra

## Aim

To understand basic relational algebra operations.

Assume relation:

Employee(employee_id, employee_name, salary, city)

## Selection

Used to select rows satisfying a condition.

σ salary > 50000 (Employee)

## Projection

Used to select specific columns.

π employee_name, salary (Employee)

## Union

Combines tuples from two compatible relations.

R ∪ S

## Intersection

Returns tuples common to both relations.

R ∩ S

## Set Difference

Returns tuples present in R but not in S.

R − S

## Cartesian Product

Combines every tuple of one relation with every tuple of another relation.

R × S

## Join

Combines related tuples from multiple relations.

Employee ⨝ Department

## Conclusion

Relational algebra provides mathematical operations used to manipulate relational database data.
