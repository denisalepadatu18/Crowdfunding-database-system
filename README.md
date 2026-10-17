# Crowdfunding Platform - Relational Database Architecture (Oracle SQL & NoSQL)

A comprehensive database design and implementation for a digital crowdfunding platform. The system manages end-to-end fundraising workflows, including user and founder accounts, charitable campaigns, individual donations, corporate sponsorships, progress updates, and audited fund withdrawals.

The project covers full relational database lifecycle management: conceptual modeling (ERD), normalization up to 3NF/BCNF, complex analytical querying, query optimization using explain plans, PL/SQL triggers, and a practical migration study to NoSQL (MongoDB).

---

## Data Architecture & Modeling

- **Relational Design:** 12 normalized entities enforcing entity and referential integrity constraints.
- **Many-to-Many Implementations:** Associative tables resolving multi-entity links (DONATIE, SPONSORIZARE, PROIECT_TAGS).
- **Integrity & Business Rules:** Surrogate keys generated via sequences (seq_pk_crowd), foreign key constraints, CHECK conditions, and attribute uniqueness.
- **PL/SQL Automation:** Event-driven database triggers (AFTER INSERT ON DONATIE) to automate milestone tracking and project status updates.

---

## Core Entities

1. **UTILIZATOR & FONDATOR:** User identity management and extended founder permissions.
2. **DETALII_PLATA:** Secure payment details and IBAN mapping per account.
3. **PROIECT, CATEGORIE & TAG:** Campaign catalog structured by causes (Healthcare, Education, Environment) with searchable multi-tags.
4. **DONATIE & SPONSORIZARE:** Individual micro-donations and corporate sponsorship contracts.
5. **COMENTARIU & RETRAGERE_FONDURI:** Project update logs and fund payout processing records.

---

## Advanced SQL & Database Engineering

- **Complex Analytics & Reporting:**
  - Multi-table joins (up to 5 tables) and comprehensive LEFT OUTER JOIN audit queries.
  - Advanced aggregations (GROUP BY, HAVING), Common Table Expressions (WITH), relational division, and Top-N analyses.
  - SQL functions: INITCAP, DECODE, NVL, ROUND, MONTHS_BETWEEN, EXTRACT.
- **Views & Security:** V_PROIECTE_ACTIVE with WITH CHECK OPTION to safeguard data validity across updates.
- **Performance Tuning:**
  - Query cost evaluation using EXPLAIN PLAN.
  - Full Table Scan elimination via dedicated B-tree indexing on foreign keys (idx_donatie_proiect).
- **NoSQL Transition (MongoDB):**
  - Document-oriented JSON schema design, embedded relationships, and aggregation pipelines for high-throughput horizontal scaling.

---

## Repository Structure

```text
├── create_tables.sql                       # Table definitions, sequence, and integrity constraints
├── insert_data.sql                         # Seed data for testing and analytics
├── queries_and_analytics.sql               # Complex analytical queries, views, and DML operations
├── triggers_and_optimization.sql           # PL/SQL trigger and performance index definitions
├── nosql_migration.js                      # MongoDB collections, operations, and aggregation pipelines
├── Crowdfunding_Database_Documentation.docx # Comprehensive design report with ERD diagrams
└── README.md                               # Technical documentation
