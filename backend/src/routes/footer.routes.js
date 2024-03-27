import { Router } from "express";
import { methods as footerController } from "../controllers/footer.controller.js";

const router = Router();

router.get("/", footerController.getFooter);

export default router;