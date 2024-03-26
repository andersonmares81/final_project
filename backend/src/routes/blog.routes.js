 import { Router } from "express";
 import { methods as blogController } from "../controllers/blog.controller.js";

 const router = Router();

 router.get("/", blogController.getBlogs);

 export default router;