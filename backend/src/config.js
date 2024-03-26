import {config} from "dotenv";

config();

export default {
    host: process.env.PK_HOST,
    database: process.env.PK_DATABASE || "",
    user: process.env.PK_USER || "",
    password: process.env.PK_PASSWORD || "",
    port: process.env.PK_PORT || "3346"   
};