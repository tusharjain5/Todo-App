<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        p {
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Todo Application</h1>

        <h2>Overview</h2>
        <p>Todo Application is a dynamic web application designed to help users manage their tasks effectively. It provides
            a user-friendly interface for creating, updating, deleting, and marking tasks as completed. The application follows
            the CRUD (Create, Read, Update, Delete) operations paradigm to interact with tasks.</p>

        <h2>Technologies Used</h2>
        <ul>
            <li>Frontend: HTML, CSS, Bootstrap</li>
            <li>Backend: Core Java, Servlet, JSP</li>
            <li>Database: MySQL</li>
            <li>Server: Apache Tomcat 9.0</li>
            <li>IDE: Eclipse</li>
        </ul>

        <h2>Features</h2>
        <ul>
            <li>Task Management: Users can easily create, view, update, and delete tasks.</li>
            <li>Task Status: Tasks can be marked as completed or pending.</li>
            <li>User Authentication: Secure login functionality ensures that only authenticated users can access the application.</li>
            <li>Responsive Design: The application is designed using Bootstrap, making it compatible with various devices and screen sizes.</li>
        </ul>

        <h2>Getting Started</h2>
        <ol>
            <li>Clone this repository to your local machine.</li>
            <li>Import the project into your preferred IDE (such as Eclipse).</li>
            <li>Configure the database connection in the application's configuration files.</li>
            <li>Create a MySQL database named <code>todo_app</code> and import the provided SQL script to set up the required tables and data.</li>
            <li>Deploy the application to Apache Tomcat server.</li>
            <li>Access the application through the provided URL and start managing your tasks!</li>
        </ol>

        <h2>Contribution</h2>
        <p>Contributions to the Todo Application are welcome! If you have any ideas for improvements or new features, feel free
            to open an issue or submit a pull request.</p>

        <a href="https://github.com/tusharjain5/Todo-App" class="btn">View on GitHub</a>
    </div>

</body>

</html>
