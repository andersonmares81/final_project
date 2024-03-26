// Route for serving the image
app.get('/image/:city', (req, res) => {
    const city = req.params.city;
    const imagePath = `./src/assets/images/cities/${city}.png`;
  
    // Check if the image file exists before sending
    fs.access(imagePath, fs.constants.F_OK, (err) => {
      if (err) {
        // Handle the case where the image is not found (e.g., send a 404)
        console.error(`Image not found: ${imagePath}`);
        res.status(404).send('Image not found');
      } else {
        res.sendFile(imagePath);
      }
    });
});
  