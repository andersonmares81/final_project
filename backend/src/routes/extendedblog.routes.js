import { Router } from "express";
import { methods as extendedBlogController } from "../controllers/extendedblog.controller.js";

const router = Router();

router.get("/", extendedBlogController.getExtendedBlogs);

export default router;