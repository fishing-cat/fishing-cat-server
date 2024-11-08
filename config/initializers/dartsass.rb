Rails.application.config.dartsass.builds = {
  "admin.scss" => "admin.css",
  "fishing.scss" => "fishing.css",
}
Rails.application.config.dartsass.build_options << "--no-charset" << "--quiet-deps"
