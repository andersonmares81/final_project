import { Router } from "express";
import { methods as locationsController } from "../controllers/locations.controller.js";

const router = Router();

router.get("/", locationsController.getLocations);

export default router;