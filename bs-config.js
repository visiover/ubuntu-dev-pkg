erSync.init({
  ui: {
    port: 3001
  },
  open: false,
  port: 3000,
  server: {
    baseDir: ['.tmp', 'app'],
    routes: {
      "/bower_components": "bower_components"
    }
  }
});
