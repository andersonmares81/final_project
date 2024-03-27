import { Router } from "express";
import { methods as navbarController } from "../controllers/navbar.controller.js";

const router = Router();

router.get("/", navbarController.getNavbar);

export default router;