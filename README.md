# Banking Application
 Developed a Banking application using Spring Boot, incorporating essential operations like registration, deposit, withdrawal, transfer, and balance inquiry.

 The application is designed as a banking system using Spring Boot, by following the Model-View-Controller (MVC) architecture. This architecture separates the concerns of data (Model), presentation (View), and application logic (Controller), providing a structured approach to build web applications.

Components and Their Roles
Model (Bank Entity, BankRepo, BankService)
Bank Entity (com.web.model.Bank): Represents a bank account with attributes like accountno, name, password, and balance.

BankRepo (com.web.repo.BankRepo): Extends Spring Data JpaRepository to handle database operations for the Bank entity, such as CRUD operations.

BankServiceImpl (com.web.service.BankServiceImpl): Implements business logic for various operations on bank accounts (saveDetails, findData, getOneRecord, depositAmount, withdrawAmount, transferAmount). It interacts with BankRepo to perform database operations.

View (JSP Files, HTML, CSS, JavaScript)
JSP Files (/resources/templates/): These are used for rendering HTML content dynamically. Each JSP file corresponds to a specific view/template within the application.

home.jsp, aboutus.jsp, register.jsp: Basic pages for home, about us, and registration. login_Form.jsp, Login_Page.jsp: Pages related to login functionality. balance_Form.jsp, balance_sheet.jsp: Pages for checking account balance. deposit_Form.jsp, withdraw_Form.jsp: Pages for depositing and withdrawing money. transfer_Form.jsp: Page for transferring money between accounts. success.jsp: Page displayed upon successful completion of operations. HTML, CSS, JavaScript: These are used within the JSP files to enhance the presentation and interactivity of the application.

Controller (Bankcontroller)
Controller (com.web.controller.Bankcontroller): Handles incoming HTTP requests, processes them by invoking business logic, and decides which view to render.

@Controller and @RequestMapping annotations: Define the controller class and the base URL mapping.

Request Mapping Methods (home(), aboutUs(), register(), etc.): Map specific URLs to corresponding views (JSP files).

Form Handling Methods (regAndSave(), loginSubmit(), balanceSubmit(), etc.): Handle form submissions from JSP files, validate input, and invoke appropriate service methods.

ModelMap: Used to pass data between controllers and views, facilitating dynamic content generation.

Detailed Flow of Operations
Home and Static Pages:

URLs like /, /aboutus, and /newacc map to respective JSP files (home.jsp, aboutus.jsp, register.jsp) which display static content. User Registration:

/RegUrl accepts form data (Bank object) from register.jsp, saves details using bankService.saveDetails(bank) and redirects to success.jsp. User Login:

/loginUrl receives login credentials (accountno, name, password), verifies them using bankService.findData(...), and redirects to Login_Page.jsp on successful login. Account Balance Check:

/balanceUrl fetches account details based on accountno, displays balance in balance_sheet.jsp, or shows errors in balance_Form.jsp. Deposit and Withdrawal:

/depositUrl and /withdrawUrl handle deposit and withdrawal operations, respectively, updating account balances and redirecting to success.jsp or showing errors. Fund Transfer:

/transferUrl facilitates fund transfer between accounts (accountno to target_accountno), updating balances and handling errors similarly to deposit/withdraw operations.

Conclusion
This Spring Boot application exemplifies robust MVC architecture where each component plays a specific role:

Model: Defines data entities and interacts with the database. View: Uses JSP files for dynamic rendering and integrates HTML, CSS, and JavaScript for enhanced user interaction. Controller: Manages request handling, business logic invocation, and navigation between views. Such structured architecture ensures maintainability, scalability, and separation of concerns, making it ideal for complex web applications like banking systems.
