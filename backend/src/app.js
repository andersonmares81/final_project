import express from 'express';
import morgan from 'morgan';
import cors from 'cors';
// Routes
import languageRoutes from "./routes/language.routes.js"
import detinationRoutes from "./routes/destination.routes.js"
import blogRoutes from "./routes/blog.routes.js"
import vacationRoutes from "./routes/vacation.routes.js"
import dealsRoutes from "./routes/deals.routes.js"
import navbarRoutes from "./routes/navbar.routes.js"
import needsRoutes from "./routes/needs.routes.js"
import locationsRoutes from "./routes/locations.routes.js"
import footerRoutes from "./routes/footer.routes.js"
import reviewsRoutes from "./routes/reviews.routes.js"
import extendedBlogRoutes from "./routes/extendedblog.routes.js"

const app = express();

// Settings
app.set("port", 4001);

// Middlewares
app.use(morgan("dev"));
app.use(cors({
    origin: 'http://localhost:3000'
}));


// Routes
//app.use('/api/languages/', languageRoutes);
//app.use('/api/destinations/', detinationRoutes);
app.use('/api/blogs/', blogRoutes);
app.use('/api/vacations/', vacationRoutes);
app.use('/api/deals/', dealsRoutes);
app.use('/api/navbar/', navbarRoutes)
app.use('/api/needs/', needsRoutes)
app.use('/api/locations/', locationsRoutes)
app.use('/api/footer/', footerRoutes)
app.use('/api/reviews/', reviewsRoutes)
app.use('/api/extendedblog/', extendedBlogRoutes)

/*
app.get('/api/destinations', (req, res) => {
    res.header('Access-Control-Allow-Origin', 'http://localhost:3000');
    // ... rest of the response logic
});
*/

export default app;