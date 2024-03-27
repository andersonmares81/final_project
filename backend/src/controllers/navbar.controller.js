import { getConnection } from "../database/database.js";
import redis from "ioredis";

const redisClient = new redis();

const getNavbar = async( req, res ) => {
    try{
        const cachedData = await redisClient.get("navbar");
        if (cachedData) {
            const hasChanges = await checkForChanges();
            if (!hasChanges) {
                console.log("Sirviendo destinos de la caché");
                return res.json(JSON.parse(cachedData));
            }
        }
        const connection = await getConnection();
        const result = await connection.query("SELECT * FROM navbar;");
        
        await redisClient.set("navbar", JSON.stringify(result[0]));
    
        res.json(result[0]);
    }catch (error) {
        console.error("Error al obtener destinos:", error);
        res.status(500).send("Error interno del servidor");
    }
};

const checkForChanges = async () => {
    return false; 
};
  
export const methods = {
    getNavbar,
};