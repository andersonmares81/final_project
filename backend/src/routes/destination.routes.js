 import { Router } from "express";
 import { methods as destinationController } from "../controllers/destination.controller.js";

 const router = Router();

 router.get("/", destinationController.getDestinations);

 export default router;