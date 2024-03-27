import { getConnection } from "../database/database.js";

const getDeals = async( req, res ) => {
    try{
        const connection = await getConnection();
        const result = await connection.query("SELECT * FROM deals;");
        console.log(result[0]);
        res.json(result[0]);
    }catch (error) {
        res.status(500);
        res.send(error.message);
    }
};

export const methods = {
    getDeals
};