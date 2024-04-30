const express = require('express');
const bodyParser = require('body-parser');
const sql = require('mssql');
const app = express();
const port = 3000;

// Use body-parser middleware to parse form data
app.use(bodyParser.urlencoded({ extended: true }));

// Serve static files (CSS, images, etc.)
app.use(express.static('public'));

// Configure MS SQL Server connection
const config = {
    user: '',
    password: '',
    server: 'LAPTOP-L7M02C6E',
    database: 'Ecommerce',
    options: {
        encrypt: true, // Use this if you're on Windows Azure
    },
};

// Set up a simple route for the signup page
app.get('/signup', (req, res) => {
    res.sendFile(__dirname + '/public/signup.html');
});

// Handle signup form submission
app.post('/signup', async (req, res) => {
    try {
        // Get user input
        const firstName = req.body.firstName;
        const lastName = req.body.lastName;
        const email = req.body.email;
        const password = req.body.password;
        const contact = req.body.contact;

        // Connect to the database
        await sql.connect(config);

        // Insert user data into the database
        const result = await sql.query`INSERT INTO YourTableName (FirstName, LastName, Email, Password, Contact) VALUES (${firstName}, ${lastName}, ${email}, ${password}, ${contact})`;

        console.log(result);

        // Redirect user after successful signup
        res.redirect('/login');
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
    } finally {
        // Close the database connection
        await sql.close();
    }
});

// Start the server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
