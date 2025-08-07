# DB Testing & Java SDET Practice

This repository contains database testing queries and Java programming assignments for SDET (Software Development Engineer in Test) practice.

## 📁 Repository Structure

```
DB_Testing/
├── Database Testing.pdf          # Database testing documentation
├── db_testing.sql               # SQL queries for database testing
├── studentdb.sql                # Student database schema/data
├── Java_SDET_Practice/
│   └── Java_Assignment.md       # Java programming assignments
└── README.md                    # This file
```

## 🗄️ Database Testing

### Overview
The `db_testing.sql` file contains 12 comprehensive SQL queries designed to test various database operations on a student management system.

### Database Schema
The queries work with the following main tables:
- `studentpersonal` - Student personal information (name, contact, blood group, etc.)
- `studentacademic` - Student academic records (department, fees, etc.)
- `teacherpersonal` - Teacher personal information
- `teacheracademic` - Teacher academic information (department, salary, designation)
- `departments` - Department information
- `subjects` - Subject details
- `courses` - Course enrollment data

### SQL Query Categories

#### **Basic Queries (10 marks)**
1. **Blood Group Filter** (5 marks) - Find students with O+ and A- blood groups
2. **Department-Subject Join** (5 marks) - Get department info for subject code "EE201"

#### **Intermediate Queries (24 marks)**
3. **Grouping & Aggregation** (8 marks) - Count students by blood group (minimum 2)
4. **Multiple Joins** (8 marks) - Students in CS101 with their subjects
5. **Fee Calculation** (8 marks) - Total semester fees for Computer Science department

#### **Advanced Queries (15+ marks)**
6. **Data Update** (7 marks) - Increase CS101 semester fees by 10%
7. **Cross Department Analysis** - Students and teachers in CS101
8. **City-based Matching** - Students and teachers from same city
9. **Subject Enrollment** - Students enrolled in "Algorithms"
10. **Conditional Updates** - Teacher promotions based on current designation
11. **Second Highest Salary** - Find teacher with second highest salary
12. **Complex Relationships** - Second highest paid teacher with their students

### Key SQL Concepts Demonstrated
- `JOIN` operations (INNER, LEFT, CROSS)
- `GROUP BY` and `HAVING` clauses
- Aggregate functions (`COUNT`, `SUM`)
- Subqueries and window functions
- `CASE` statements
- `UPDATE` operations with conditions
- Complex filtering with `IN` and comparison operators

## ☕ Java SDET Practice

The `Java_Assignment.md` contains 15 Java programming problems commonly asked in SDET interviews and assessments.

### Problem Categories

#### **Array Operations (Problems 1-6)**
1. **Max-Second Max Difference** - Find difference between largest and second largest numbers
2. **Prime Number Sum** - Calculate sum of prime numbers in array
3. **Unique Elements Sum** - Sum array elements after removing duplicates
4. **Missing Number** - Find missing number using mathematical formula
5. **Frequency Counter** - Count occurrences of each element
6. **Duplicate Finder** - Identify repetitive elements

#### **String Manipulation (Problems 7-8, 10-12)**
7. **Unique Characters** - Extract unique characters and count them
8. **String Permutations** - Generate all permutations using recursion
10. **Special Character Removal** - Remove non-alphabetic characters
11. **Vowel Removal** - Remove vowels from string
12. **Binary String Validation** - Check if string contains only 0s and 1s

#### **Practical Applications (Problems 9, 13-15)**
9. **Password Generator** - Create secure random passwords
13. **Discount Calculator** - Calculate 15% discount on purchases
14. **Currency Notes Counter** - Break amount into denomination counts
15. **Question Paper Optimizer** - Find combinations of 5 and 10 mark questions for 100 marks

### Key Java Concepts Demonstrated
- Array manipulation and traversal
- Nested loops and conditional logic
- Mathematical calculations and formulas
- String processing without built-in methods
- Random number generation
- Recursive algorithms (permutations)
- Business logic implementation

## 🚀 Getting Started

### Prerequisites
- **Database**: MySQL/PostgreSQL/SQL Server for running SQL queries
- **Java**: JDK 8+ for running Java programs
- **IDE**: VS Code, IntelliJ IDEA, or Eclipse (recommended)

### Running SQL Queries
1. Set up your database with the student management schema
2. Load sample data using `studentdb.sql`
3. Execute queries from `db_testing.sql` individually or as a script

### Running Java Programs
```bash
# Compile any Java file
javac ClassName.java

# Run the compiled program
java ClassName
```

Example:
```bash
javac MaxDiff.java
java MaxDiff
```

## 📋 Testing Approach

### Database Testing Strategy
- **Data Validation**: Verify correct data retrieval and filtering
- **Join Operations**: Test relationships between tables
- **Aggregation Testing**: Validate calculations and grouping
- **Update Operations**: Ensure data modifications work correctly
- **Performance Testing**: Check query execution time for large datasets

### Java Code Testing
- **Unit Testing**: Test individual methods with various inputs
- **Boundary Testing**: Test with edge cases (empty arrays, single elements)
- **Performance Testing**: Measure execution time for large inputs
- **Input Validation**: Handle invalid or unexpected inputs

## 🎯 Learning Objectives

This repository helps develop:
- **SQL Proficiency**: Complex query writing and database operations
- **Java Programming**: Algorithm implementation and problem-solving
- **Testing Mindset**: Writing testable code and identifying edge cases
- **SDET Skills**: Combining programming with testing methodologies

## 📝 Usage Notes

- All Java programs include sample inputs and expected outputs in comments
- SQL queries are well-documented with their purpose and marks allocation
- Code follows clean coding principles with meaningful variable names
- Solutions demonstrate multiple approaches to common problems

## 🤝 Contributing

Feel free to:
- Add more test cases for existing problems
- Optimize existing solutions
- Add new SQL queries for different scenarios
- Include additional Java programming challenges

## 📄 License

This project is for educational purposes and practice in SDET skills development.

---
**Happy Testing! 🧪**
