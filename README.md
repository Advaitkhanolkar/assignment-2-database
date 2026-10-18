# Student Management Backend System

> **Full Stack Java Programming Lab Assignment – 2**  
> Developed using Spring Boot 3, Spring Security 6, JWT Authentication, Spring Data JPA, and MySQL 8.

---

## 1. Project Overview & Objectives

The **Student Management Backend System** is an enterprise-grade RESTful API service built for educational institutions to securely manage user authentication and complete student records lifecycle (CRUD). 

### Key Objectives:
- Implement a stateless REST architecture secured with **JSON Web Tokens (JWT)**.
- Secure sensitive student data through role-based access control and token verification.
- Provide comprehensive CRUD endpoints for managing student demographics and academic years.
- Persist structured relational records in **MySQL 8** with automated Hibernate ORM mapping.
- Ensure production-ready resilience with centralized global exception handling and input validation.

---

## 2. Technology Stack & Dependencies

| Layer / Component | Technology / Library | Version / Details |
| :--- | :--- | :--- |
| **Language** | Java (JDK) | OpenJDK 17 LTS |
| **Framework** | Spring Boot | 3.2.5 |
| **Build Tool** | Apache Maven | 3.9.6 |
| **Security** | Spring Security | 6.x (Stateless session) |
| **Authentication** | JJWT (io.jsonwebtoken) | 0.12.5 (HMAC-SHA256) |
| **ORM / Persistence** | Spring Data JPA / Hibernate | 6.4.x |
| **Database** | MySQL Server / XAMPP / H2 | MySQL 8.0+ / H2 In-Memory |
| **Validation** | Jakarta Bean Validation | Hibernate Validator 8.x |
| **Testing** | JUnit 5, Mockito, Spring Test (MockMvc) | Automated Test Suite (23 Tests) |
| **API Client** | Postman | Collection v2.1 |

---

## 3. Project Architecture & Folder Structure

The project follows a clean **Layered Architecture** adhering to separation of concerns:
