import { Router } from "express";
import { methods as needsController } from "../controllers/needs.controller.js";

const router = Router();

router.get("/", needsController.getNeeds);

export default router;