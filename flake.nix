{
  description = "Meine erste flake!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    // flake-utils wird entfernt, da es nicht benötigt wird.
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.meinSystem = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        // Hier könnten weitere Module hinzugefügt werden, falls nötig.
      ];
    };
  };
}
