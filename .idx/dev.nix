{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.bun
    pkgs.git
    pkgs.sudo
  ];

  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "dbaeumer.vscode-eslint"
      "esbenp.prettier-vscode"
      "oven.bun-vscode"
      "eamodio.gitlens"
      "astro-build.astro-vscode"
      "bradlc.vscode-tailwindcss"
      "WakaTime.vscode-wakatime"
    ];

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        bun-install = "bun install";
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Start the Astro development server for previews
        start-astro-dev = "bun run dev --host 0.0.0.0";
      };

      # Configure ports for Astro preview
      ports = [
        {
          port = 4321;  # Default Astro dev server port
          onOpen = "openPreview";
        }
      ];
    };
  };
}