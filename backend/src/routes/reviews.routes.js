import { Router } from "express";
import { methods as reviewsController } from "../controllers/reviews.controller.js";

const router = Router();

router.get("/", reviewsController.getReviews);

export default router;