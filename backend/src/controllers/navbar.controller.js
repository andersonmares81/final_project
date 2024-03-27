import { getConnection } from "../database/database.js";

const getNavbar = async( req, res ) => {
    try{
        const connection = await getConnection();
        const result = await connection.query("SELECT * FROM navbar;");
        console.log(result[0]);
        res.json(result[0]);
    }catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

export const methods = {
    getNavbar
};