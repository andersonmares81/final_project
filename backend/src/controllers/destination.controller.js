import { getConnection } from "../database/database.js";

const getDestinations = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("SELECT `id`, `images`, `city`, `country`, `qualification`, `rates`, `discounts`, `qualification`, `datepublish`  FROM destinations LIMIT 20;"); 
        res.setHeader('Cache-Control', 'public, max-age=7200');
        res.json(result[0]);
    } catch (error) {
        console.error("Error al obtener destinos:", error);
        res.status(500).send("Error interno del servidor");
    }
};

export const methods = {
    getDestinations
};
