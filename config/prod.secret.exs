config ssl: true,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "peaceful-bastion-79501.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
