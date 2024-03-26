import { getConnection } from "../database/database.js";

const getVacations = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("SELECT `id`, `images`, `city`, `country`, `qualification`, `rates`, `duration`, `qualification` FROM destinations WHERE destinationscol=0 LIMIT 20;"); 
        res.setHeader('Cache-Control', 'public, max-age=7200');
        res.json(result[0]);
    } catch (error) {
        console.error("Error al obtener destinos:", error);
        res.status(500).send("Error interno del servidor");
    }
};

export const methods = {
    getVacations
};
