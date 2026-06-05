# Pixel World Fish Caught LBS Editor

This is a small static editor to edit fish weight overlays on screenshots.

Run locally:

```bash
# from project folder
python -m http.server 8000
# then open http://localhost:8000/
```

Deploy to Render (Static Site):
- Create a GitHub repository and push this folder.
- In Render, create a new Static Site, connect to the GitHub repo, set the Publish Directory to `/` (root).

