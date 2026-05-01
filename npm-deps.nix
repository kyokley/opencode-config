{
  pkgs ? import <nixpkgs> { },
  ...
}:
let
  lib = pkgs.lib;
  extractTarball =
    src:
    pkgs.runCommand "extracted-${src.name}" { } ''
      mkdir "$out"
      ${pkgs.libarchive}/bin/bsdtar -xf ${src} --strip-components 1 -C "$out"
    '';
  packages = {
    "node_modules/@ampproject/remapping/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ampproject/remapping/-/remapping-2.3.0.tgz";
        hash = "sha512-30iZtAPgz+LTIYoeivqYo853f02jBYSd5uGnGpkFV0M3xOt9aN73erkgYAmZU43x4VfqcnLxW9Kpg3R5LC4YYw==";
      }
    );
    "node_modules/@asamuzakjp/css-color/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@asamuzakjp/css-color/-/css-color-3.2.0.tgz";
        hash = "sha512-K1A6z8tS3XsmCMM86xoWdn7Fkdn9m6RSVtocUrJYIwZnFVkng/PvkEoWtOWmP+Scc6saYWHWZYbndEEXxl24jw==";
      }
    );
    "node_modules/@ast-grep/cli/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli/-/cli-0.42.1.tgz";
        hash = "sha512-L1D7JX7p/RohtvE4IViKelWCtEYjQDvmlZ85aP4LmJVoQth/iC/+z/fCXmg6qSK8zr9IjC9okpxDZX7x1arKbQ==";
      }
    );
    "node_modules/@ast-grep/cli-darwin-arm64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-darwin-arm64/-/cli-darwin-arm64-0.42.1.tgz";
        hash = "sha512-G9rk0NAN10mybxi611CVNqwPtPO+yF0rFqPzpdgHBa4roeCq5FYsg2q/WqxM95st3jilNS9UIfZFD0i3BDfKEw==";
      }
    );
    "node_modules/@ast-grep/cli-darwin-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-darwin-x64/-/cli-darwin-x64-0.42.1.tgz";
        hash = "sha512-IZ1HY69zj6sj4QnHKPR71FjtuCDImhLW5v5QhTGq6Fl0T9fjhQP/g9aEk7PrJB1puOk4HhTw/J/u0wZOPmp4bA==";
      }
    );
    "node_modules/@ast-grep/cli-linux-arm64-gnu/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-linux-arm64-gnu/-/cli-linux-arm64-gnu-0.42.1.tgz";
        hash = "sha512-eirVmtAciL1cXwvODYkqKEFtWgxxYyhNLTTNchdKynktFixuAmAvn0OUX0bcQnhXH5DgsdT4+1+CtvjuPc5uGQ==";
      }
    );
    "node_modules/@ast-grep/cli-linux-x64-gnu/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-linux-x64-gnu/-/cli-linux-x64-gnu-0.42.1.tgz";
        hash = "sha512-DrsV3+LkzwcaCw2AkLqM5o9ISaS4ZfJIL96RIdFRD+ydp5Mirsdw3aZdDmBqpa6nxt2NjMsFWgOivvzPiKzGAw==";
      }
    );
    "node_modules/@ast-grep/cli-win32-arm64-msvc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-win32-arm64-msvc/-/cli-win32-arm64-msvc-0.42.1.tgz";
        hash = "sha512-9DabeCAtOQEUTiCVB6fpoJ0mI21brEAa5oY2jjOzaz1SBwYuh9TPLnKBn8F+PYbUU/4Umyy26YwVg+xw4+J/Ug==";
      }
    );
    "node_modules/@ast-grep/cli-win32-ia32-msvc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-win32-ia32-msvc/-/cli-win32-ia32-msvc-0.42.1.tgz";
        hash = "sha512-xQlxTwaqiCzOUZc5lB6rp/glS0DmQd67ID6MliRZ3TH1PvX+a3oiP+QEdSgcvfcArObuKxtRGNKlOfgwMe+J8Q==";
      }
    );
    "node_modules/@ast-grep/cli-win32-x64-msvc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-win32-x64-msvc/-/cli-win32-x64-msvc-0.42.1.tgz";
        hash = "sha512-bOMSGeTKGfYBB1m+S0WLiA2GUkNVBaHOy+mKw27mf/kd6W2KNG3DJwAWry35qargLL0WP9PBcCaOkdnzeNyZ3A==";
      }
    );
    "node_modules/@babel/code-frame/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.29.0.tgz";
        hash = "sha512-9NhCeYjq9+3uxgdtp20LSiJXJvN0FeCtNGpJxuMFZ1Kv3cWUNb6DOhJwUvcVCzKGR66cw4njwM6hrJLqgOwbcw==";
      }
    );
    "node_modules/@babel/compat-data/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/compat-data/-/compat-data-7.29.0.tgz";
        hash = "sha512-T1NCJqT/j9+cn8fvkt7jtwbLBfLC/1y1c7NtCeXFRgzGTsafi68MRv8yzkYSapBnFA6L3U2VSc02ciDzoAJhJg==";
      }
    );
    "node_modules/@babel/core/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/core/-/core-7.28.0.tgz";
        hash = "sha512-UlLAnTPrFdNGoFtbSXwcGFQBtQZJCNjaN6hQNP3UPvuNXT1i82N26KL3dZeIpNalWywr9IuQuncaAfUaS1g6sQ==";
      }
    );
    "node_modules/@babel/generator/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/generator/-/generator-7.29.1.tgz";
        hash = "sha512-qsaF+9Qcm2Qv8SRIMMscAvG4O3lJ0F1GuMo5HR/Bp02LopNgnZBC/EkbevHFeGs4ls/oPz9v+Bsmzbkbe+0dUw==";
      }
    );
    "node_modules/@babel/helper-annotate-as-pure/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-annotate-as-pure/-/helper-annotate-as-pure-7.27.3.tgz";
        hash = "sha512-fXSwMQqitTGeHLBC08Eq5yXz2m37E4pJX1qAU1+2cNedz/ifv/bVXft90VeSav5nFO61EcNgwr0aJxbyPaWBPg==";
      }
    );
    "node_modules/@babel/helper-compilation-targets/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-compilation-targets/-/helper-compilation-targets-7.28.6.tgz";
        hash = "sha512-JYtls3hqi15fcx5GaSNL7SCTJ2MNmjrkHXg4FSpOA/grxK8KwyZ5bubHsCq8FXCkua6xhuaaBit+3b7+VZRfcA==";
      }
    );
    "node_modules/@babel/helper-create-class-features-plugin/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-create-class-features-plugin/-/helper-create-class-features-plugin-7.28.6.tgz";
        hash = "sha512-dTOdvsjnG3xNT9Y0AUg1wAl38y+4Rl4sf9caSQZOXdNqVn+H+HbbJ4IyyHaIqNR6SW9oJpA/RuRjsjCw2IdIow==";
      }
    );
    "node_modules/@babel/helper-globals/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-globals/-/helper-globals-7.28.0.tgz";
        hash = "sha512-+W6cISkXFa1jXsDEdYA8HeevQT/FULhxzR99pxphltZcVaugps53THCeiWA8SguxxpSp3gKPiuYfSWopkLQ4hw==";
      }
    );
    "node_modules/@babel/helper-member-expression-to-functions/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-member-expression-to-functions/-/helper-member-expression-to-functions-7.28.5.tgz";
        hash = "sha512-cwM7SBRZcPCLgl8a7cY0soT1SptSzAlMH39vwiRpOQkJlh53r5hdHwLSCZpQdVLT39sZt+CRpNwYG4Y2v77atg==";
      }
    );
    "node_modules/@babel/helper-module-imports/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-module-imports/-/helper-module-imports-7.28.6.tgz";
        hash = "sha512-l5XkZK7r7wa9LucGw9LwZyyCUscb4x37JWTPz7swwFE/0FMQAGpiWUZn8u9DzkSBWEcK25jmvubfpw2dnAMdbw==";
      }
    );
    "node_modules/@babel/helper-module-transforms/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-module-transforms/-/helper-module-transforms-7.28.6.tgz";
        hash = "sha512-67oXFAYr2cDLDVGLXTEABjdBJZ6drElUSI7WKp70NrpyISso3plG9SAGEF6y7zbha/wOzUByWWTJvEDVNIUGcA==";
      }
    );
    "node_modules/@babel/helper-optimise-call-expression/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-optimise-call-expression/-/helper-optimise-call-expression-7.27.1.tgz";
        hash = "sha512-URMGH08NzYFhubNSGJrpUEphGKQwMQYBySzat5cAByY1/YgIRkULnIy3tAMeszlL/so2HbeilYloUmSpd7GdVw==";
      }
    );
    "node_modules/@babel/helper-plugin-utils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-plugin-utils/-/helper-plugin-utils-7.28.6.tgz";
        hash = "sha512-S9gzZ/bz83GRysI7gAD4wPT/AI3uCnY+9xn+Mx/KPs2JwHJIz1W8PZkg2cqyt3RNOBM8ejcXhV6y8Og7ly/Dug==";
      }
    );
    "node_modules/@babel/helper-replace-supers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-replace-supers/-/helper-replace-supers-7.28.6.tgz";
        hash = "sha512-mq8e+laIk94/yFec3DxSjCRD2Z0TAjhVbEJY3UQrlwVo15Lmt7C2wAUbK4bjnTs4APkwsYLTahXRraQXhb1WCg==";
      }
    );
    "node_modules/@babel/helper-skip-transparent-expression-wrappers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-skip-transparent-expression-wrappers/-/helper-skip-transparent-expression-wrappers-7.27.1.tgz";
        hash = "sha512-Tub4ZKEXqbPjXgWLl2+3JpQAYBJ8+ikpQ2Ocj/q/r0LwE3UhENh7EUabyHjz2kCEsrRY83ew2DQdHluuiDQFzg==";
      }
    );
    "node_modules/@babel/helper-string-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-string-parser/-/helper-string-parser-7.27.1.tgz";
        hash = "sha512-qMlSxKbpRlAridDExk92nSobyDdpPijUq2DW6oDnUqd0iOGxmQjyqhMIihI9+zv4LPyZdRje2cavWPbCbWm3eA==";
      }
    );
    "node_modules/@babel/helper-validator-identifier/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.28.5.tgz";
        hash = "sha512-qSs4ifwzKJSV39ucNjsvc6WVHs6b7S03sOh2OcHF9UHfVPqWWALUsNUVzhSBiItjRZoLHx7nIarVjqKVusUZ1Q==";
      }
    );
    "node_modules/@babel/helper-validator-option/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-validator-option/-/helper-validator-option-7.27.1.tgz";
        hash = "sha512-YvjJow9FxbhFFKDSuFnVCe2WxXk1zWc22fFePVNEaWJEu8IrZVlda6N0uHwzZrUM1il7NC9Mlp4MaJYbYd9JSg==";
      }
    );
    "node_modules/@babel/helpers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helpers/-/helpers-7.29.2.tgz";
        hash = "sha512-HoGuUs4sCZNezVEKdVcwqmZN8GoHirLUcLaYVNBK2J0DadGtdcqgr3BCbvH8+XUo4NGjNl3VOtSjEKNzqfFgKw==";
      }
    );
    "node_modules/@babel/parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/parser/-/parser-7.29.2.tgz";
        hash = "sha512-4GgRzy/+fsBa72/RZVJmGKPmZu9Byn8o4MoLpmNe1m8ZfYnz5emHLQz3U4gLud6Zwl0RZIcgiLD7Uq7ySFuDLA==";
      }
    );
    "node_modules/@babel/plugin-syntax-jsx/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/plugin-syntax-jsx/-/plugin-syntax-jsx-7.28.6.tgz";
        hash = "sha512-wgEmr06G6sIpqr8YDwA2dSRTE3bJ+V0IfpzfSY3Lfgd7YWOaAdlykvJi13ZKBt8cZHfgH1IXN+CL656W3uUa4w==";
      }
    );
    "node_modules/@babel/plugin-syntax-typescript/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/plugin-syntax-typescript/-/plugin-syntax-typescript-7.28.6.tgz";
        hash = "sha512-+nDNmQye7nlnuuHDboPbGm00Vqg3oO8niRRL27/4LYHUsHYh0zJ1xWOz0uRwNFmM1Avzk8wZbc6rdiYhomzv/A==";
      }
    );
    "node_modules/@babel/plugin-transform-modules-commonjs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/plugin-transform-modules-commonjs/-/plugin-transform-modules-commonjs-7.28.6.tgz";
        hash = "sha512-jppVbf8IV9iWWwWTQIxJMAJCWBuuKx71475wHwYytrRGQ2CWiDvYlADQno3tcYpS/T2UUWFQp3nVtYfK/YBQrA==";
      }
    );
    "node_modules/@babel/plugin-transform-typescript/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/plugin-transform-typescript/-/plugin-transform-typescript-7.28.6.tgz";
        hash = "sha512-0YWL2RFxOqEm9Efk5PvreamxPME8OyY0wM5wh5lHjF+VtVhdneCWGzZeSqzOfiobVqQaNCd2z0tQvnI9DaPWPw==";
      }
    );
    "node_modules/@babel/preset-typescript/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/preset-typescript/-/preset-typescript-7.27.1.tgz";
        hash = "sha512-l7WfQfX0WK4M0v2RudjuQK4u99BS6yLHYEmdtVPP7lKV013zr9DygFuWNlnbvQ9LR+LS0Egz/XAvGx5U9MX0fQ==";
      }
    );
    "node_modules/@babel/template/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/template/-/template-7.28.6.tgz";
        hash = "sha512-YA6Ma2KsCdGb+WC6UpBVFJGXL58MDA6oyONbjyF/+5sBgxY/dwkhLogbMT2GXXyU84/IhRw/2D1Os1B/giz+BQ==";
      }
    );
    "node_modules/@babel/traverse/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/traverse/-/traverse-7.29.0.tgz";
        hash = "sha512-4HPiQr0X7+waHfyXPZpWPfWL/J7dcN1mx9gL6WdQVMbPnF3+ZhSMs8tCxN7oHddJE9fhNE7+lxdnlyemKfJRuA==";
      }
    );
    "node_modules/@babel/types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/types/-/types-7.29.0.tgz";
        hash = "sha512-LwdZHpScM4Qz8Xw2iKSzS+cfglZzJGvofQICy7W7v4caru4EaAmyUuO6BGrbyQ2mYV11W0U8j5mBhd14dd3B0A==";
      }
    );
    "node_modules/@csstools/color-helpers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@csstools/color-helpers/-/color-helpers-5.1.0.tgz";
        hash = "sha512-S11EXWJyy0Mz5SYvRmY8nJYTFFd1LCNV+7cXyAgQtOOuzb4EsgfqDufL+9esx72/eLhsRdGZwaldu/h+E4t4BA==";
      }
    );
    "node_modules/@csstools/css-calc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@csstools/css-calc/-/css-calc-2.1.4.tgz";
        hash = "sha512-3N8oaj+0juUw/1H3YwmDDJXCgTB1gKU6Hc/bB502u9zR0q2vd786XJH9QfrKIEgFlZmhZiq6epXl4rHqhzsIgQ==";
      }
    );
    "node_modules/@csstools/css-color-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@csstools/css-color-parser/-/css-color-parser-3.1.0.tgz";
        hash = "sha512-nbtKwh3a6xNVIp/VRuXV64yTKnb1IjTAEEh3irzS+HkKjAOYLTGNb9pmVNntZ8iVBHcWDA2Dof0QtPgFI1BaTA==";
      }
    );
    "node_modules/@csstools/css-parser-algorithms/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@csstools/css-parser-algorithms/-/css-parser-algorithms-3.0.5.tgz";
        hash = "sha512-DaDeUkXZKjdGhgYaHNJTV9pV7Y9B3b644jCLs9Upc3VeNGg6LWARAT6O+Q+/COo+2gg/bM5rhpMAtf70WqfBdQ==";
      }
    );
    "node_modules/@csstools/css-tokenizer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@csstools/css-tokenizer/-/css-tokenizer-3.0.4.tgz";
        hash = "sha512-Vd/9EVDiu6PPJt9yAh6roZP6El1xHrdvIVGjyBsHR0RYwNHgL7FJPyIIW4fANJNG6FtyZfvlRPpFI4ZM/lubvw==";
      }
    );
    "node_modules/@dimforge/rapier2d-simd-compat/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@dimforge/rapier2d-simd-compat/-/rapier2d-simd-compat-0.17.3.tgz";
        hash = "sha512-bijvwWz6NHsNj5e5i1vtd3dU2pDhthSaTUZSh14DUGGKJfw8eMnlWZsxwHBxB/a3AXVNDjL9abuHw1k9FGR+jg==";
      }
    );
    "node_modules/@hono/node-server/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@hono/node-server/-/node-server-1.19.13.tgz";
        hash = "sha512-TsQLe4i2gvoTtrHje625ngThGBySOgSK3Xo2XRYOdqGN1teR8+I7vchQC46uLJi8OF62YTYA3AhSpumtkhsaKQ==";
      }
    );
    "node_modules/@jimp/core/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/core/-/core-1.6.0.tgz";
        hash = "sha512-EQQlKU3s9QfdJqiSrZWNTxBs3rKXgO2W+GxNXDtwchF3a4IqxDheFX1ti+Env9hdJXDiYLp2jTRjlxhPthsk8w==";
      }
    );
    "node_modules/@jimp/diff/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/diff/-/diff-1.6.0.tgz";
        hash = "sha512-+yUAQ5gvRC5D1WHYxjBHZI7JBRusGGSLf8AmPRPCenTzh4PA+wZ1xv2+cYqQwTfQHU5tXYOhA0xDytfHUf1Zyw==";
      }
    );
    "node_modules/@jimp/file-ops/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/file-ops/-/file-ops-1.6.0.tgz";
        hash = "sha512-Dx/bVDmgnRe1AlniRpCKrGRm5YvGmUwbDzt+MAkgmLGf+jvBT75hmMEZ003n9HQI/aPnm/YKnXjg/hOpzNCpHQ==";
      }
    );
    "node_modules/@jimp/js-bmp/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/js-bmp/-/js-bmp-1.6.0.tgz";
        hash = "sha512-FU6Q5PC/e3yzLyBDXupR3SnL3htU7S3KEs4e6rjDP6gNEOXRFsWs6YD3hXuXd50jd8ummy+q2WSwuGkr8wi+Gw==";
      }
    );
    "node_modules/@jimp/js-gif/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/js-gif/-/js-gif-1.6.0.tgz";
        hash = "sha512-N9CZPHOrJTsAUoWkWZstLPpwT5AwJ0wge+47+ix3++SdSL/H2QzyMqxbcDYNFe4MoI5MIhATfb0/dl/wmX221g==";
      }
    );
    "node_modules/@jimp/js-jpeg/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/js-jpeg/-/js-jpeg-1.6.0.tgz";
        hash = "sha512-6vgFDqeusblf5Pok6B2DUiMXplH8RhIKAryj1yn+007SIAQ0khM1Uptxmpku/0MfbClx2r7pnJv9gWpAEJdMVA==";
      }
    );
    "node_modules/@jimp/js-png/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/js-png/-/js-png-1.6.0.tgz";
        hash = "sha512-AbQHScy3hDDgMRNfG0tPjL88AV6qKAILGReIa3ATpW5QFjBKpisvUaOqhzJ7Reic1oawx3Riyv152gaPfqsBVg==";
      }
    );
    "node_modules/@jimp/js-tiff/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/js-tiff/-/js-tiff-1.6.0.tgz";
        hash = "sha512-zhReR8/7KO+adijj3h0ZQUOiun3mXUv79zYEAKvE0O+rP7EhgtKvWJOZfRzdZSNv0Pu1rKtgM72qgtwe2tFvyw==";
      }
    );
    "node_modules/@jimp/plugin-blit/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-blit/-/plugin-blit-1.6.0.tgz";
        hash = "sha512-M+uRWl1csi7qilnSK8uxK4RJMSuVeBiO1AY0+7APnfUbQNZm6hCe0CCFv1Iyw1D/Dhb8ph8fQgm5mwM0eSxgVA==";
      }
    );
    "node_modules/@jimp/plugin-blur/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-blur/-/plugin-blur-1.6.0.tgz";
        hash = "sha512-zrM7iic1OTwUCb0g/rN5y+UnmdEsT3IfuCXCJJNs8SZzP0MkZ1eTvuwK9ZidCuMo4+J3xkzCidRwYXB5CyGZTw==";
      }
    );
    "node_modules/@jimp/plugin-circle/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-circle/-/plugin-circle-1.6.0.tgz";
        hash = "sha512-xt1Gp+LtdMKAXfDp3HNaG30SPZW6AQ7dtAtTnoRKorRi+5yCJjKqXRgkewS5bvj8DEh87Ko1ydJfzqS3P2tdWw==";
      }
    );
    "node_modules/@jimp/plugin-color/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-color/-/plugin-color-1.6.0.tgz";
        hash = "sha512-J5q8IVCpkBsxIXM+45XOXTrsyfblyMZg3a9eAo0P7VPH4+CrvyNQwaYatbAIamSIN1YzxmO3DkIZXzRjFSz1SA==";
      }
    );
    "node_modules/@jimp/plugin-contain/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-contain/-/plugin-contain-1.6.0.tgz";
        hash = "sha512-oN/n+Vdq/Qg9bB4yOBOxtY9IPAtEfES8J1n9Ddx+XhGBYT1/QTU/JYkGaAkIGoPnyYvmLEDqMz2SGihqlpqfzQ==";
      }
    );
    "node_modules/@jimp/plugin-cover/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-cover/-/plugin-cover-1.6.0.tgz";
        hash = "sha512-Iow0h6yqSC269YUJ8HC3Q/MpCi2V55sMlbkkTTx4zPvd8mWZlC0ykrNDeAy9IJegrQ7v5E99rJwmQu25lygKLA==";
      }
    );
    "node_modules/@jimp/plugin-crop/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-crop/-/plugin-crop-1.6.0.tgz";
        hash = "sha512-KqZkEhvs+21USdySCUDI+GFa393eDIzbi1smBqkUPTE+pRwSWMAf01D5OC3ZWB+xZsNla93BDS9iCkLHA8wang==";
      }
    );
    "node_modules/@jimp/plugin-displace/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-displace/-/plugin-displace-1.6.0.tgz";
        hash = "sha512-4Y10X9qwr5F+Bo5ME356XSACEF55485j5nGdiyJ9hYzjQP9nGgxNJaZ4SAOqpd+k5sFaIeD7SQ0Occ26uIng5Q==";
      }
    );
    "node_modules/@jimp/plugin-dither/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-dither/-/plugin-dither-1.6.0.tgz";
        hash = "sha512-600d1RxY0pKwgyU0tgMahLNKsqEcxGdbgXadCiVCoGd6V6glyCvkNrnnwC0n5aJ56Htkj88PToSdF88tNVZEEQ==";
      }
    );
    "node_modules/@jimp/plugin-fisheye/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-fisheye/-/plugin-fisheye-1.6.0.tgz";
        hash = "sha512-E5QHKWSCBFtpgZarlmN3Q6+rTQxjirFqo44ohoTjzYVrDI6B6beXNnPIThJgPr0Y9GwfzgyarKvQuQuqCnnfbA==";
      }
    );
    "node_modules/@jimp/plugin-flip/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-flip/-/plugin-flip-1.6.0.tgz";
        hash = "sha512-/+rJVDuBIVOgwoyVkBjUFHtP+wmW0r+r5OQ2GpatQofToPVbJw1DdYWXlwviSx7hvixTWLKVgRWQ5Dw862emDg==";
      }
    );
    "node_modules/@jimp/plugin-hash/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-hash/-/plugin-hash-1.6.0.tgz";
        hash = "sha512-wWzl0kTpDJgYVbZdajTf+4NBSKvmI3bRI8q6EH9CVeIHps9VWVsUvEyb7rpbcwVLWYuzDtP2R0lTT6WeBNQH9Q==";
      }
    );
    "node_modules/@jimp/plugin-mask/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-mask/-/plugin-mask-1.6.0.tgz";
        hash = "sha512-Cwy7ExSJMZszvkad8NV8o/Z92X2kFUFM8mcDAhNVxU0Q6tA0op2UKRJY51eoK8r6eds/qak3FQkXakvNabdLnA==";
      }
    );
    "node_modules/@jimp/plugin-print/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-print/-/plugin-print-1.6.0.tgz";
        hash = "sha512-zarTIJi8fjoGMSI/M3Xh5yY9T65p03XJmPsuNet19K/Q7mwRU6EV2pfj+28++2PV2NJ+htDF5uecAlnGyxFN2A==";
      }
    );
    "node_modules/@jimp/plugin-quantize/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-quantize/-/plugin-quantize-1.6.0.tgz";
        hash = "sha512-EmzZ/s9StYQwbpG6rUGBCisc3f64JIhSH+ncTJd+iFGtGo0YvSeMdAd+zqgiHpfZoOL54dNavZNjF4otK+mvlg==";
      }
    );
    "node_modules/@jimp/plugin-resize/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-resize/-/plugin-resize-1.6.0.tgz";
        hash = "sha512-uSUD1mqXN9i1SGSz5ov3keRZ7S9L32/mAQG08wUwZiEi5FpbV0K8A8l1zkazAIZi9IJzLlTauRNU41Mi8IF9fA==";
      }
    );
    "node_modules/@jimp/plugin-rotate/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-rotate/-/plugin-rotate-1.6.0.tgz";
        hash = "sha512-JagdjBLnUZGSG4xjCLkIpQOZZ3Mjbg8aGCCi4G69qR+OjNpOeGI7N2EQlfK/WE8BEHOW5vdjSyglNqcYbQBWRw==";
      }
    );
    "node_modules/@jimp/plugin-threshold/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/plugin-threshold/-/plugin-threshold-1.6.0.tgz";
        hash = "sha512-M59m5dzLoHOVWdM41O8z9SyySzcDn43xHseOH0HavjsfQsT56GGCC4QzU1banJidbUrePhzoEdS42uFE8Fei8w==";
      }
    );
    "node_modules/@jimp/types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/types/-/types-1.6.0.tgz";
        hash = "sha512-7UfRsiKo5GZTAATxm2qQ7jqmUXP0DxTArztllTcYdyw6Xi5oT4RaoXynVtCD4UyLK5gJgkZJcwonoijrhYFKfg==";
      }
    );
    "node_modules/@jimp/utils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jimp/utils/-/utils-1.6.0.tgz";
        hash = "sha512-gqFTGEosKbOkYF/WFj26jMHOI5OH2jeP1MmC/zbK6BF6VJBf8rIC5898dPfSzZEbSA0wbbV5slbntWVc5PKLFA==";
      }
    );
    "node_modules/@jridgewell/gen-mapping/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/gen-mapping/-/gen-mapping-0.3.13.tgz";
        hash = "sha512-2kkt/7niJ6MgEPxF0bYdQ6etZaA+fQvDcLKckhy1yIQOzaoKjBBjSj63/aLVjYE3qhRt5dvM+uUyfCg6UKCBbA==";
      }
    );
    "node_modules/@jridgewell/resolve-uri/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.2.tgz";
        hash = "sha512-bRISgCIjP20/tbWSPWMEi54QVPRZExkuD9lJL+UIxUKtwVJA8wW1Trb1jMs1RFXo1CBTNZ/5hpC9QvmKWdopKw==";
      }
    );
    "node_modules/@jridgewell/sourcemap-codec/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.5.5.tgz";
        hash = "sha512-cYQ9310grqxueWbl+WuIUIaiUaDcj7WOq5fVhEljNVgRfOUhY9fy2zTvfoqWsnebh8Sl70VScFbICvJnLKB0Og==";
      }
    );
    "node_modules/@jridgewell/trace-mapping/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.31.tgz";
        hash = "sha512-zzNR+SdQSDJzc8joaeP8QQoCQr8NuYx2dIIytl1QeBEZHJ9uW6hebsrYgbz8hJwUQao3TWCMtmfV8Nu1twOLAw==";
      }
    );
    "node_modules/@mixmark-io/domino/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@mixmark-io/domino/-/domino-2.2.0.tgz";
        hash = "sha512-Y28PR25bHXUg88kCV7nivXrP2Nj2RueZ3/l/jdx6J9f8J4nsEGcgX0Qe6lt7Pa+J79+kPiJU3LguR6O/6zrLOw==";
      }
    );
    "node_modules/@modelcontextprotocol/sdk/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@modelcontextprotocol/sdk/-/sdk-1.29.0.tgz";
        hash = "sha512-zo37mZA9hJWpULgkRpowewez1y6ML5GsXJPY8FI0tBBCd77HEvza4jDqRKOXgHNn867PVGCyTdzqpz0izu5ZjQ==";
      }
    );
    "node_modules/@mozilla/readability/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@mozilla/readability/-/readability-0.6.0.tgz";
        hash = "sha512-juG5VWh4qAivzTAeMzvY9xs9HY5rAcr2E4I7tiSSCokRFi7XIZCAu92ZkSTsIj1OPceCifL3cpfteP3pDT9/QQ==";
      }
    );
    "node_modules/@opencode-ai/plugin/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opencode-ai/plugin/-/plugin-1.4.0.tgz";
        hash = "sha512-VFIff6LHp/RVaJdrK3EQ1ijx0K1tV5i1DY5YJ+pRqwC6trunPHbvqSN0GHSTZX39RdnSc+XuzCTZQCy1W2qNOg==";
      }
    );
    "node_modules/@opencode-ai/sdk/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opencode-ai/sdk/-/sdk-1.4.0.tgz";
        hash = "sha512-mfa3MzhqNM+Az4bgPDDXL3NdG+aYOHClXmT6/4qLxf2ulyfPpMNHqb9Dfmo4D8UfmrDsPuJHmbune73/nUQnuw==";
      }
    );
    "node_modules/@opentui/core/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core/-/core-0.1.107.tgz";
        hash = "sha512-gadu9EtNR+sOGyHN0buZryllavkWHRkCcX4yW/1ldp/l7HGS52hvkjYmo+74cuzUcfds/5Rbw2cgiy0Z7RxXmQ==";
      }
    );
    "node_modules/@opentui/core-darwin-arm64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core-darwin-arm64/-/core-darwin-arm64-0.1.107.tgz";
        hash = "sha512-Yqt2/9Ntw0IdtPA/qmHvXCE16y4Jq5/btCmuzN9/opzqZ5rYGYYVtiBii3LezGcTZYuJQZthjvh8MLPXXwA2EQ==";
      }
    );
    "node_modules/@opentui/core-darwin-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core-darwin-x64/-/core-darwin-x64-0.1.107.tgz";
        hash = "sha512-p6yeHsIWRLy/J30nZTyUuwgFYEpk8NS0H0Cmh9P8a1+eHA406MMMP4FAC0YpqlF4SHb7R7LNkUSsfCx9yMtS8w==";
      }
    );
    "node_modules/@opentui/core-linux-arm64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core-linux-arm64/-/core-linux-arm64-0.1.107.tgz";
        hash = "sha512-w6MpRTd06KUH4KdgH4x7rVB2I67KE62w3W3jQVBDEMeJejdJVOSwwUdgaTY9ffoHglcZc3WA2PFH1PCpgzna4A==";
      }
    );
    "node_modules/@opentui/core-linux-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core-linux-x64/-/core-linux-x64-0.1.107.tgz";
        hash = "sha512-oxKbIpWZRgY+8KQZ9dXq8lzDEhMVpBMCiZGDiHtK8/DP1MvK5kFE/vtwgUK9YkmT4OSgZsFeojjvyePXV+PcfQ==";
      }
    );
    "node_modules/@opentui/core-win32-arm64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core-win32-arm64/-/core-win32-arm64-0.1.107.tgz";
        hash = "sha512-T7hbLgoTkb5eAsP5GJdTRyDl48WI/hMEtj+BGlIITzSaOBSN7ZPCeblcfUz+uXrdF6g3dF1a9uyEQSJlzeGaKA==";
      }
    );
    "node_modules/@opentui/core-win32-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/core-win32-x64/-/core-win32-x64-0.1.107.tgz";
        hash = "sha512-e/uFLPyKK/hFDvDZtTxp6L3Zx0FWuZv5Gf2qIKf/7FAAadD0hala+K41OJAmYWxu1X3cT5XozKCT8gN/S1N08A==";
      }
    );
    "node_modules/@opentui/solid/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opentui/solid/-/solid-0.1.107.tgz";
        hash = "sha512-zi5wbb5SsU2x70XZ1L+fBGz2BdA1TzBIgqjAlmWqOrtQai4rQzexSuz8kMzKNP6uIsDsDu3FGtgr3G9bTt9Gxg==";
      }
    );
    "node_modules/@tokenizer/token/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@tokenizer/token/-/token-0.3.0.tgz";
        hash = "sha512-OvjF+z51L3ov0OyAU0duzsYuvO01PH7x4t6DJx+guahgTnBHkhJdG7soQeTSFLWN3efnHyibZ4Z8l2EuWwJN3A==";
      }
    );
    "node_modules/@types/node/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-16.9.1.tgz";
        hash = "sha512-QpLcX9ZSsq3YYUUnD3nFDY8H7wctAhQj/TFKL8Ya8v5fMm3CFXxo8zStsLAl780ltoYoo1WvKUVGBQK+1ifr7g==";
      }
    );
    "node_modules/@webgpu/types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@webgpu/types/-/types-0.1.69.tgz";
        hash = "sha512-RPmm6kgRbI8e98zSD3RVACvnuktIja5+yLgDAkTmxLr90BEwdTXRQWNLF3ETTTyH/8mKhznZuN5AveXYFEsMGQ==";
      }
    );
    "node_modules/abort-controller/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/abort-controller/-/abort-controller-3.0.0.tgz";
        hash = "sha512-h8lQ8tacZYnR3vNQTgibj+tODHI5/+l06Au2Pcriv/Gmet0eaj4TwWH41sO9wnHDiQsEj19q0drzdWdeAHtweg==";
      }
    );
    "node_modules/accepts/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/accepts/-/accepts-2.0.0.tgz";
        hash = "sha512-5cvg6CtKwfgdmVqY1WIiXKc3Q1bkRqGLi+2W/6ao+6Y7gu/RCwRuAhGEzh5B4KlszSuTLgZYuqFqo5bImjNKng==";
      }
    );
    "node_modules/agent-base/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/agent-base/-/agent-base-7.1.4.tgz";
        hash = "sha512-MnA+YT8fwfJPgBx3m60MNqakm30XOkyIoH1y6huTQvC0PwZG7ki8NacLBcrPbNoo8vEZy7Jpuk7+jMO+CUovTQ==";
      }
    );
    "node_modules/ajv/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ajv/-/ajv-8.18.0.tgz";
        hash = "sha512-PlXPeEWMXMZ7sPYOHqmDyCJzcfNrUr3fGNKtezX14ykXOEIvyK81d+qydx89KY5O71FKMPaQ2vBfBFI5NHR63A==";
      }
    );
    "node_modules/ajv-formats/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ajv-formats/-/ajv-formats-3.0.1.tgz";
        hash = "sha512-8iUql50EUR+uUcdRQ3HDqa6EVyo3docL8g5WJ3FNcWmu62IbkGUue/pEyLBW8VGKKucTPgqeks4fIU1DA4yowQ==";
      }
    );
    "node_modules/ansi-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-6.2.2.tgz";
        hash = "sha512-Bq3SmSpyFHaWjPk8If9yc6svM8c56dB5BAtW4Qbw5jHTwwXXcTLoRMkpDJp6VL0XzlWaCHTXrkFURMYmD0sLqg==";
      }
    );
    "node_modules/any-base/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/any-base/-/any-base-1.1.0.tgz";
        hash = "sha512-uMgjozySS8adZZYePpaWs8cxB9/kdzmpX6SgJZ+wbz1K5eYk5QMYDVJaZKhxyIHUdnnJkfR7SVgStgH7LkGUyg==";
      }
    );
    "node_modules/await-to-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/await-to-js/-/await-to-js-3.0.0.tgz";
        hash = "sha512-zJAaP9zxTcvTHRlejau3ZOY4V7SRpiByf3/dxx2uyKxxor19tpmpV2QRsTKikckwhaPmr2dVpxxMr7jOCYVp5g==";
      }
    );
    "node_modules/babel-plugin-jsx-dom-expressions/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-jsx-dom-expressions/-/babel-plugin-jsx-dom-expressions-0.40.6.tgz";
        hash = "sha512-v3P1MW46Lm7VMpAkq0QfyzLWWkC8fh+0aE5Km4msIgDx5kjenHU0pF2s+4/NH8CQn/kla6+Hvws+2AF7bfV5qQ==";
      }
    );
    "node_modules/babel-plugin-module-resolver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-module-resolver/-/babel-plugin-module-resolver-5.0.2.tgz";
        hash = "sha512-9KtaCazHee2xc0ibfqsDeamwDps6FZNo5S0Q81dUqEuFzVwPhcT4J5jOqIVvgCA3Q/wO9hKYxN/Ds3tIsp5ygg==";
      }
    );
    "node_modules/babel-preset-solid/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/babel-preset-solid/-/babel-preset-solid-1.9.12.tgz";
        hash = "sha512-LLqnuKVDlKpyBlMPcH6qEvs/wmS9a+NczppxJ3ryS/c0O5IiSFOIBQi9GzyiGDSbcJpx4Gr87jyFTos1MyEuWg==";
      }
    );
    "node_modules/balanced-match/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
        hash = "sha512-3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
      }
    );
    "node_modules/base64-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/base64-js/-/base64-js-1.5.1.tgz";
        hash = "sha512-AKpaYlHn8t4SVbOHCy+b5+KKgvR4vrsD8vbvrbiQJps7fKDTkjkDry6ji0rUJjC0kzbNePLwzxq8iypo41qeWA==";
      }
    );
    "node_modules/baseline-browser-mapping/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/baseline-browser-mapping/-/baseline-browser-mapping-2.10.24.tgz";
        hash = "sha512-I2NkZOOrj2XuguvWCK6OVh9GavsNjZjK908Rq3mIBK25+GD8vPX5w2WdxVqnQ7xx3SrZJiCiZFu+/Oz50oSYSA==";
      }
    );
    "node_modules/bmp-ts/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bmp-ts/-/bmp-ts-1.0.9.tgz";
        hash = "sha512-cTEHk2jLrPyi+12M3dhpEbnnPOsaZuq7C45ylbbQIiWgDFZq4UVYPEY5mlqjvsj/6gJv9qX5sa+ebDzLXT28Vw==";
      }
    );
    "node_modules/body-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/body-parser/-/body-parser-2.2.2.tgz";
        hash = "sha512-oP5VkATKlNwcgvxi0vM0p/D3n2C3EReYVX+DNYs5TjZFn/oQt2j+4sVJtSMr18pdRr8wjTcBl6LoV+FUwzPmNA==";
      }
    );
    "node_modules/brace-expansion/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-2.1.0.tgz";
        hash = "sha512-TN1kCZAgdgweJhWWpgKYrQaMNHcDULHkWwQIspdtjV4Y5aurRdZpjAqn6yX3FPqTA9ngHCc4hJxMAMgGfve85w==";
      }
    );
    "node_modules/browserslist/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/browserslist/-/browserslist-4.28.2.tgz";
        hash = "sha512-48xSriZYYg+8qXna9kwqjIVzuQxi+KYWp2+5nCYnYKPTr0LvD89Jqk2Or5ogxz0NUMfIjhh2lIUX/LyX9B4oIg==";
      }
    );
    "node_modules/buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/buffer/-/buffer-6.0.3.tgz";
        hash = "sha512-FTiCpNxtwiZZHEZbcbTIcZjERVICn9yq/pDFkTl95/AxzD1naBctN7YO68riM/gLSDY7sdrMby8hofADYuuqOA==";
      }
    );
    "node_modules/bun-ffi-structs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bun-ffi-structs/-/bun-ffi-structs-0.1.2.tgz";
        hash = "sha512-Lh1oQAYHDcnesJauieA4UNkWGXY9hYck7OA5IaRwE3Bp6K2F2pJSNYqq+hIy7P3uOvo3km3oxS8304g5gDMl/w==";
      }
    );
    "node_modules/bun-webgpu/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bun-webgpu/-/bun-webgpu-0.1.7.tgz";
        hash = "sha512-KUxUp+oQIf7pPBMD4Hv1TUu7DWaOZ4ciKulTk9to9+Uc8yHoYrMW7L2SJCJ4FHHkywgf/7aLRgRx0b7i6DvGIQ==";
      }
    );
    "node_modules/bun-webgpu-darwin-arm64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bun-webgpu-darwin-arm64/-/bun-webgpu-darwin-arm64-0.1.7.tgz";
        hash = "sha512-mRrFFyHzPWjsTRidAZBRcu808CPQBOUL0P6b4nxLhp+XHcV/mbUHERZMgW9s58tsojQfSdzschiQa8q+JCgRWA==";
      }
    );
    "node_modules/bun-webgpu-darwin-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bun-webgpu-darwin-x64/-/bun-webgpu-darwin-x64-0.1.7.tgz";
        hash = "sha512-g0NXGNgvaVCSH/jCWWlfdiquOHkbUN6vP4zqzSkIxWKQeLnqm3oADcok7SO3yIgI7v5mKpRc/ks7NDEKNH+jNQ==";
      }
    );
    "node_modules/bun-webgpu-linux-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bun-webgpu-linux-x64/-/bun-webgpu-linux-x64-0.1.7.tgz";
        hash = "sha512-UEP7UZdEhx9otvkZczjsszL8ZVlrODANQvgl+C88/bNVmxDoFi7w1fWzGi1sZyakiETjmtFDq2/xCLhbSZxjqw==";
      }
    );
    "node_modules/bun-webgpu-win32-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bun-webgpu-win32-x64/-/bun-webgpu-win32-x64-0.1.7.tgz";
        hash = "sha512-KZktiFkBz6sN7PEm1NVdeaLP5Q5X/PlSHZqefY4nNuWtf0LNvh54NhZe7yVv/Plz/nGbv92b0KHMBY3ki/pp6g==";
      }
    );
    "node_modules/bytes/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bytes/-/bytes-3.1.2.tgz";
        hash = "sha512-/Nf7TyzTx6S3yRJObOAV7956r8cr2+Oj8AC5dt8wSP3BQAoeX58NoHyCU8P8zGkNXStjTSi6fzO6F0pBdcYbEg==";
      }
    );
    "node_modules/call-bind-apply-helpers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/call-bind-apply-helpers/-/call-bind-apply-helpers-1.0.2.tgz";
        hash = "sha512-Sp1ablJ0ivDkSzjcaJdxEunN5/XvksFJ2sMBFfq6x0ryhQV/2b/KwFe21cMpmHtPOSij8K99/wSfoEuTObmuMQ==";
      }
    );
    "node_modules/call-bound/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/call-bound/-/call-bound-1.0.4.tgz";
        hash = "sha512-+ys997U96po4Kx/ABpBCqhA9EuxJaQWDQg7295H4hBphv3IZg0boBKuwYpt4YXp6MZ5AmZQnU/tyMTlRpaSejg==";
      }
    );
    "node_modules/caniuse-lite/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/caniuse-lite/-/caniuse-lite-1.0.30001791.tgz";
        hash = "sha512-yk0l/YSrOnFZk3UROpDLQD9+kC1l4meK/wed583AXrzoarMGJcbRi2Q4RaUYbKxYAsZ8sWmaSa/DsLmdBeI1vQ==";
      }
    );
    "node_modules/content-disposition/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/content-disposition/-/content-disposition-1.1.0.tgz";
        hash = "sha512-5jRCH9Z/+DRP7rkvY83B+yGIGX96OYdJmzngqnw2SBSxqCFPd0w2km3s5iawpGX8krnwSGmF0FW5Nhr0Hfai3g==";
      }
    );
    "node_modules/content-type/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/content-type/-/content-type-1.0.5.tgz";
        hash = "sha512-nTjqfcBFEipKdXCv4YDQWCfmcLZKm81ldF0pAopTvyrFGVbcR6P/VAAd5G7N+0tTr8QqiU0tFadD6FK4NtJwOA==";
      }
    );
    "node_modules/convert-source-map/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-2.0.0.tgz";
        hash = "sha512-Kvp459HrV2FEJ1CAsi1Ku+MY3kasH19TFykTz2xWmMeq6bk2NU3XXvfJ+Q61m0xktWwt+1HSYf3JZsTms3aRJg==";
      }
    );
    "node_modules/cookie/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cookie/-/cookie-0.7.2.tgz";
        hash = "sha512-yki5XnKuf750l50uGTllt6kKILY4nQ1eNIQatoXEByZ5dWgnKqbnqmTrBE5B4N7lrMJKQ2ytWMiTO2o0v6Ew/w==";
      }
    );
    "node_modules/cookie-signature/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.2.2.tgz";
        hash = "sha512-D76uU73ulSXrD1UXF4KE2TMxVVwhsnCgfAyTg9k8P6KGZjlXKrOLe4dJQKI3Bxi5wjesZoFXJWElNWBjPZMbhg==";
      }
    );
    "node_modules/cors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cors/-/cors-2.8.6.tgz";
        hash = "sha512-tJtZBBHA6vjIAaF6EnIaq6laBBP9aq/Y3ouVJjEfoHbRBcHBAHYcMh/w8LDrk2PvIMMq8gmopa5D4V8RmbrxGw==";
      }
    );
    "node_modules/cross-spawn/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.6.tgz";
        hash = "sha512-uV2QOWP2nWzsy2aMp8aRibhi9dlzF5Hgh5SHaB9OiTGEyDTiJJyx0uy51QXdyWbtAHNua4XJzUKca3OzKUd3vA==";
      }
    );
    "node_modules/cssstyle/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cssstyle/-/cssstyle-4.6.0.tgz";
        hash = "sha512-2z+rWdzbbSZv6/rhtvzvqeZQHrBaqgogqt85sqFNbabZOuFbCVFb8kPeEtZjiKkbrm395irpNKiYeFeLiQnFPg==";
      }
    );
    "node_modules/csstype/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/csstype/-/csstype-3.2.3.tgz";
        hash = "sha512-z1HGKcYy2xA8AGQfwrn0PAy+PB7X/GSj3UVJW9qKyn43xWa+gl5nXmU4qqLMRzWVLFC8KusUX8T/0kCiOYpAIQ==";
      }
    );
    "node_modules/data-urls/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/data-urls/-/data-urls-5.0.0.tgz";
        hash = "sha512-ZYP5VBHshaDAiVZxjbRVcFJpc+4xGgT0bK3vzy1HLN8jTO975HEbuYzZJcHoQEY5K1a0z8YayJkyVETa08eNTg==";
      }
    );
    "node_modules/debug/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-4.4.3.tgz";
        hash = "sha512-RGwwWnwQvkVfavKVt22FGLw+xYSdzARwm0ru6DhTVA3umU5hZc28V3kO4stgYryrTlLpuvgI9GiijltAjNbcqA==";
      }
    );
    "node_modules/decimal.js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/decimal.js/-/decimal.js-10.6.0.tgz";
        hash = "sha512-YpgQiITW3JXGntzdUmyUR1V812Hn8T1YVXhCu+wO3OpS4eU9l4YdD3qjyiKdV6mvV29zapkMeD390UVEf2lkUg==";
      }
    );
    "node_modules/depd/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/depd/-/depd-2.0.0.tgz";
        hash = "sha512-g7nH6P6dyDioJogAAGprGpCtVImJhpPk/roCzdb3fIh61/s/nPsfR6onyMwkCAR/OlC3yBC0lESvUoQEAssIrw==";
      }
    );
    "node_modules/detect-libc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/detect-libc/-/detect-libc-2.1.2.tgz";
        hash = "sha512-Btj2BOOO83o3WyH59e8MgXsxEQVcarkUOpEYrubB0urwnN10yQ364rsiByU11nZlqWYZm05i/of7io4mzihBtQ==";
      }
    );
    "node_modules/diff/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/diff/-/diff-8.0.2.tgz";
        hash = "sha512-sSuxWU5j5SR9QQji/o2qMvqRNYRDOcBTgsJ/DeCf4iSN4gW+gNMXM7wFIP+fdXZxoNiAnHUTGjCr+TSWXdRDKg==";
      }
    );
    "node_modules/dunder-proto/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/dunder-proto/-/dunder-proto-1.0.1.tgz";
        hash = "sha512-KIN/nDJBQRcXw0MLVhZE9iQHmG68qAVIBg9CqmUYjmQIhgij9U5MFvrqkUL5FbtyyzZuOeOt0zdeRe4UY7ct+A==";
      }
    );
    "node_modules/ee-first/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
        hash = "sha512-WMwm9LhRUo+WUaRN+vRuETqG89IgZphVSNkdFgeb6sS/E4OrDIN7t48CAewSHXc6C8lefD8KKfr5vY61brQlow==";
      }
    );
    "node_modules/electron-to-chromium/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/electron-to-chromium/-/electron-to-chromium-1.5.345.tgz";
        hash = "sha512-F9JXQGiMrz6yVNPI2qOVPvB9HzjH5cGzhs8oJ6A28V5L/YnzN/0KsuiibqF+F1Fd9qxFzD1BUnYSd8JfULxTwg==";
      }
    );
    "node_modules/emoji-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-10.6.0.tgz";
        hash = "sha512-toUI84YS5YmxW219erniWD0CIVOo46xGKColeNQRgOzDorgBi1v4D71/OFzgD9GO2UGKIv1C3Sp8DAn0+j5w7A==";
      }
    );
    "node_modules/encodeurl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/encodeurl/-/encodeurl-2.0.0.tgz";
        hash = "sha512-Q0n9HRi4m6JuGIV1eFlmvJB7ZEVxu93IrMyiMsGC0lrMJMWzRgx6WGquyfQgZVb31vhGgXnfmPNNXmxnOkRBrg==";
      }
    );
    "node_modules/entities/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/entities/-/entities-7.0.1.tgz";
        hash = "sha512-TWrgLOFUQTH994YUyl1yT4uyavY5nNB5muff+RtWaqNVCAK408b5ZnnbNAUEWLTCpum9w6arT70i1XdQ4UeOPA==";
      }
    );
    "node_modules/es-define-property/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/es-define-property/-/es-define-property-1.0.1.tgz";
        hash = "sha512-e3nRfgfUZ4rNGL232gUgX06QNyyez04KdjFrF+LTRoOXmrOgFKDg4BCdsjW8EnT69eqdYGmRpJwiPVYNrCaW3g==";
      }
    );
    "node_modules/es-errors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/es-errors/-/es-errors-1.3.0.tgz";
        hash = "sha512-Zf5H2Kxt2xjTvbJvP2ZWLEICxA6j+hAmMzIlypy4xcBg1vKVnx89Wy0GbS+kf5cwCVFFzdCFh2XSCFNULS6csw==";
      }
    );
    "node_modules/es-object-atoms/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/es-object-atoms/-/es-object-atoms-1.1.1.tgz";
        hash = "sha512-FGgH2h8zKNim9ljj7dankFPcICIK9Cp5bm+c2gQSYePhpaG5+esrLODihIorn+Pe6FGJzWhXQotPv73jTaldXA==";
      }
    );
    "node_modules/escalade/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/escalade/-/escalade-3.2.0.tgz";
        hash = "sha512-WUj2qlxaQtO4g6Pq5c29GTcWGDyd8itL8zTlipgECz3JesAiiOKotd8JU6otB3PACgG6xkJUyVhboMS+bje/jA==";
      }
    );
    "node_modules/escape-html/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
        hash = "sha512-NiSupZ4OeuGwr68lGIeym/ksIZMJodUGOSCZ/FSnTxcrekbvqrgdUxlJOMpijaKZVjAJrWrGs/6Jy8OMuyj9ow==";
      }
    );
    "node_modules/etag/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/etag/-/etag-1.8.1.tgz";
        hash = "sha512-aIL5Fx7mawVa300al2BnEE4iNvo1qETxLrPI/o05L7z6go7fCw1J6EQmbK4FmJ2AS7kgVF/KEZWufBfdClMcPg==";
      }
    );
    "node_modules/event-target-shim/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/event-target-shim/-/event-target-shim-5.0.1.tgz";
        hash = "sha512-i/2XbnSz/uxRCU6+NdVJgKWDTM427+MqYbkQzD321DuCQJUqOuJKIA0IM2+W2xtYHdKOmZ4dR6fExsd4SXL+WQ==";
      }
    );
    "node_modules/events/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/events/-/events-3.3.0.tgz";
        hash = "sha512-mQw+2fkQbALzQ7V0MY0IqdnXNOeTtP4r0lN9z7AAawCXgqea7bDii20AYrIBrFd/Hx0M2Ocz6S111CaFkUcb0Q==";
      }
    );
    "node_modules/eventsource/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/eventsource/-/eventsource-3.0.7.tgz";
        hash = "sha512-CRT1WTyuQoD771GW56XEZFQ/ZoSfWid1alKGDYMmkt2yl8UXrVR4pspqWNEcqKvVIzg6PAltWjxcSSPrboA4iA==";
      }
    );
    "node_modules/eventsource-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/eventsource-parser/-/eventsource-parser-3.0.6.tgz";
        hash = "sha512-Vo1ab+QXPzZ4tCa8SwIHJFaSzy4R6SHf7BY79rFBDf0idraZWAkYrDjDj8uWaSm3S2TK+hJ7/t1CEmZ7jXw+pg==";
      }
    );
    "node_modules/exif-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/exif-parser/-/exif-parser-0.1.12.tgz";
        hash = "sha512-c2bQfLNbMzLPmzQuOr8fy0csy84WmwnER81W88DzTp9CYNPJ6yzOj2EZAh9pywYpqHnshVLHQJ8WzldAyfY+Iw==";
      }
    );
    "node_modules/express/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/express/-/express-5.2.1.tgz";
        hash = "sha512-hIS4idWWai69NezIdRt2xFVofaF4j+6INOpJlVOLDO8zXGpUVEVzIYk12UUi2JzjEzWL3IOAxcTubgz9Po0yXw==";
      }
    );
    "node_modules/express-rate-limit/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/express-rate-limit/-/express-rate-limit-8.3.2.tgz";
        hash = "sha512-77VmFeJkO0/rvimEDuUC5H30oqUC4EyOhyGccfqoLebB0oiEYfM7nwPrsDsBL1gsTpwfzX8SFy2MT3TDyRq+bg==";
      }
    );
    "node_modules/fast-deep-equal/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz";
        hash = "sha512-f3qQ9oQy9j2AhBe/H9VC91wLmKBCCU/gDOnKNAYG5hswO7BLKj09Hc5HYNz9cGI++xlpDCIgDaitVs03ATR84Q==";
      }
    );
    "node_modules/fast-uri/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-uri/-/fast-uri-3.1.0.tgz";
        hash = "sha512-iPeeDKJSWf4IEOasVVrknXpaBV0IApz/gp7S2bb7Z4Lljbl2MGJRqInZiUrQwV16cpzw/D3S5j5Julj/gT52AA==";
      }
    );
    "node_modules/file-type/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/file-type/-/file-type-16.5.4.tgz";
        hash = "sha512-/yFHK0aGjFEgDJjEKP0pWCplsPFPhwyfwevf/pVxiN0tmE4L9LmwWxWukdJSHdoCli4VgQLehjJtwQBnqmsKcw==";
      }
    );
    "node_modules/finalhandler/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/finalhandler/-/finalhandler-2.1.1.tgz";
        hash = "sha512-S8KoZgRZN+a5rNwqTxlZZePjT/4cnm0ROV70LedRHZ0p8u9fRID0hJUZQpkKLzro8LfmC8sx23bY6tVNxv8pQA==";
      }
    );
    "node_modules/find-babel-config/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/find-babel-config/-/find-babel-config-2.1.2.tgz";
        hash = "sha512-ZfZp1rQyp4gyuxqt1ZqjFGVeVBvmpURMqdIWXbPRfB97Bf6BzdK/xSIbylEINzQ0kB5tlDQfn9HkNXXWsqTqLg==";
      }
    );
    "node_modules/find-up/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/find-up/-/find-up-3.0.0.tgz";
        hash = "sha512-1yD6RmLI1XBfxugvORwlck6f75tYL+iR0jqwsOrOxMZyGYqUuDhJ0l4AXdO1iX/FTs9cBAMEk1gWSEx1kSbylg==";
      }
    );
    "node_modules/forwarded/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/forwarded/-/forwarded-0.2.0.tgz";
        hash = "sha512-buRG0fpBtRHSTCOASe6hD258tEubFoRLb4ZNA6NxMVHNw2gOcwHo9wyablzMzOA5z9xA9L1KNjk/Nt6MT9aYow==";
      }
    );
    "node_modules/fresh/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fresh/-/fresh-2.0.0.tgz";
        hash = "sha512-Rx/WycZ60HOaqLKAi6cHRKKI7zxWbJ31MhntmtwMoaTeF7XFH9hhBp8vITaMidfljRQ6eYWCKkaTK+ykVJHP2A==";
      }
    );
    "node_modules/fs.realpath/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        hash = "sha512-OO0pH2lK6a0hZnAdau5ItzHPI6pUlvI7jMVnxUQRtw4owF2wk8lOSabtGDCTP4Ggrg2MbGnWO9X8K1t4+fGMDw==";
      }
    );
    "node_modules/function-bind/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.2.tgz";
        hash = "sha512-7XHNxH7qX9xG5mIwxkhumTox/MIRNcOgDrxWsMt2pAr23WHp6MrRlN7FBSFpCpr+oVO0F744iUgR82nJMfG2SA==";
      }
    );
    "node_modules/gensync/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/gensync/-/gensync-1.0.0-beta.2.tgz";
        hash = "sha512-3hN7NaskYvMDLQY55gnW3NQ+mesEAepTqlg+VEbj7zzqEMBVNhzcGYYeqFo/TlYz6eQiFcp1HcsCZO+nGgS8zg==";
      }
    );
    "node_modules/get-east-asian-width/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-east-asian-width/-/get-east-asian-width-1.5.0.tgz";
        hash = "sha512-CQ+bEO+Tva/qlmw24dCejulK5pMzVnUOFOijVogd3KQs07HnRIgp8TGipvCCRT06xeYEbpbgwaCxglFyiuIcmA==";
      }
    );
    "node_modules/get-intrinsic/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-intrinsic/-/get-intrinsic-1.3.0.tgz";
        hash = "sha512-9fSjSaos/fRIVIp+xSJlE6lfwhES7LNtKaCBIamHsjr2na1BiABJPo0mOjjz8GJDURarmCPGqaiVg5mfjb98CQ==";
      }
    );
    "node_modules/get-proto/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-proto/-/get-proto-1.0.1.tgz";
        hash = "sha512-sTSfBjoXBp89JvIKIefqw7U2CCebsc74kiY6awiGogKtoSGbgjYE/G/+l9sF3MWFPNc9IcoOC4ODfKHfxFmp0g==";
      }
    );
    "node_modules/gifwrap/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/gifwrap/-/gifwrap-0.10.1.tgz";
        hash = "sha512-2760b1vpJHNmLzZ/ubTtNnEx5WApN/PYWJvXvgS+tL1egTTthayFYIQQNi136FLEDcN/IyEY2EcGpIITD6eYUw==";
      }
    );
    "node_modules/glob/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-9.3.5.tgz";
        hash = "sha512-e1LleDykUz2Iu+MTYdkSsuWX8lvAjAcs0Xef0lNIu0S2wOAzuTxCJtcd9S3cijlwYF18EsU3rzb8jPVobxDh9Q==";
      }
    );
    "node_modules/gopd/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/gopd/-/gopd-1.2.0.tgz";
        hash = "sha512-ZUKRh6/kUFoAiTAtTYPZJ3hw9wNxx+BIBOijnlG9PnrJsCcSjs1wyyD6vJpaYtgnzDrKYRSqf3OO6Rfa93xsRg==";
      }
    );
    "node_modules/has-symbols/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/has-symbols/-/has-symbols-1.1.0.tgz";
        hash = "sha512-1cDNdwJ2Jaohmb3sg4OmKaMBwuC48sYni5HUw2DvsC8LjGTLK9h+eb1X6RyuOHe4hT0ULCW68iomhjUoKUqlPQ==";
      }
    );
    "node_modules/hasown/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/hasown/-/hasown-2.0.2.tgz";
        hash = "sha512-0hJU9SCPvmMzIBdZFqNPXWa6dqh7WdH0cII9y+CyS8rG3nL48Bclra9HmKhVVUHyPWNH5Y7xDwAB7bfgSjkUMQ==";
      }
    );
    "node_modules/hono/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/hono/-/hono-4.12.12.tgz";
        hash = "sha512-p1JfQMKaceuCbpJKAPKVqyqviZdS0eUxH9v82oWo1kb9xjQ5wA6iP3FNVAPDFlz5/p7d45lO+BpSk1tuSZMF4Q==";
      }
    );
    "node_modules/html-encoding-sniffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/html-encoding-sniffer/-/html-encoding-sniffer-4.0.0.tgz";
        hash = "sha512-Y22oTqIU4uuPgEemfz7NDJz6OeKf12Lsu+QC+s3BVpda64lTiMYCyGwg5ki4vFxkMwQdeZDl2adZoqUgdFuTgQ==";
      }
    );
    "node_modules/html-entities/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/html-entities/-/html-entities-2.3.3.tgz";
        hash = "sha512-DV5Ln36z34NNTDgnz0EWGBLZENelNAtkiFA4kyNOG2tDI6Mz1uSWiq1wAKdyjnJwyDiDO7Fa2SO1CTxPXL8VxA==";
      }
    );
    "node_modules/http-errors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/http-errors/-/http-errors-2.0.1.tgz";
        hash = "sha512-4FbRdAX+bSdmo4AUFuS0WNiPz8NgFt+r8ThgNWmlrjQjt1Q7ZR9+zTlce2859x4KSXrwIsaeTqDoKQmtP8pLmQ==";
      }
    );
    "node_modules/http-proxy-agent/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/http-proxy-agent/-/http-proxy-agent-7.0.2.tgz";
        hash = "sha512-T1gkAiYYDWYx3V5Bmyu7HcfcvL7mUrTWiM6yOfa3PIphViJ/gFPbvidQ+veqSOHci/PxBcDabeUNCzpOODJZig==";
      }
    );
    "node_modules/https-proxy-agent/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/https-proxy-agent/-/https-proxy-agent-7.0.6.tgz";
        hash = "sha512-vK9P5/iUfdl95AI+JVyUuIcVtd4ofvtrOr3HNtM2yxC9bnMbEdp3x01OhQNnjb8IJYi38VlTE3mBXwcfvywuSw==";
      }
    );
    "node_modules/iconv-lite/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.7.2.tgz";
        hash = "sha512-im9DjEDQ55s9fL4EYzOAv0yMqmMBSZp6G0VvFyTMPKWxiSBHUj9NW/qqLmXUwXrrM7AvqSlTCfvqRb0cM8yYqw==";
      }
    );
    "node_modules/ieee754/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ieee754/-/ieee754-1.2.1.tgz";
        hash = "sha512-dcyqhDvX1C46lXZcVqCpK+FtMRQVdIMN6/Df5js2zouUsqG7I6sFxitIC+7KYK29KdXOLHdu9zL4sFnoVQnqaA==";
      }
    );
    "node_modules/image-q/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/image-q/-/image-q-4.0.0.tgz";
        hash = "sha512-PfJGVgIfKQJuq3s0tTDOKtztksibuUEbJQIYT3by6wctQo+Rdlh7ef4evJ5NCdxY4CfMbvFkocEwbl4BF8RlJw==";
      }
    );
    "node_modules/inherits/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        hash = "sha512-k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      }
    );
    "node_modules/ip-address/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ip-address/-/ip-address-10.1.0.tgz";
        hash = "sha512-XXADHxXmvT9+CRxhXg56LJovE+bmWnEWB78LB83VZTprKTmaC5QfruXocxzTZ2Kl0DNwKuBdlIhjL8LeY8Sf8Q==";
      }
    );
    "node_modules/ipaddr.js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.9.1.tgz";
        hash = "sha512-0KI/607xoxSToH7GjN1FfSbLoU0+btTicjsQSWQlh/hZykN8KpmMf7uYwPW3R+akZ6R/w18ZlXSHBYXiYUPO3g==";
      }
    );
    "node_modules/is-core-module/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-core-module/-/is-core-module-2.16.1.tgz";
        hash = "sha512-UfoeMA6fIJ8wTYFEUjelnaGI67v6+N7qXJEvQuIGa99l4xsCruSYOVSQ0uPANn4dAzm8lkYPaKLrrijLq7x23w==";
      }
    );
    "node_modules/is-potential-custom-element-name/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-potential-custom-element-name/-/is-potential-custom-element-name-1.0.1.tgz";
        hash = "sha512-bCYeRA2rVibKZd+s2625gGnGF/t7DSqDs4dP7CrLA1m7jKWz6pps0LpYLJN8Q64HtmPKJ1hrN3nzPNKFEKOUiQ==";
      }
    );
    "node_modules/is-promise/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-promise/-/is-promise-4.0.0.tgz";
        hash = "sha512-hvpoI6korhJMnej285dSg6nu1+e6uxs7zG3BYAm5byqDsgJNWwxzM6z6iZiAgQR4TJ30JmBTOwqZUw3WlyH3AQ==";
      }
    );
    "node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        hash = "sha512-RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
      }
    );
    "node_modules/jimp/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jimp/-/jimp-1.6.0.tgz";
        hash = "sha512-YcwCHw1kiqEeI5xRpDlPPBGL2EOpBKLwO4yIBJcXWHPj5PnA5urGq0jbyhM5KoNpypQ6VboSoxc9D8HyfvngSg==";
      }
    );
    "node_modules/jose/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jose/-/jose-6.2.2.tgz";
        hash = "sha512-d7kPDd34KO/YnzaDOlikGpOurfF0ByC2sEV4cANCtdqLlTfBlw2p14O/5d/zv40gJPbIQxfES3nSx1/oYNyuZQ==";
      }
    );
    "node_modules/jpeg-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jpeg-js/-/jpeg-js-0.4.4.tgz";
        hash = "sha512-WZzeDOEtTOBK4Mdsar0IqEU5sMr3vSV2RqkAIzUEV2BHnUfKGyswWFPFwK5EeDo93K3FohSHbLAjj0s1Wzd+dg==";
      }
    );
    "node_modules/js-tokens/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/js-tokens/-/js-tokens-4.0.0.tgz";
        hash = "sha512-RdJUflcE3cUzKiMqQgsCu06FPu9UdIJO0beYbPhHN4k6apgJtifcoCtT9bcxOpYBtpD2kCM6Sbzg4CausW/PKQ==";
      }
    );
    "node_modules/jsdom/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jsdom/-/jsdom-26.1.0.tgz";
        hash = "sha512-Cvc9WUhxSMEo4McES3P7oK3QaXldCfNWp7pl2NNeiIFlCoLr3kfq9kb1fxftiwk1FLV7CvpvDfonxtzUDeSOPg==";
      }
    );
    "node_modules/jsesc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jsesc/-/jsesc-3.1.0.tgz";
        hash = "sha512-/sM3dO2FOzXjKQhJuo0Q173wf2KOo8t4I8vHy6lF9poUp7bKT0/NHE8fPX23PwfhnykfqnC2xRxOnVw5XuGIaA==";
      }
    );
    "node_modules/json-schema-traverse/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-1.0.0.tgz";
        hash = "sha512-NM8/P9n3XjXhIZn1lLhkFaACTOURQXjWhV4BA/RnOv8xvgqtqpAX9IO4mRQxSx1Rlo4tqzeqb0sOlruaOy3dug==";
      }
    );
    "node_modules/json-schema-typed/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/json-schema-typed/-/json-schema-typed-8.0.2.tgz";
        hash = "sha512-fQhoXdcvc3V28x7C7BMs4P5+kNlgUURe2jmUT1T//oBRMDrqy1QPelJimwZGo7Hg9VPV3EQV5Bnq4hbFy2vetA==";
      }
    );
    "node_modules/json5/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/json5/-/json5-2.2.3.tgz";
        hash = "sha512-XmOWe7eyHYH14cLdVPoyg+GOH3rYX++KpzrylJwSW98t3Nk+U8XOl8FWKOgwtzdb8lXGf6zYwDUzeHMWfxasyg==";
      }
    );
    "node_modules/locate-path/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/locate-path/-/locate-path-3.0.0.tgz";
        hash = "sha512-7AO748wWnIhNqAuaty2ZWHkQHRSNfPVIsPIfwEOWO22AmaoVrWavlOcMR5nzTLNYvp36X220/maaRsrec1G65A==";
      }
    );
    "node_modules/lru-cache/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-11.3.5.tgz";
        hash = "sha512-NxVFwLAnrd9i7KUBxC4DrUhmgjzOs+1Qm50D3oF1/oL+r1NpZ4gA7xvG0/zJ8evR7zIKn4vLf7qTNduWFtCrRw==";
      }
    );
    "node_modules/marked/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/marked/-/marked-17.0.1.tgz";
        hash = "sha512-boeBdiS0ghpWcSwoNm/jJBwdpFaMnZWRzjA6SkUMYb40SVaN1x7mmfGKp0jvexGcx+7y2La5zRZsYFZI6Qpypg==";
      }
    );
    "node_modules/math-intrinsics/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/math-intrinsics/-/math-intrinsics-1.1.0.tgz";
        hash = "sha512-/IXtbwEk5HTPyEwyKX6hGkYXxM9nbj64B+ilVJnC/R6B0pH5G4V3b0pVbL7DBj4tkhBAppbQUlf6F6Xl9LHu1g==";
      }
    );
    "node_modules/media-typer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/media-typer/-/media-typer-1.1.0.tgz";
        hash = "sha512-aisnrDP4GNe06UcKFnV5bfMNPBUw4jsLGaWwWfnH3v02GnBuXX2MCVn5RbrWo0j3pczUilYblq7fQ7Nw2t5XKw==";
      }
    );
    "node_modules/merge-descriptors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-2.0.0.tgz";
        hash = "sha512-Snk314V5ayFLhp3fkUREub6WtjBfPdCPY1Ln8/8munuLuiYhsABgBVWsozAG+MWMbVEvcdcpbi9R7ww22l9Q3g==";
      }
    );
    "node_modules/mime/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-3.0.0.tgz";
        hash = "sha512-jSCU7/VB1loIWBZe14aEYHU/+1UMEHoaO7qxCOVJOw9GgH72VAWppxNcjU+x9a2k3GSIBXNKxXQFqRvvZ7vr3A==";
      }
    );
    "node_modules/mime-db/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.54.0.tgz";
        hash = "sha512-aU5EJuIN2WDemCcAp2vFBfp/m4EAhWJnUNSSw0ixs7/kXbd6Pg64EmwJkNdFhB8aWt1sH2CTXrLxo/iAGV3oPQ==";
      }
    );
    "node_modules/mime-types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-3.0.2.tgz";
        hash = "sha512-Lbgzdk0h4juoQ9fCKXW4by0UJqj+nOOrI9MJ1sSj4nI8aI2eo1qmvQEie4VD1glsS250n15LsWsYtCugiStS5A==";
      }
    );
    "node_modules/minimatch/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-8.0.7.tgz";
        hash = "sha512-V+1uQNdzybxa14e/p00HZnQNNcTjnRJjDxg2V8wtkjFctq4M7hXFws4oekyTP0Jebeq7QYtpFyOeBAjc88zvYg==";
      }
    );
    "node_modules/minipass/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/minipass/-/minipass-4.2.8.tgz";
        hash = "sha512-fNzuVyifolSLFL4NzpF+wEF4qrgqaaKX0haXPQEdQ7NKAN+WecoKMHV09YcuL/DHxrUsYQOK3MiuDf7Ip2OXfQ==";
      }
    );
    "node_modules/ms/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz";
        hash = "sha512-6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA==";
      }
    );
    "node_modules/negotiator/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/negotiator/-/negotiator-1.0.0.tgz";
        hash = "sha512-8Ofs/AUQh8MaEcrlq5xOX0CQ9ypTF5dl78mjlMNfOK08fzpgTHQRQPBxcPlEtIw0yRpws+Zo/3r+5WRby7u3Gg==";
      }
    );
    "node_modules/node-releases/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/node-releases/-/node-releases-2.0.38.tgz";
        hash = "sha512-3qT/88Y3FbH/Kx4szpQQ4HzUbVrHPKTLVpVocKiLfoYvw9XSGOX2FmD2d6DrXbVYyAQTF2HeF6My8jmzx7/CRw==";
      }
    );
    "node_modules/nwsapi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/nwsapi/-/nwsapi-2.2.23.tgz";
        hash = "sha512-7wfH4sLbt4M0gCDzGE6vzQBo0bfTKjU7Sfpqy/7gs1qBfYz2vEJH6vXcBKpO3+6Yu1telwd0t9HpyOoLEQQbIQ==";
      }
    );
    "node_modules/object-assign/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
        hash = "sha512-rJgTQnkUnH1sFw8yT6VSU3zD3sWmu6sZhIseY8VX+GRu3P6F7Fu+JNDoXfklElbLJSnc3FUQHVe4cU5hj+BcUg==";
      }
    );
    "node_modules/object-inspect/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/object-inspect/-/object-inspect-1.13.4.tgz";
        hash = "sha512-W67iLl4J2EXEGTbfeHCffrjDfitvLANg0UlX3wFUUSTx92KXRFegMHUVgSqE+wvhAbi4WqjGg9czysTV2Epbew==";
      }
    );
    "node_modules/oh-my-opencode-slim/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/oh-my-opencode-slim/-/oh-my-opencode-slim-1.0.6.tgz";
        hash = "sha512-AUInssMmkQYXP94/qMwZ6GhKG7uibz9nIQLL5+8KTxQdwLoO6gGrE2C1aXD6HuQprV4aUYprIMx4DaBVmBByKg==";
      }
    );
    "node_modules/omggif/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/omggif/-/omggif-1.0.10.tgz";
        hash = "sha512-LMJTtvgc/nugXj0Vcrrs68Mn2D1r0zf630VNtqtpI1FEO7e+O9FP4gqs9AcnBaSEeoHIPm28u6qgPR0oyEpGSw==";
      }
    );
    "node_modules/on-finished/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/on-finished/-/on-finished-2.4.1.tgz";
        hash = "sha512-oVlzkg3ENAhCk2zdv7IJwd/QUD4z2RxRwpkcGY8psCVcCYZNq4wYnVWALHM+brtuJjePWiYF/ClmuDr8Ch5+kg==";
      }
    );
    "node_modules/once/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        hash = "sha512-lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
      }
    );
    "node_modules/p-limit/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz";
        hash = "sha512-//88mFWSJx8lxCzwdAABTJL2MyWB12+eIY7MDL2SqLmAkeKU9qxRvWuSyTjm3FUmpBEMuFfckAIqEaVGUDxb6w==";
      }
    );
    "node_modules/p-locate/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/p-locate/-/p-locate-3.0.0.tgz";
        hash = "sha512-x+12w/To+4GFfgJhBEpiDcLozRJGegY+Ei7/z0tSLkMmxGZNybVMSfWj9aJn8Z5Fc7dBUNJOOVgPv2H7IwulSQ==";
      }
    );
    "node_modules/p-try/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz";
        hash = "sha512-R4nPAVTAU0B9D35/Gk3uJf/7XYbQcyohSKdvAxIRSNghFl4e71hVoGnBNQz9cWaXxO2I10KTC+3jMdvvoKw6dQ==";
      }
    );
    "node_modules/pako/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pako/-/pako-1.0.11.tgz";
        hash = "sha512-4hLB8Py4zZce5s4yd9XzopqwVv/yGNhV1Bl8NTmCq1763HeK2+EwVTv+leGeL13Dnh2wfbqowVPXCIO0z4taYw==";
      }
    );
    "node_modules/parse-bmfont-ascii/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse-bmfont-ascii/-/parse-bmfont-ascii-1.0.6.tgz";
        hash = "sha512-U4RrVsUFCleIOBsIGYOMKjn9PavsGOXxbvYGtMOEfnId0SVNsgehXh1DxUdVPLoxd5mvcEtvmKs2Mmf0Mpa1ZA==";
      }
    );
    "node_modules/parse-bmfont-binary/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse-bmfont-binary/-/parse-bmfont-binary-1.0.6.tgz";
        hash = "sha512-GxmsRea0wdGdYthjuUeWTMWPqm2+FAd4GI8vCvhgJsFnoGhTrLhXDDupwTo7rXVAgaLIGoVHDZS9p/5XbSqeWA==";
      }
    );
    "node_modules/parse-bmfont-xml/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse-bmfont-xml/-/parse-bmfont-xml-1.1.6.tgz";
        hash = "sha512-0cEliVMZEhrFDwMh4SxIyVJpqYoOWDJ9P895tFuS+XuNzI5UBmBk5U5O4KuJdTnZpSBI4LFA2+ZiJaiwfSwlMA==";
      }
    );
    "node_modules/parse5/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse5/-/parse5-7.3.0.tgz";
        hash = "sha512-IInvU7fabl34qmi9gY8XOVxhYyMyuH2xUNpb2q8/Y+7552KlejkRvqvD19nMoUW/uQGGbqNpA6Tufu5FL5BZgw==";
      }
    );
    "node_modules/parseurl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.3.tgz";
        hash = "sha512-CiyeOxFT/JZyN5m0z9PfXw4SCBJ6Sygz1Dpl0wqjlhDEGGBP1GnsUVEL0p63hoG1fcj3fHynXi9NYO4nWOL+qQ==";
      }
    );
    "node_modules/path-exists/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-exists/-/path-exists-3.0.0.tgz";
        hash = "sha512-bpC7GYwiDYQ4wYLe+FA8lhRjhQCMcQGuSgGGqDkg/QerRWw9CmGRT0iSOVRSZJ29NMLZgIzqaljJ63oaL4NIJQ==";
      }
    );
    "node_modules/path-key/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz";
        hash = "sha512-ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==";
      }
    );
    "node_modules/path-parse/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-parse/-/path-parse-1.0.7.tgz";
        hash = "sha512-LDJzPVEEEPR+y48z93A0Ed0yXb8pAByGWo/k5YYdYgpY2/2EsOsksJrq7lOHxryrVOn1ejG6oAp8ahvOIQD8sw==";
      }
    );
    "node_modules/path-scurry/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-scurry/-/path-scurry-1.11.1.tgz";
        hash = "sha512-Xa4Nw17FS9ApQFJ9umLiJS4orGjm7ZzwUrwamcGQuHSzDyth9boKDaycYdDcZDuqYATXw4HFXgaqWTctW/v1HA==";
      }
    );
    "node_modules/path-to-regexp/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-8.4.2.tgz";
        hash = "sha512-qRcuIdP69NPm4qbACK+aDogI5CBDMi1jKe0ry5rSQJz8JVLsC7jV8XpiJjGRLLol3N+R5ihGYcrPLTno6pAdBA==";
      }
    );
    "node_modules/peek-readable/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/peek-readable/-/peek-readable-4.1.0.tgz";
        hash = "sha512-ZI3LnwUv5nOGbQzD9c2iDG6toheuXSZP5esSHBjopsXH4dg19soufvpUGA3uohi5anFtGb2lhAVdHzH6R/Evvg==";
      }
    );
    "node_modules/picocolors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/picocolors/-/picocolors-1.1.1.tgz";
        hash = "sha512-xceH2snhtb5M9liqDsmEw56le376mTZkEX/jEb/RxNFyegNul7eNslCXP9FDj/Lcu0X8KEyMceP2ntpaHrDEVA==";
      }
    );
    "node_modules/pixelmatch/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pixelmatch/-/pixelmatch-5.3.0.tgz";
        hash = "sha512-o8mkY4E/+LNUf6LzX96ht6k6CEDi65k9G2rjMtBe9Oo+VPKSvl+0GKHuH/AlG+GA5LPG/i5hrekkxUc3s2HU+Q==";
      }
    );
    "node_modules/pkce-challenge/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pkce-challenge/-/pkce-challenge-5.0.1.tgz";
        hash = "sha512-wQ0b/W4Fr01qtpHlqSqspcj3EhBvimsdh0KlHhH8HRZnMsEa0ea2fTULOXOS9ccQr3om+GcGRk4e+isrZWV8qQ==";
      }
    );
    "node_modules/pkg-up/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pkg-up/-/pkg-up-3.1.0.tgz";
        hash = "sha512-nDywThFk1i4BQK4twPQ6TA4RT8bDY96yeuCVBWL3ePARCiEKDRSrNGbFIgUJpLp+XeIR65v8ra7WuJOFUBtkMA==";
      }
    );
    "node_modules/planck/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/planck/-/planck-1.5.0.tgz";
        hash = "sha512-dlvqJE+FscZgrGUXJ5ybd0o5bvZ5XXyZNbm08xGsXp9WjXeAyWSFT6n9s/1PQcUBo4546fDXA5RMA4wbDyZw6g==";
      }
    );
    "node_modules/pngjs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pngjs/-/pngjs-7.0.0.tgz";
        hash = "sha512-LKWqWJRhstyYo9pGvgor/ivk2w94eSjE3RGVuzLGlr3NmD8bf7RcYGze1mNdEHRP6TRP6rMuDHk5t44hnTRyow==";
      }
    );
    "node_modules/process/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/process/-/process-0.11.10.tgz";
        hash = "sha512-cdGef/drWFoydD1JsMzuFf8100nZl+GT+yacc2bEced5f9Rjk4z+WtFUTBu9PhOi9j/jfmBPu0mMEY4wIdAF8A==";
      }
    );
    "node_modules/proxy-addr/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.7.tgz";
        hash = "sha512-llQsMLSUDUPT44jdrU/O37qlnifitDP+ZwrmmZcoSKyLKvtZxpyV0n2/bD/N4tBAAZ/gJEdZU7KMraoK1+XYAg==";
      }
    );
    "node_modules/punycode/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/punycode/-/punycode-2.3.1.tgz";
        hash = "sha512-vYt7UD1U9Wg6138shLtLOvdAu+8DsC/ilFtEVHcH+wydcSpNE20AfSOduf6MkRFahL5FY7X1oU7nKVZFtfq8Fg==";
      }
    );
    "node_modules/qs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.15.0.tgz";
        hash = "sha512-mAZTtNCeetKMH+pSjrb76NAM8V9a05I9aBZOHztWy/UqcJdQYNsf59vrRKWnojAT9Y+GbIvoTBC++CPHqpDBhQ==";
      }
    );
    "node_modules/range-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/range-parser/-/range-parser-1.2.1.tgz";
        hash = "sha512-Hrgsx+orqoygnmhFbKaHE6c296J+HTAQXoxEF6gNupROmmGJRoyzfG3ccAveqCBrwr/2yxQ5BVd/GTl5agOwSg==";
      }
    );
    "node_modules/raw-body/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/raw-body/-/raw-body-3.0.2.tgz";
        hash = "sha512-K5zQjDllxWkf7Z5xJdV0/B0WTNqx6vxG70zJE4N0kBs4LovmEYWJzQGxC9bS9RAKu3bgM40lrd5zoLJ12MQ5BA==";
      }
    );
    "node_modules/readable-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-4.7.0.tgz";
        hash = "sha512-oIGGmcpTLwPga8Bn6/Z75SVaH1z5dUut2ibSyAMVhmUggWpmDn2dapB0n7f8nwaSiRtepAsfJyfXIO5DCVAODg==";
      }
    );
    "node_modules/readable-web-to-node-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/readable-web-to-node-stream/-/readable-web-to-node-stream-3.0.4.tgz";
        hash = "sha512-9nX56alTf5bwXQ3ZDipHJhusu9NTQJ/CVPtb/XHAJCXihZeitfJvIRS4GqQ/mfIoOE3IelHMrpayVrosdHBuLw==";
      }
    );
    "node_modules/require-from-string/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/require-from-string/-/require-from-string-2.0.2.tgz";
        hash = "sha512-Xf0nWe6RseziFMu+Ap9biiUbmplq6S9/p+7w7YXP/JBHhrUDDUhwa+vANyubuqfZWTveU//DYVGsDG7RKL/vEw==";
      }
    );
    "node_modules/reselect/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/reselect/-/reselect-4.1.8.tgz";
        hash = "sha512-ab9EmR80F/zQTMNeneUr4cv+jSwPJgIlvEmVwLerwrWVbpLlBuls9XHzIeTFy4cegU2NHBp3va0LKOzU5qFEYQ==";
      }
    );
    "node_modules/resolve/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/resolve/-/resolve-1.22.12.tgz";
        hash = "sha512-TyeJ1zif53BPfHootBGwPRYT1RUt6oGWsaQr8UyZW/eAm9bKoijtvruSDEmZHm92CwS9nj7/fWttqPCgzep8CA==";
      }
    );
    "node_modules/router/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/router/-/router-2.2.0.tgz";
        hash = "sha512-nLTrUKm2UyiL7rlhapu/Zl45FwNgkZGaCpZbIHajDYgwlJCOzLSk+cIPAnsEqV955GjILJnKbdQC1nVPz+gAYQ==";
      }
    );
    "node_modules/rrweb-cssom/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/rrweb-cssom/-/rrweb-cssom-0.8.0.tgz";
        hash = "sha512-guoltQEx+9aMf2gDZ0s62EcV8lsXR+0w8915TC3ITdn2YueuNjdAYh/levpU9nFaoChh9RUS5ZdQMrKfVEN9tw==";
      }
    );
    "node_modules/s-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/s-js/-/s-js-0.4.9.tgz";
        hash = "sha512-RtpOm+cM6O0sHg6IA70wH+UC3FZcND+rccBZpBAHzlUgNO2Bm5BN+FnM8+OBxzXdwpKWFwX11JGF0MFRkhSoIQ==";
      }
    );
    "node_modules/safe-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
        hash = "sha512-rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==";
      }
    );
    "node_modules/safer-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        hash = "sha512-YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      }
    );
    "node_modules/sax/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/sax/-/sax-1.6.0.tgz";
        hash = "sha512-6R3J5M4AcbtLUdZmRv2SygeVaM7IhrLXu9BmnOGmmACak8fiUtOsYNWUS4uK7upbmHIBbLBeFeI//477BKLBzA==";
      }
    );
    "node_modules/saxes/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/saxes/-/saxes-6.0.0.tgz";
        hash = "sha512-xAg7SOnEhrm5zI3puOOKyy1OMcMlIJZYNJY7xLBwSze0UjhPLnWfj2GF2EpT0jmzaJKIWKHLsaSSajf35bcYnA==";
      }
    );
    "node_modules/semver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-6.3.1.tgz";
        hash = "sha512-BR7VvDCVHO+q2xBEWskxS6DJE1qRnb7DxzUrogb71CWoSficBxYsiAGd+Kl0mmq/MprG9yArRkyrQxTO6XjMzA==";
      }
    );
    "node_modules/send/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/send/-/send-1.2.1.tgz";
        hash = "sha512-1gnZf7DFcoIcajTjTwjwuDjzuz4PPcY2StKPlsGAQ1+YH20IRVrBaXSWmdjowTJ6u8Rc01PoYOGHXfP1mYcZNQ==";
      }
    );
    "node_modules/seroval/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/seroval/-/seroval-1.5.2.tgz";
        hash = "sha512-xcRN39BdsnO9Tf+VzsE7b3JyTJASItIV1FVFewJKCFcW4s4haIKS3e6vj8PGB9qBwC7tnuOywQMdv5N4qkzi7Q==";
      }
    );
    "node_modules/seroval-plugins/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/seroval-plugins/-/seroval-plugins-1.5.2.tgz";
        hash = "sha512-qpY0Cl+fKYFn4GOf3cMiq6l72CpuVaawb6ILjubOQ+diJ54LfOWaSSPsaswN8DRPIPW4Yq+tE1k5aKd7ILyaFg==";
      }
    );
    "node_modules/serve-static/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/serve-static/-/serve-static-2.2.1.tgz";
        hash = "sha512-xRXBn0pPqQTVQiC8wyQrKs2MOlX24zQ0POGaj0kultvoOCstBQM5yvOhAVSUwOMjQtTvsPWoNCHfPGwaaQJhTw==";
      }
    );
    "node_modules/setprototypeof/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.2.0.tgz";
        hash = "sha512-E5LDX7Wrp85Kil5bhZv46j8jOeboKq5JMmYM3gVGdGH8xFpPWXUMsNrlODCrkoxMEeNi/XZIwuRvY4XNwYMJpw==";
      }
    );
    "node_modules/shebang-command/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/shebang-command/-/shebang-command-2.0.0.tgz";
        hash = "sha512-kHxr2zZpYtdmrN1qDjrrX/Z1rR1kG8Dx+gkpK1G4eXmvXswmcE1hTWBWYUzlraYw1/yZp6YuDY77YtvbN0dmDA==";
      }
    );
    "node_modules/shebang-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-3.0.0.tgz";
        hash = "sha512-7++dFhtcx3353uBaq8DDR4NuxBetBzC7ZQOhmTQInHEd6bSrXdiEyzCvG07Z44UYdLShWUyXt5M/yhz8ekcb1A==";
      }
    );
    "node_modules/side-channel/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/side-channel/-/side-channel-1.1.0.tgz";
        hash = "sha512-ZX99e6tRweoUXqR+VBrslhda51Nh5MTQwou5tnUDgbtyM0dBgmhEDtWGP/xbKn6hqfPRHujUNwz5fy/wbbhnpw==";
      }
    );
    "node_modules/side-channel-list/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/side-channel-list/-/side-channel-list-1.0.0.tgz";
        hash = "sha512-FCLHtRD/gnpCiCHEiJLOwdmFP+wzCmDEkc9y7NsYxeF4u7Btsn1ZuwgwJGxImImHicJArLP4R0yX4c2KCrMrTA==";
      }
    );
    "node_modules/side-channel-map/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/side-channel-map/-/side-channel-map-1.0.1.tgz";
        hash = "sha512-VCjCNfgMsby3tTdo02nbjtM/ewra6jPHmpThenkTYh8pG9ucZ/1P8So4u4FGBek/BjpOVsDCMoLA/iuBKIFXRA==";
      }
    );
    "node_modules/side-channel-weakmap/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/side-channel-weakmap/-/side-channel-weakmap-1.0.2.tgz";
        hash = "sha512-WPS/HvHQTYnHisLo9McqBHOJk2FkHO/tlpvldyrnem4aeQp4hai3gythswg6p01oSoTl58rcpiFAjF2br2Ak2A==";
      }
    );
    "node_modules/simple-xml-to-json/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/simple-xml-to-json/-/simple-xml-to-json-1.2.7.tgz";
        hash = "sha512-mz9VXphOxQWX3eQ/uXCtm6upltoN0DLx8Zb5T4TFC4FHB7S9FDPGre8CfLWqPWQQH/GrQYd2AXhhVM5LDpYx6Q==";
      }
    );
    "node_modules/solid-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/solid-js/-/solid-js-1.9.12.tgz";
        hash = "sha512-QzKaSJq2/iDrWR1As6MHZQ8fQkdOBf8GReYb7L5iKwMGceg7HxDcaOHk0at66tNgn9U2U7dXo8ZZpLIAmGMzgw==";
      }
    );
    "node_modules/stage-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/stage-js/-/stage-js-1.0.2.tgz";
        hash = "sha512-EWTRBYlg7Qv9wGUao99/PfRe3KaiQqWmgSvTOXvaWnu1Jk/q/vV8yJVu6bi/3EqDZeMVnCPAjheba6OFc5k1GQ==";
      }
    );
    "node_modules/statuses/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-2.0.2.tgz";
        hash = "sha512-DvEy55V3DB7uknRo+4iOGT5fP1slR8wQohVdknigZPMpMstaKJQWhwiYBACJE3Ul2pTnATihhBYnRhZQHGBiRw==";
      }
    );
    "node_modules/string-width/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-7.2.0.tgz";
        hash = "sha512-tsaTIkKW9b4N+AEj+SVA+WhJzV7/zMhcSu78mLKWSk7cXMOSHsBKFWUs0fWwq8QyK3MgJBQRX6Gbi4kYbdvGkQ==";
      }
    );
    "node_modules/string_decoder/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.3.0.tgz";
        hash = "sha512-hkRX8U1WjJFd8LsDJ2yQ/wWWxaopEsABU1XfkM8A+j0+85JAGppt16cr1Whg6KIbb4okU6Mql6BOj+uup/wKeA==";
      }
    );
    "node_modules/strip-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-7.1.2.tgz";
        hash = "sha512-gmBGslpoQJtgnMAvOVqGZpEz9dyoKTCzy2nfz/n8aIFhN/jCE/rCmcxabB6jOOHV+0WNnylOxaxBQPSvcWklhA==";
      }
    );
    "node_modules/strtok3/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strtok3/-/strtok3-6.3.0.tgz";
        hash = "sha512-fZtbhtvI9I48xDSywd/somNqgUHl2L2cstmXCCif0itOf96jeW18MBSyrLuNicYQVkvpOxkZtkzujiTJ9LW5Jw==";
      }
    );
    "node_modules/supports-preserve-symlinks-flag/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
        hash = "sha512-ot0WnXS9fgdkgIcePe6RHNk1WA8+muPa6cSjeR3V8K27q9BB1rTE3R1p7Hv0z1ZyAc8s6Vvv8DIyWf681MAt0w==";
      }
    );
    "node_modules/symbol-tree/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/symbol-tree/-/symbol-tree-3.2.4.tgz";
        hash = "sha512-9QNk5KwDF+Bvz+PyObkmSYjI5ksVUYtjW7AU22r2NKcfLJcXp96hkDWU3+XndOsUb+AQ9QhfzfCT2O+CNWT5Tw==";
      }
    );
    "node_modules/three/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/three/-/three-0.177.0.tgz";
        hash = "sha512-EiXv5/qWAaGI+Vz2A+JfavwYCMdGjxVsrn3oBwllUoqYeaBO75J63ZfyaQKoiLrqNHoTlUc6PFgMXnS0kI45zg==";
      }
    );
    "node_modules/tinycolor2/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tinycolor2/-/tinycolor2-1.6.0.tgz";
        hash = "sha512-XPaBkWQJdsf3pLKJV9p4qN/S+fm2Oj8AIPo1BTUhg5oxkvm9+SVEGFdhyOz7tTdUTfvxMiAs4sp6/eZO2Ew+pw==";
      }
    );
    "node_modules/tldts/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tldts/-/tldts-6.1.86.tgz";
        hash = "sha512-WMi/OQ2axVTf/ykqCQgXiIct+mSQDFdH2fkwhPwgEwvJ1kSzZRiinb0zF2Xb8u4+OqPChmyI6MEu4EezNJz+FQ==";
      }
    );
    "node_modules/tldts-core/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tldts-core/-/tldts-core-6.1.86.tgz";
        hash = "sha512-Je6p7pkk+KMzMv2XXKmAE3McmolOQFdxkKw0R8EYNr7sELW46JqnNeTX8ybPiQgvg1ymCoF8LXs5fzFaZvJPTA==";
      }
    );
    "node_modules/toidentifier/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.1.tgz";
        hash = "sha512-o5sSPKEkg/DIQNmH43V0/uerLrpzVedkUh8tGNvaeXpfpuwjKenlSox/2O/BTlZUtEe+JG7s5YhEz608PlAHRA==";
      }
    );
    "node_modules/token-types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/token-types/-/token-types-4.2.1.tgz";
        hash = "sha512-6udB24Q737UD/SDsKAHI9FCRP7Bqc9D/MQUV02ORQg5iskjtLJlZJNdN4kKtcdtwCeWIwIHDGaUsTsCCAa8sFQ==";
      }
    );
    "node_modules/tough-cookie/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-5.1.2.tgz";
        hash = "sha512-FVDYdxtnj0G6Qm/DhNPSb8Ju59ULcup3tuJxkFb5K8Bv2pUXILbf0xZWU8PX8Ov19OXljbUyveOFwRMwkXzO+A==";
      }
    );
    "node_modules/tr46/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tr46/-/tr46-5.1.1.tgz";
        hash = "sha512-hdF5ZgjTqgAntKkklYw0R03MG2x/bSzTtkxmIRw/sTNV8YXsCJ1tfLAX23lhxhHJlEf3CRCOCGGWw3vI3GaSPw==";
      }
    );
    "node_modules/turndown/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/turndown/-/turndown-7.2.4.tgz";
        hash = "sha512-I8yFsfRzmzK0WV1pNNOA4A7y4RDfFxPRxb3t+e3ui14qSGOxGtiSP6GjeX+Y6CHb7HYaFj7ECUD7VE5kQMZWGQ==";
      }
    );
    "node_modules/type-is/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/type-is/-/type-is-2.0.1.tgz";
        hash = "sha512-OZs6gsjF4vMp32qrCbiVSkrFmXtG/AZhY3t0iAMrMBiAZyV9oALtXO8hsrHbMXF9x6L3grlFuwW2oAz7cav+Gw==";
      }
    );
    "node_modules/typescript/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-5.9.3.tgz";
        hash = "sha512-jl1vZzPDinLr9eUt3J/t7V6FgNEw9QjvBPdysz9KfQDD41fQrC2Y4vKQdiaUpFT4bXlb1RHhLpp8wtm6M5TgSw==";
      }
    );
    "node_modules/unpipe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
        hash = "sha512-pjy2bYhSsufwWlKwPc+l3cN7+wuJlK6uz0YdJEOlQDbl6jo/YlPi4mb8agUkVC8BF7V8NuzeyPNqRksA3hztKQ==";
      }
    );
    "node_modules/update-browserslist-db/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/update-browserslist-db/-/update-browserslist-db-1.2.3.tgz";
        hash = "sha512-Js0m9cx+qOgDxo0eMiFGEueWztz+d4+M3rGlmKPT+T4IS/jP4ylw3Nwpu6cpTTP8R1MAC1kF4VbdLt3ARf209w==";
      }
    );
    "node_modules/utif2/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/utif2/-/utif2-4.1.0.tgz";
        hash = "sha512-+oknB9FHrJ7oW7A2WZYajOcv4FcDR4CfoGB0dPNfxbi4GO05RRnFmt5oa23+9w32EanrYcSJWspUiJkLMs+37w==";
      }
    );
    "node_modules/vary/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz";
        hash = "sha512-BNGbWLfd0eUPabhkXUVm0j8uuvREyTh5ovRa/dyow/BqAbZJyC+5fU+IzQOzmAKzYqYRAISoRhdQr3eIZ/PXqg==";
      }
    );
    "node_modules/w3c-xmlserializer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/w3c-xmlserializer/-/w3c-xmlserializer-5.0.0.tgz";
        hash = "sha512-o8qghlI8NZHU1lLPrpi2+Uq7abh4GGPpYANlalzWxyWteJOCsr/P+oPBA49TOLu5FTZO4d3F9MnWJfiMo4BkmA==";
      }
    );
    "node_modules/web-tree-sitter/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/web-tree-sitter/-/web-tree-sitter-0.25.10.tgz";
        hash = "sha512-Y09sF44/13XvgVKgO2cNDw5rGk6s26MgoZPXLESvMXeefBf7i6/73eFurre0IsTW6E14Y0ArIzhUMmjoc7xyzA==";
      }
    );
    "node_modules/webidl-conversions/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/webidl-conversions/-/webidl-conversions-7.0.0.tgz";
        hash = "sha512-VwddBukDzu71offAQR975unBIGqfKZpM+8ZX6ySk8nYhVoo5CYaZyzt3YBvYtRtO+aoGlqxPg/B87NGVZ/fu6g==";
      }
    );
    "node_modules/whatwg-encoding/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/whatwg-encoding/-/whatwg-encoding-3.1.1.tgz";
        hash = "sha512-6qN4hJdMwfYBtE3YBTTHhoeuUrDBPZmbQaxWAqSALV/MeEnR5z1xd8UKud2RAkFoPkmB+hli1TZSnyi84xz1vQ==";
      }
    );
    "node_modules/whatwg-mimetype/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/whatwg-mimetype/-/whatwg-mimetype-4.0.0.tgz";
        hash = "sha512-QaKxh0eNIi2mE9p2vEdzfagOKHCcj1pJ56EEHGQOVxp8r9/iszLUUV7v89x9O1p/T+NlTM5W7jW6+cz4Fq1YVg==";
      }
    );
    "node_modules/whatwg-url/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/whatwg-url/-/whatwg-url-14.2.0.tgz";
        hash = "sha512-De72GdQZzNTUBBChsXueQUnPKDkg/5A5zp7pFDuQAj5UFoENpiACU0wlCvzpAGnTkj++ihpKwKyYewn/XNUbKw==";
      }
    );
    "node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        hash = "sha512-BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      }
    );
    "node_modules/wrappy/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        hash = "sha512-l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
      }
    );
    "node_modules/ws/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ws/-/ws-8.19.0.tgz";
        hash = "sha512-blAT2mjOEIi0ZzruJfIhb3nps74PRWTCz1IjglWEEpQl5XS/UNama6u2/rjFkDDouqr4L67ry+1aGIALViWjDg==";
      }
    );
    "node_modules/xml-name-validator/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/xml-name-validator/-/xml-name-validator-5.0.0.tgz";
        hash = "sha512-EvGK8EJ3DhaHfbRlETOWAS5pO9MZITeauHKJyb8wyajUfQUenkIg2MvLDTZ4T/TgIcm3HU0TFBgWWboAZ30UHg==";
      }
    );
    "node_modules/xml-parse-from-string/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/xml-parse-from-string/-/xml-parse-from-string-1.0.1.tgz";
        hash = "sha512-ErcKwJTF54uRzzNMXq2X5sMIy88zJvfN2DmdoQvy7PAFJ+tPRU6ydWuOKNMyfmOjdyBQTFREi60s0Y0SyI0G0g==";
      }
    );
    "node_modules/xml2js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/xml2js/-/xml2js-0.5.0.tgz";
        hash = "sha512-drPFnkQJik/O+uPKpqSgr22mpuFHqKdbS835iAQrUC73L2F5WkboIRd63ai/2Yg6I1jzifPFKH2NTK+cfglkIA==";
      }
    );
    "node_modules/xmlbuilder/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-11.0.1.tgz";
        hash = "sha512-fDlsI/kFEx7gLvbecc0/ohLG50fugQp8ryHzMTuW9vSa1GJ0XYWKnhsUx7oie3G98+r56aTQIUB4kht42R3JvA==";
      }
    );
    "node_modules/xmlchars/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/xmlchars/-/xmlchars-2.2.0.tgz";
        hash = "sha512-JZnDKK8B0RCDw84FNdDAIpZK+JuJw+s7Lz8nksI7SIuU3UXJJslUthsi+uWBUYOwPFwW7W7PRLRfUKpxjtjFCw==";
      }
    );
    "node_modules/yallist/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/yallist/-/yallist-3.1.1.tgz";
        hash = "sha512-a4UGQaWPH59mOXUYnAG2ewncQS4i4F43Tv3JoAM+s2VDAmS9NsK8GpDMLrCHPksFT7h3K6TOoUNn2pb7RoXx4g==";
      }
    );
    "node_modules/yoga-layout/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/yoga-layout/-/yoga-layout-3.2.1.tgz";
        hash = "sha512-0LPOt3AxKqMdFBZA3HBAt/t/8vIKq7VaQYbuA8WxCgung+p9TVyKRYdpvCb80HcdTN2NkbIKbhNwKUfm3tQywQ==";
      }
    );
    "node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-4.3.6.tgz";
        hash = "sha512-rftlrkhHZOcjDwkGlnUtZZkvaPHCsDATp4pGpuOOMDaTdDDXF91wuVDJoWoPsKX/3YPQ5fHuF3STjcYyKr+Qhg==";
      }
    );
    "node_modules/zod-to-json-schema/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod-to-json-schema/-/zod-to-json-schema-3.25.2.tgz";
        hash = "sha512-O/PgfnpT1xKSDeQYSCfRI5Gy3hPf91mKVDuYLUHZJMiDFptvP41MSnWofm8dnCm0256ZNfZIM7DSzuSMAFnjHA==";
      }
    );
    "node_modules/@asamuzakjp/css-color/node_modules/lru-cache/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-10.4.3.tgz";
        hash = "sha512-JNAzZcXrCt42VGLuYz0zfAzDfAvJWW6AfYlDBQyDV5DClI2m5sAmK+OIO7s59XfsRsWHp02jAJrRadPRGTt6SQ==";
      }
    );
    "node_modules/@babel/helper-compilation-targets/node_modules/lru-cache/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-5.1.1.tgz";
        hash = "sha512-KpNARQA3Iwv+jTA0utUVVbrh+Jlrr1Fv0e56GGzAFOXN7dk/FviaDW8LHmK52DlcH4WP2n6gI8vN1aesBFgo9w==";
      }
    );
    "node_modules/@jimp/plugin-blit/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-circle/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-color/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-contain/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-cover/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-crop/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-displace/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-fisheye/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-flip/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-mask/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-print/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-quantize/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-resize/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-rotate/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/plugin-threshold/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@jimp/types/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/@opencode-ai/plugin/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-4.1.8.tgz";
        hash = "sha512-5R1P+WwQqmmMIEACyzSvo4JXHY5WiAFHRMg+zBZKgKS+Q1viRa0C1hmUKtHltoIFKtIdki3pRxkmpP74jnNYHQ==";
      }
    );
    "node_modules/babel-plugin-jsx-dom-expressions/node_modules/@babel/helper-module-imports/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@babel/helper-module-imports/-/helper-module-imports-7.18.6.tgz";
        hash = "sha512-0NFvs3VkuSYbFi1x2Vd6tKrywq+z/cLeYC/RJNFrIX/30Bf5aiGYbtvGXolEktzJH8o5E5KJ3tT+nkxuuZFVlA==";
      }
    );
    "node_modules/parse5/node_modules/entities/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/entities/-/entities-6.0.1.tgz";
        hash = "sha512-aN97NXWF6AWBTahfVOIrB/NShkzi5H7F9r1s9mD3cDj4Ko5f2qhhVoYMibXF7GlLveb/D2ioWay8lxI97Ven3g==";
      }
    );
    "node_modules/path-scurry/node_modules/lru-cache/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-10.4.3.tgz";
        hash = "sha512-JNAzZcXrCt42VGLuYz0zfAzDfAvJWW6AfYlDBQyDV5DClI2m5sAmK+OIO7s59XfsRsWHp02jAJrRadPRGTt6SQ==";
      }
    );
    "node_modules/path-scurry/node_modules/minipass/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/minipass/-/minipass-7.1.3.tgz";
        hash = "sha512-tEBHqDnIoM/1rXME1zgka9g6Q2lcoCkxHLuc7ODJ5BxbP5d4c2Z5cGgtXAku59200Cx7diuHTOYfSBD8n6mm8A==";
      }
    );
    "node_modules/pixelmatch/node_modules/pngjs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pngjs/-/pngjs-6.0.0.tgz";
        hash = "sha512-TRzzuFRRmEoSW/p1KVAmiOgPco2Irlah+bGFCeNfJXxxYGwSw7YwAOAcd7X28K/m5bjBWKsC29KyoMfHbypayg==";
      }
    );
    "node_modules/whatwg-encoding/node_modules/iconv-lite/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.6.3.tgz";
        hash = "sha512-4fCk79wshMdzMp2rH06qWrJE4iolqLhCUH+OiuIgU++RB0+94NlDL81atO7GX55uUKueo0txHNtvEyI6D7WdMw==";
      }
    );
  };
  packageCommands = lib.pipe packages [
    (lib.mapAttrsToList (
      modulePath: package: ''
        mkdir -p "$out/lib/${modulePath}"
        cp -Lr ${package}/* "$out/lib/${modulePath}"
        chmod -R u+w "$out/lib/${modulePath}"
      ''
    ))
    (lib.concatStringsSep "\n")
  ];
in
(pkgs.runCommand "node_modules" { buildInputs = [ pkgs.nodejs ]; } ''
  ${packageCommands}
  mkdir -p "$out/lib/node_modules/.bin"
  patchShebangs --host "$out/lib/node_modules/@ast-grep/cli/sg"
  ln -s "$out/lib/node_modules/@ast-grep/cli/sg" "$out/lib/node_modules/.bin/sg"
  patchShebangs --host "$out/lib/node_modules/@ast-grep/cli/ast-grep"
  ln -s "$out/lib/node_modules/@ast-grep/cli/ast-grep" "$out/lib/node_modules/.bin/ast-grep"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/."
  ln -s "$out/lib/node_modules/@babel/parser/." "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/@babel/parser//"
  ln -s "$out/lib/node_modules/@babel/parser//" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/b"
  ln -s "$out/lib/node_modules/@babel/parser/b" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/i"
  ln -s "$out/lib/node_modules/@babel/parser/i" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/n"
  ln -s "$out/lib/node_modules/@babel/parser/n" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/@babel/parser//"
  ln -s "$out/lib/node_modules/@babel/parser//" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/b"
  ln -s "$out/lib/node_modules/@babel/parser/b" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/a"
  ln -s "$out/lib/node_modules/@babel/parser/a" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/b"
  ln -s "$out/lib/node_modules/@babel/parser/b" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/e"
  ln -s "$out/lib/node_modules/@babel/parser/e" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/l"
  ln -s "$out/lib/node_modules/@babel/parser/l" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/-"
  ln -s "$out/lib/node_modules/@babel/parser/-" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/p"
  ln -s "$out/lib/node_modules/@babel/parser/p" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/a"
  ln -s "$out/lib/node_modules/@babel/parser/a" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/r"
  ln -s "$out/lib/node_modules/@babel/parser/r" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/s"
  ln -s "$out/lib/node_modules/@babel/parser/s" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/e"
  ln -s "$out/lib/node_modules/@babel/parser/e" "$out/lib/node_modules/.bin/16"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/r"
  ln -s "$out/lib/node_modules/@babel/parser/r" "$out/lib/node_modules/.bin/17"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/."
  ln -s "$out/lib/node_modules/@babel/parser/." "$out/lib/node_modules/.bin/18"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/j"
  ln -s "$out/lib/node_modules/@babel/parser/j" "$out/lib/node_modules/.bin/19"
  patchShebangs --host "$out/lib/node_modules/@babel/parser/s"
  ln -s "$out/lib/node_modules/@babel/parser/s" "$out/lib/node_modules/.bin/20"
  patchShebangs --host "$out/lib/node_modules/baseline-browser-mapping/dist/cli.cjs"
  ln -s "$out/lib/node_modules/baseline-browser-mapping/dist/cli.cjs" "$out/lib/node_modules/.bin/baseline-browser-mapping"
  patchShebangs --host "$out/lib/node_modules/browserslist/cli.js"
  ln -s "$out/lib/node_modules/browserslist/cli.js" "$out/lib/node_modules/.bin/browserslist"
  patchShebangs --host "$out/lib/node_modules/jsesc/bin/jsesc"
  ln -s "$out/lib/node_modules/jsesc/bin/jsesc" "$out/lib/node_modules/.bin/jsesc"
  patchShebangs --host "$out/lib/node_modules/json5/lib/cli.js"
  ln -s "$out/lib/node_modules/json5/lib/cli.js" "$out/lib/node_modules/.bin/json5"
  patchShebangs --host "$out/lib/node_modules/marked/bin/marked.js"
  ln -s "$out/lib/node_modules/marked/bin/marked.js" "$out/lib/node_modules/.bin/marked"
  patchShebangs --host "$out/lib/node_modules/mime/cli.js"
  ln -s "$out/lib/node_modules/mime/cli.js" "$out/lib/node_modules/.bin/mime"
  patchShebangs --host "$out/lib/node_modules/oh-my-opencode-slim/dist/cli/index.js"
  ln -s "$out/lib/node_modules/oh-my-opencode-slim/dist/cli/index.js" "$out/lib/node_modules/.bin/oh-my-opencode-slim"
  patchShebangs --host "$out/lib/node_modules/pixelmatch/bin/pixelmatch"
  ln -s "$out/lib/node_modules/pixelmatch/bin/pixelmatch" "$out/lib/node_modules/.bin/pixelmatch"
  patchShebangs --host "$out/lib/node_modules/resolve/bin/resolve"
  ln -s "$out/lib/node_modules/resolve/bin/resolve" "$out/lib/node_modules/.bin/resolve"
  patchShebangs --host "$out/lib/node_modules/semver/bin/semver.js"
  ln -s "$out/lib/node_modules/semver/bin/semver.js" "$out/lib/node_modules/.bin/semver"
  patchShebangs --host "$out/lib/node_modules/tldts/bin/cli.js"
  ln -s "$out/lib/node_modules/tldts/bin/cli.js" "$out/lib/node_modules/.bin/tldts"
  patchShebangs --host "$out/lib/node_modules/typescript/bin/tsc"
  ln -s "$out/lib/node_modules/typescript/bin/tsc" "$out/lib/node_modules/.bin/tsc"
  patchShebangs --host "$out/lib/node_modules/typescript/bin/tsserver"
  ln -s "$out/lib/node_modules/typescript/bin/tsserver" "$out/lib/node_modules/.bin/tsserver"
  patchShebangs --host "$out/lib/node_modules/update-browserslist-db/cli.js"
  ln -s "$out/lib/node_modules/update-browserslist-db/cli.js" "$out/lib/node_modules/.bin/update-browserslist-db"
  patchShebangs --host "$out/lib/node_modules/which/bin/node-which"
  ln -s "$out/lib/node_modules/which/bin/node-which" "$out/lib/node_modules/.bin/node-which"
  ln -s "$out/lib/node_modules/.bin" "$out/bin"
'')
