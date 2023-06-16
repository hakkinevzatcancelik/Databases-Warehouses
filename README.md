# Databases-Warehouses

<!DOCTYPE html>
<html>
<head>
  <title>Dormitory Management System Database Design - Project Report</title>
</head>
<body>
  <h1>Project Report: Dormitory Management System Database Design</h1>
  <h2>1. Description of the Problem:</h2>
  <p>
    The problem at hand is to design a database system for managing a dormitory. The system should be able to handle various aspects such as student information, room allocation, visitor management, laundry services, mail delivery, and permissions. The goal is to create a robust and efficient database schema that can effectively store and manage all relevant data while ensuring data integrity and performance.
  </p>
  <h2>2. Conceptual Model Diagram:</h2>
  <p>
    [Insert conceptual model diagram here]
  </p>
  <h2>3. Description of Tables:</h2>
  <p>
    The database schema consists of several tables to store different types of data. Here is a description of each table:
    <ul>
      <li>Students: Stores information about the students, including their student ID, first name, last name, deposit, monthly payment, birth date, gender, and room ID.</li>
      <li>Rooms: Contains details about the rooms, including room ID, capacity, and floor number.</li>
      <li>Visits: Manages the visits made by visitors to the dormitory. It stores the visit ID, student ID, room ID, check-in timestamp, and check-out timestamp.</li>
      <li>Visitors: Stores information about the visitors, including visitor ID, student ID, visit ID, and visitor name.</li>
      <li>Permissions: Tracks the permissions granted to students, such as leave permissions. It stores permission ID, student ID, permission type, start date, and end date.</li>
      <li>Laundry: Manages the laundry services for students. It stores laundry ID, student ID, laundry order timestamp, and laundry room ID.</li>
      <li>Posta: Handles the mail delivery system for students. It stores posta ID, student ID, and posta teslim status.</li>
    </ul>
  </p>
  <h2>4. Optimization through Views, Indexes, and Synonyms:</h2>
  <p>
    To optimize the database performance, the following strategies can be implemented:
    <ul>
      <li>Views: Views can be created to present specific data subsets or complex queries in a simplified manner. This can improve query performance and simplify data access for certain operations.</li>
      <li>Indexes: Proper indexing can be applied to columns that are frequently used in search and join operations. Indexing can significantly speed up data retrieval.</li>
      <li>Synonyms: Synonyms can be used to provide alternative names for database objects. They can help improve query readability and simplify complex joins by using shorter and more meaningful names.</li>
    </ul>
  </p>
  <h2>5. Procedures, Functions, Packages, and Triggers:</h2>
  <p>
    Procedures, functions, packages, and triggers can be implemented to automate certain database operations and enforce business rules. Examples include:
    <ul>
      <li>Procedures: For automating complex operations like room allocation or visitor check-in/check-out.</li>
      <li>Functions: For performing calculations or returning computed values based on input parameters.</li>
      <li>Packages: For grouping related procedures, functions, and other database objects together to provide modular and organized code structure.</li>
      <li>Triggers: For enforcing data integrity rules, such as validating data before insertion or updating certain columns based on specific conditions.</li>
    </ul>
  </p>
  <h2>6. Object Part (Optional):</h2>
  <p>
    The object part of the project includes additional elements such as a mailbox system and a laundry room management. Here are their descriptions:
    <ul>
      <li>Mailbox System: Handles the mail delivery and storage for students. It stores the mailbox ID, student ID, and delivery status. This system ensures that students receive their mail and provides a convenient way to track mail delivery.</li>
      <li>Laundry Room Management: Manages the laundry facilities for students. It stores information about the laundry rooms, including room ID and floor number. The laundry orders table stores details about laundry requests, such as the laundry ID, student ID, room ID, order time, and status. This system helps students schedule and track their laundry requests efficiently.</li>
    </ul>
  </p>
</body>
</html>
