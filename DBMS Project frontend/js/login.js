const http = require('http');
const sql = require('mssql');

const config = {
    server: 'LAPTOP-L7M02C6E',
    database: 'Ecommerce',
    options: {
        trustedConnection: true, // Use Windows authentication
    },
};

// Create an HTTP server
// Add this code after your existing SQL connection configuration
const express = require('express');
const app = express();

// ... (existing code for SQL configuration)

app.post('/login', async (req, res) => {
  try {
    // ... (existing code for database connection and login check)

    // Check if the user exists
    if (result.recordset.length > 0) {
      // User authenticated successfully
      res.redirect('/dashboard'); // Redirect to the dashboard
    } else {
      // User not found
      res.status(401).send('Unauthorized');
    }
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal Server Error');
  } finally {
    // Close the database connection
    await sql.close();
  }
});

// ... (existing code for starting the server, e.g., app.listen)


// Start the server on port 3000
const port = 3000;
server.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
