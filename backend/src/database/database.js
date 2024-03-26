import mysql from 'mysql2/promise';
import config from "./../config.js";

const pool = mysql.createPool({
    host: config.host,
    user: config.user,
    password: config.password, // Ensure this has a value
    database: config.database,
    port: config.port
});

export const getConnection = async () => {
    try {
        const connection = await pool.getConnection();
        return connection;
    } catch (err) {
        throw err; // Handle connection errors appropriately
    }
};
