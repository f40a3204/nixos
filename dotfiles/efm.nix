{ config, pkgs, ... }:

{
   imports = 
   [
      <home-manager/nixos>
   ];

   home-manager.users.oxynoe = { ... }: {
        home.file.".config/efm-langserver/config.yaml".text = ''
version: 2

tools:
  mix_credo: &mix_credo
    lint-command: "MIX_ENV=test mix credo suggest --format=flycheck --read-from-stdin ''${INPUT}"
    lint-stdin: true
    lint-formats:
      - '%f:%l:%c: %t: %m'
      - '%f:%l: %t: %m'
    lint-category-map:
      R: N
      D: I
      F: E
      W: W
    root-markers:
      - mix.lock
      - mix.exs

languages:
  elixir:
    - <<: *mix_credo
        '';
   };
}
