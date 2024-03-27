import { Router } from "express";
import { methods as dealsController } from "../controllers/deals.controller.js";

const router = Router();

router.get("/", dealsController.getDeals);

export default router;