import { Router } from "express";
import { methods as vacationController } from "../controllers/vacation.controller.js";

const router = Router();

router.get("/", vacationController.getVacations);

export default router;