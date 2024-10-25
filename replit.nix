{ pkgs }: {
  deps = [
    pkgs.nodejs-18_x.override {
      overrides = {
        nodejs = pkgs.nodejs-18_x;
      };
    }
    # Add Node.js dependencies
    pkgs.nodePackages.@fastify.formbody
    pkgs.nodePackages.@fastify.websocket
    pkgs.nodePackages.axios
    pkgs.nodePackages.dotenv
    pkgs.nodePackages.fastify
    pkgs.nodePackages.form-data
    pkgs.nodePackages.node-fetch
    pkgs.nodePackages.ws
  ];
}