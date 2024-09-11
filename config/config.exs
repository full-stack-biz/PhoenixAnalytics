import Config

if Mix.env() == :dev do
  config :phoenix_analytics,
    database_path: System.get_env("DUCK_PATH") || "analytics.duckdb",
    app_domain: System.get_env("PHX_HOST") || "example.com"
end

import_config "#{config_env()}.exs"
