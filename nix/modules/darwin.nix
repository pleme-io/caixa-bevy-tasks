# nix/modules/darwin.nix — auto-generated from bevy_tasks.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_tasks; in {
  options.services.bevy_tasks = {
    enable = lib.mkEnableOption "bevy_tasks";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_tasks or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
