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
    "node_modules/@appium/logger/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@appium/logger/-/logger-1.7.1.tgz";
        hash = "sha512-9C2o9X/lBEDBUnKfAi3mRo9oG7Z03nmISLwsGkWxIWjMAvBdJD0RRSJMekWVKzfXN3byrI1WlCXTITzN4LAoLw==";
      }
    );
    "node_modules/@ast-grep/cli/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli/-/cli-0.40.5.tgz";
        hash = "sha512-yVXL7Gz0WIHerQLf+MVaVSkhIhidtWReG5akNVr/JS9OVCVkSdz7gWm7H8jVv2M9OO1tauuG76K3UaRGBPu5lQ==";
      }
    );
    "node_modules/@ast-grep/cli-darwin-arm64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-darwin-arm64/-/cli-darwin-arm64-0.40.5.tgz";
        hash = "sha512-T9CzwJ1GqQhnANdsu6c7iT1akpvTVMK+AZrxnhIPv33Ze5hrXUUkqan+j4wUAukRJDqU7u94EhXLSLD+5tcJ8g==";
      }
    );
    "node_modules/@ast-grep/cli-darwin-x64/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-darwin-x64/-/cli-darwin-x64-0.40.5.tgz";
        hash = "sha512-ez9b2zKvXU8f4ghhjlqYvbx6tWCKJTuVlNVqDDfjqwwhGeiTYfnzMlSVat4ElYRMd21gLtXZIMy055v2f21Ztg==";
      }
    );
    "node_modules/@ast-grep/cli-linux-arm64-gnu/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-linux-arm64-gnu/-/cli-linux-arm64-gnu-0.40.5.tgz";
        hash = "sha512-VXa2L1IEYD66AMb0GuG7VlMMbPmEGoJUySWDcwSZo/D9neiry3MJ41LQR5oTG2HyhIPBsf9umrXnmuRq66BviA==";
      }
    );
    "node_modules/@ast-grep/cli-linux-x64-gnu/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-linux-x64-gnu/-/cli-linux-x64-gnu-0.40.5.tgz";
        hash = "sha512-GQC5162eIOWXR2eQQ6Knzg7/8Trp5E1ODJkaErf0IubdQrZBGqj5AAcQPcWgPbbnmktjIp0H4NraPpOJ9eJ22A==";
      }
    );
    "node_modules/@ast-grep/cli-win32-arm64-msvc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-win32-arm64-msvc/-/cli-win32-arm64-msvc-0.40.5.tgz";
        hash = "sha512-YiZdnQZsSlXQTMsZJop/Ux9MmUGfuRvC2x/UbFgrt5OBSYxND+yoiMc0WcA3WG+wU+tt4ZkB5HUea3r/IkOLYA==";
      }
    );
    "node_modules/@ast-grep/cli-win32-ia32-msvc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-win32-ia32-msvc/-/cli-win32-ia32-msvc-0.40.5.tgz";
        hash = "sha512-MHkCxCITVTr8sY9CcVqNKbfUzMa3Hc6IilGXad0Clnw2vNmPfWqSky+hU/UTerr5YHWwWfAVURH7ANZgirtx0Q==";
      }
    );
    "node_modules/@ast-grep/cli-win32-x64-msvc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@ast-grep/cli-win32-x64-msvc/-/cli-win32-x64-msvc-0.40.5.tgz";
        hash = "sha512-/MJ5un7yxlClaaxou9eYl+Kr2xr/yTtYtTq5aLBWjPWA6dmmJ1nAJgx5zKHVuplFXFBrFDQk3paEgAETMTGcrA==";
      }
    );
    "node_modules/@hono/node-server/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@hono/node-server/-/node-server-1.19.12.tgz";
        hash = "sha512-txsUW4SQ1iilgE0l9/e9VQWmELXifEFvmdA1j6WFh/aFPj99hIntrSsq/if0UWyGVkmrRPKA1wCeP+UCr1B9Uw==";
      }
    );
    "node_modules/@isaacs/cliui/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@isaacs/cliui/-/cliui-8.0.2.tgz";
        hash = "sha512-O8jcjabXaleOG9DQ0+ARXWZBTfnP4WNAqzuiJK7ll44AmxGKv/J2M4TPjxjY3znBCfvBXFzucm1twdyFybFqEA==";
      }
    );
    "node_modules/@modelcontextprotocol/sdk/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@modelcontextprotocol/sdk/-/sdk-1.29.0.tgz";
        hash = "sha512-zo37mZA9hJWpULgkRpowewez1y6ML5GsXJPY8FI0tBBCd77HEvza4jDqRKOXgHNn867PVGCyTdzqpz0izu5ZjQ==";
      }
    );
    "node_modules/@opencode-ai/plugin/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opencode-ai/plugin/-/plugin-1.3.17.tgz";
        hash = "sha512-N5lckFtYvEu2R8K1um//MIOTHsJHniF2kHoPIWPCrxKG5Jpismt1ISGzIiU3aKI2ht/9VgcqKPC5oZFLdmpxPw==";
      }
    );
    "node_modules/@opencode-ai/sdk/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@opencode-ai/sdk/-/sdk-1.3.17.tgz";
        hash = "sha512-2+MGgu7wynqTBwxezR01VAGhILXlpcHDY/pF7SWB87WOgLt3kD55HjKHNj6PWxyY8n575AZolR95VUC3gtwfmA==";
      }
    );
    "node_modules/@pkgjs/parseargs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@pkgjs/parseargs/-/parseargs-0.11.0.tgz";
        hash = "sha512-+1VkjdD0QBLPodGrJUeqarH8VAIvQODIbwh9XpP5Syisf7YoQgsJKPNFoqqLQlu+VQ/tVSshMR6loPMn8U+dPg==";
      }
    );
    "node_modules/@promptbook/utils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@promptbook/utils/-/utils-0.69.5.tgz";
        hash = "sha512-xm5Ti/Hp3o4xHrsK9Yy3MS6KbDxYbq485hDsFvxqaNA7equHLPdo8H8faTitTeb14QCDfLW4iwCxdVYu5sn6YQ==";
      }
    );
    "node_modules/@puppeteer/browsers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@puppeteer/browsers/-/browsers-2.13.0.tgz";
        hash = "sha512-46BZJYJjc/WwmKjsvDFykHtXrtomsCIrwYQPOP7VfMJoZY2bsDF9oROBABR3paDjDcmkUye1Pb1BqdcdiipaWA==";
      }
    );
    "node_modules/@tootallnate/quickjs-emscripten/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@tootallnate/quickjs-emscripten/-/quickjs-emscripten-0.23.0.tgz";
        hash = "sha512-C5Mc6rdnsaJDjO3UpGW/CQTHtCKaYlScZTly4JIu97Jxo/odCiH0ITnDXSJPTOrEKk/ycSZ0AOgTmkDtkOsvIA==";
      }
    );
    "node_modules/@types/node/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-20.19.37.tgz";
        hash = "sha512-8kzdPJ3FsNsVIurqBs7oodNnCEVbni9yUEkaHbgptDACOPW04jimGagZ51E6+lXUwJjgnBw+hyko/lkFWCldqw==";
      }
    );
    "node_modules/@types/sinonjs__fake-timers/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@types/sinonjs__fake-timers/-/sinonjs__fake-timers-8.1.5.tgz";
        hash = "sha512-mQkU2jY8jJEF7YHjHvsQO8+3ughTL1mcnn96igfhONmR+fUPSKIkefQYpSe8bsly2Ep7oQbn/6VG5/9/0qcArQ==";
      }
    );
    "node_modules/@types/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@types/which/-/which-2.0.2.tgz";
        hash = "sha512-113D3mDkZDjo+EeUEHCFy0qniNc1ZpecGiAU7WSo7YDoSzolZIQKpYFHrPpjkB2nuyahcKfrmLXeQlh7gqJYdw==";
      }
    );
    "node_modules/@types/ws/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@types/ws/-/ws-8.18.1.tgz";
        hash = "sha512-ThVF6DCVhA8kUGy+aazFQ4kXQ7E1Ty7A3ypFOe0IcJV8O/M511G99AW24irKrW56Wt44yG9+ij8FaqoBGkuBXg==";
      }
    );
    "node_modules/@types/yauzl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@types/yauzl/-/yauzl-2.10.3.tgz";
        hash = "sha512-oJoftv0LSuaDZE3Le4DbKX+KS9G36NzOeSap90UIK0yMA/NhKJhqlSGtNDORNRaIbQfzjXDrQa0ytJ6mNRGz/Q==";
      }
    );
    "node_modules/@wdio/config/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@wdio/config/-/config-9.24.0.tgz";
        hash = "sha512-rcHu0eG16rSEmHL0sEKDcr/vYFmGhQ5GOlmlx54r+1sgh6sf136q+kth4169s16XqviWGW3LjZbUfpTK29pGtw==";
      }
    );
    "node_modules/@wdio/logger/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@wdio/logger/-/logger-9.18.0.tgz";
        hash = "sha512-HdzDrRs+ywAqbXGKqe1i/bLtCv47plz4TvsHFH3j729OooT5VH38ctFn5aLXgECmiAKDkmH/A6kOq2Zh5DIxww==";
      }
    );
    "node_modules/@wdio/protocols/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@wdio/protocols/-/protocols-9.24.0.tgz";
        hash = "sha512-ozQKYddBLT4TRvU9J+fGrhVUtx3iDAe+KNCJcTDMFMxNSdDMR2xFQdNp8HLHypspk58oXTYCvz6ZYjySthhqsw==";
      }
    );
    "node_modules/@wdio/repl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@wdio/repl/-/repl-9.16.2.tgz";
        hash = "sha512-FLTF0VL6+o5BSTCO7yLSXocm3kUnu31zYwzdsz4n9s5YWt83sCtzGZlZpt7TaTzb3jVUfxuHNQDTb8UMkCu0lQ==";
      }
    );
    "node_modules/@wdio/types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@wdio/types/-/types-9.24.0.tgz";
        hash = "sha512-PYYunNl8Uq1r8YMJAK6ReRy/V/XIrCSyj5cpCtR5EqCL6heETOORFj7gt4uPnzidfgbtMBcCru0LgjjlMiH1UQ==";
      }
    );
    "node_modules/@wdio/utils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@wdio/utils/-/utils-9.24.0.tgz";
        hash = "sha512-6WhtzC5SNCGRBTkaObX6A07Ofnnyyf+TQH/d/fuhZRqvBknrP4AMMZF+PFxGl1fwdySWdBn+gV2QLE+52Byowg==";
      }
    );
    "node_modules/@zip.js/zip.js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/@zip.js/zip.js/-/zip.js-2.8.23.tgz";
        hash = "sha512-RB+RLnxPJFPrGvQ9rgO+4JOcsob6lD32OcF0QE0yg24oeW9q8KnTTNlugcDaIveEcCbclobJcZP+fLQ++sH0bw==";
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
    "node_modules/agent-browser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/agent-browser/-/agent-browser-0.17.1.tgz";
        hash = "sha512-KNV+6F3nYStxgTrsdcfMBsxtLdnaUu2NTuQ9EL8CvnYUgAzdoYztYVJzkr1KbconGEyLdSgXZedSsKw0TPiL/g==";
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
    "node_modules/ansi-styles/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz";
        hash = "sha512-zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==";
      }
    );
    "node_modules/archiver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/archiver/-/archiver-7.0.1.tgz";
        hash = "sha512-ZcbTaIqJOfCc03QwD468Unz/5Ir8ATtvAHsK+FdXbDIbGfihqh9mrvdcYunQzqn4HrvWWaFyaxJhGZagaJJpPQ==";
      }
    );
    "node_modules/archiver-utils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/archiver-utils/-/archiver-utils-5.0.2.tgz";
        hash = "sha512-wuLJMmIBQYCsGZgYLTy5FIB2pF6Lfb6cXMSF8Qywwk3t20zWnAi7zLcQFdKQmIB8wyZpY5ER38x08GbwtR2cLA==";
      }
    );
    "node_modules/aria-query/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/aria-query/-/aria-query-5.3.2.tgz";
        hash = "sha512-COROpnaoap1E2F000S62r6A60uHZnmlvomhfyT2DlTcrY1OrBKn2UhH7qn5wTC9zMvD0AY7csdPSNwKP+7WiQw==";
      }
    );
    "node_modules/ast-types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ast-types/-/ast-types-0.13.4.tgz";
        hash = "sha512-x1FCFnFifvYDDzTaLII71vG5uvDwgtmDTEVWAxrgeiR8VjMONcCXJx7E+USjDtHlwFmt9MysbqgF9b9Vjr6w+w==";
      }
    );
    "node_modules/async/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/async/-/async-3.2.6.tgz";
        hash = "sha512-htCUDlxyyCLMgaM3xXg0C0LW2xqfuQ6p05pCEIsXuyQ+a1koYKTuBMzRNwmybfLgvJDMd0r1LTn4+E0Ti6C2AA==";
      }
    );
    "node_modules/asyncbox/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/asyncbox/-/asyncbox-3.0.0.tgz";
        hash = "sha512-X7U0nedUMKV3nn9c4R0Zgvdvv6cw97tbDlHSZicq1snGPi/oX9DgGmFSURWtxDdnBWd3V0YviKhqAYAVvoWQ/A==";
      }
    );
    "node_modules/b4a/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/b4a/-/b4a-1.8.0.tgz";
        hash = "sha512-qRuSmNSkGQaHwNbM7J78Wwy+ghLEYF1zNrSeMxj4Kgw6y33O3mXcQ6Ie9fRvfU/YnxWkOchPXbaLb73TkIsfdg==";
      }
    );
    "node_modules/balanced-match/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
        hash = "sha512-3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
      }
    );
    "node_modules/bare-events/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bare-events/-/bare-events-2.8.2.tgz";
        hash = "sha512-riJjyv1/mHLIPX4RwiK+oW9/4c3TEUeORHKefKAKnZ5kyslbN+HXowtbaVEqt4IMUB7OXlfixcs6gsFeo/jhiQ==";
      }
    );
    "node_modules/bare-fs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bare-fs/-/bare-fs-4.5.5.tgz";
        hash = "sha512-XvwYM6VZqKoqDll8BmSww5luA5eflDzY0uEFfBJtFKe4PAAtxBjU3YIxzIBzhyaEQBy1VXEQBto4cpN5RZJw+w==";
      }
    );
    "node_modules/bare-os/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bare-os/-/bare-os-3.7.1.tgz";
        hash = "sha512-ebvMaS5BgZKmJlvuWh14dg9rbUI84QeV3WlWn6Ph6lFI8jJoh7ADtVTyD2c93euwbe+zgi0DVrl4YmqXeM9aIA==";
      }
    );
    "node_modules/bare-path/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bare-path/-/bare-path-3.0.0.tgz";
        hash = "sha512-tyfW2cQcB5NN8Saijrhqn0Zh7AnFNsnczRcuWODH0eYAXBsJ5gVxAUuNr7tsHSC6IZ77cA0SitzT+s47kot8Mw==";
      }
    );
    "node_modules/bare-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bare-stream/-/bare-stream-2.8.0.tgz";
        hash = "sha512-reUN0M2sHRqCdG4lUK3Fw8w98eeUIZHL5c3H7Mbhk2yVBL+oofgaIp0ieLfD5QXwPCypBpmEEKU2WZKzbAk8GA==";
      }
    );
    "node_modules/bare-url/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bare-url/-/bare-url-2.3.2.tgz";
        hash = "sha512-ZMq4gd9ngV5aTMa5p9+UfY0b3skwhHELaDkhEHetMdX0LRkW9kzaym4oo/Eh+Ghm0CCDuMTsRIGM/ytUc1ZYmw==";
      }
    );
    "node_modules/base64-js/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/base64-js/-/base64-js-1.5.1.tgz";
        hash = "sha512-AKpaYlHn8t4SVbOHCy+b5+KKgvR4vrsD8vbvrbiQJps7fKDTkjkDry6ji0rUJjC0kzbNePLwzxq8iypo41qeWA==";
      }
    );
    "node_modules/basic-ftp/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/basic-ftp/-/basic-ftp-5.2.0.tgz";
        hash = "sha512-VoMINM2rqJwJgfdHq6RiUudKt2BV+FY5ZFezP/ypmwayk68+NzzAQy4XXLlqsGD4MCzq3DrmNFD/uUmBJuGoXw==";
      }
    );
    "node_modules/bluebird/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/bluebird/-/bluebird-3.7.2.tgz";
        hash = "sha512-XpNj6GDQzdfW+r2Wnn7xiSAd7TM3jzkxGXBGTtWKuSXv1xUV+azxAm8jdWZN06QTQk+2N2XB9jRDkvbmQmcRtg==";
      }
    );
    "node_modules/body-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/body-parser/-/body-parser-2.2.2.tgz";
        hash = "sha512-oP5VkATKlNwcgvxi0vM0p/D3n2C3EReYVX+DNYs5TjZFn/oQt2j+4sVJtSMr18pdRr8wjTcBl6LoV+FUwzPmNA==";
      }
    );
    "node_modules/boolbase/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/boolbase/-/boolbase-1.0.0.tgz";
        hash = "sha512-JZOSA7Mo9sNGB8+UjSgzdLtokWAky1zbztM3WRLCbZ70/3cTANmQmOdR7y2g+J0e2WXywy1yS468tY+IruqEww==";
      }
    );
    "node_modules/brace-expansion/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-2.0.2.tgz";
        hash = "sha512-Jt0vHyM+jmUBqojB7E1NIYadt0vI0Qxjxd2TErW94wDz+E2LAm5vKMXXwg6ZZBTHPuUlDgQHKXvjGBdfcF1ZDQ==";
      }
    );
    "node_modules/buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/buffer/-/buffer-6.0.3.tgz";
        hash = "sha512-FTiCpNxtwiZZHEZbcbTIcZjERVICn9yq/pDFkTl95/AxzD1naBctN7YO68riM/gLSDY7sdrMby8hofADYuuqOA==";
      }
    );
    "node_modules/buffer-crc32/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/buffer-crc32/-/buffer-crc32-1.0.0.tgz";
        hash = "sha512-Db1SbgBS/fg/392AblrMJk97KggmvYhr4pB5ZIMTWtaivCPMWLkmb7m21cJvpvgK+J3nsU2CmmixNBZx4vFj/w==";
      }
    );
    "node_modules/buffer-from/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.2.tgz";
        hash = "sha512-E+XQCRwSbaaiChtv6k6Dwgc+bx+Bs6vuKJHHl5kox/BaKbhiXzqQOwK4cO22yElGp2OCmjwVhT3HmxgyPGnJfQ==";
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
    "node_modules/chalk/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-5.6.2.tgz";
        hash = "sha512-7NzBL0rN6fMUW+f7A6Io4h40qQlG+xGmtMxfbnH/K7TAtt8JQWVQK+6g0UXKMeVJoyV5EkkNsErQ8pVD3bLHbA==";
      }
    );
    "node_modules/cheerio/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cheerio/-/cheerio-1.2.0.tgz";
        hash = "sha512-WDrybc/gKFpTYQutKIK6UvfcuxijIZfMfXaYm8NMsPQxSYvf+13fXUJ4rztGGbJcBQ/GF55gvrZ0Bc0bj/mqvg==";
      }
    );
    "node_modules/cheerio-select/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cheerio-select/-/cheerio-select-2.1.0.tgz";
        hash = "sha512-9v9kG0LvzrlcungtnJtpGNxY+fzECQKhK4EGJX2vByejiMX84MFNQw4UxPJl3bFbTMw+Dfs37XaIkCwTZfLh4g==";
      }
    );
    "node_modules/cliui/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cliui/-/cliui-8.0.1.tgz";
        hash = "sha512-BSeNnyus75C4//NQ9gQt1/csTXyo/8Sb+afLAkzAptFuMsod9HFokGNudZpi/oQV73hnVK+sR+5PVRMd+Dr7YQ==";
      }
    );
    "node_modules/color-convert/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
        hash = "sha512-RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
      }
    );
    "node_modules/color-name/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
        hash = "sha512-dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
      }
    );
    "node_modules/commander/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-9.5.0.tgz";
        hash = "sha512-KRs7WVDKg86PWiuAqhDrAQnTXZKraVcCc6vFdL14qrZ/DcWwuRo7VoiYXalXO7S5GKpqYiVEwCbgFDfxNHKJBQ==";
      }
    );
    "node_modules/compress-commons/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/compress-commons/-/compress-commons-6.0.2.tgz";
        hash = "sha512-6FqVXeETqWPoGcfzrXb37E50NP0LXT8kAMu5ooZayhWWdgEY4lBEEcbQNXtkuKQsGduxiIcI4gOTsxTmuq/bSg==";
      }
    );
    "node_modules/console-control-strings/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz";
        hash = "sha512-ty/fTekppD2fIwRvnZAVdeOiGd1c7YXEixbgJTNzqcxJWKQnjJ/V1bNEEE6hygpM3WjwHFUVK6HTjWSzV4a8sQ==";
      }
    );
    "node_modules/content-disposition/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/content-disposition/-/content-disposition-1.0.1.tgz";
        hash = "sha512-oIXISMynqSqm241k6kcQ5UwttDILMK4BiurCfGEREw6+X9jkkpEe5T9FZaApyLGGOnFuyMWZpdolTXMtvEJ08Q==";
      }
    );
    "node_modules/content-type/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/content-type/-/content-type-1.0.5.tgz";
        hash = "sha512-nTjqfcBFEipKdXCv4YDQWCfmcLZKm81ldF0pAopTvyrFGVbcR6P/VAAd5G7N+0tTr8QqiU0tFadD6FK4NtJwOA==";
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
    "node_modules/core-util-is/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.3.tgz";
        hash = "sha512-ZQBvi1DcpJ4GDqanjucZ2Hj3wEO5pZDS89BWbkcrvdxksJorwUDDZamX9ldFkp9aw2lmBDLgkObEA4DWNJ9FYQ==";
      }
    );
    "node_modules/cors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cors/-/cors-2.8.6.tgz";
        hash = "sha512-tJtZBBHA6vjIAaF6EnIaq6laBBP9aq/Y3ouVJjEfoHbRBcHBAHYcMh/w8LDrk2PvIMMq8gmopa5D4V8RmbrxGw==";
      }
    );
    "node_modules/crc-32/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/crc-32/-/crc-32-1.2.2.tgz";
        hash = "sha512-ROmzCKrTnOwybPcJApAA6WBWij23HVfGVNKqqrZpuyZOHqK2CwHSvpGuyt/UNNvaIjEd8X5IFGp4Mh+Ie1IHJQ==";
      }
    );
    "node_modules/crc32-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/crc32-stream/-/crc32-stream-6.0.0.tgz";
        hash = "sha512-piICUB6ei4IlTv1+653yq5+KoqfBYmj9bw6LqXoOneTMDXk5nM1qt12mFW1caG3LlJXEKW1Bp0WggEmIfQB34g==";
      }
    );
    "node_modules/cross-spawn/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.6.tgz";
        hash = "sha512-uV2QOWP2nWzsy2aMp8aRibhi9dlzF5Hgh5SHaB9OiTGEyDTiJJyx0uy51QXdyWbtAHNua4XJzUKca3OzKUd3vA==";
      }
    );
    "node_modules/css-select/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/css-select/-/css-select-5.2.2.tgz";
        hash = "sha512-TizTzUddG/xYLA3NXodFM0fSbNizXjOKhqiQQwvhlspadZokn1KDy0NZFS0wuEubIYAV5/c1/lAr0TaaFXEXzw==";
      }
    );
    "node_modules/css-shorthand-properties/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/css-shorthand-properties/-/css-shorthand-properties-1.1.2.tgz";
        hash = "sha512-C2AugXIpRGQTxaCW0N7n5jD/p5irUmCrwl03TrnMFBHDbdq44CFWR2zO7rK9xPN4Eo3pUxC4vQzQgbIpzrD1PQ==";
      }
    );
    "node_modules/css-value/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/css-value/-/css-value-0.0.1.tgz";
        hash = "sha512-FUV3xaJ63buRLgHrLQVlVgQnQdR4yqdLGaDu7g8CQcWjInDfM9plBTPI9FRfpahju1UBSaMckeb2/46ApS/V1Q==";
      }
    );
    "node_modules/css-what/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/css-what/-/css-what-6.2.2.tgz";
        hash = "sha512-u/O3vwbptzhMs3L1fQE82ZSLHQQfto5gyZzwteVIEyeaY5Fc7R4dapF/BvRoSYFeqfBk4m0V1Vafq5Pjv25wvA==";
      }
    );
    "node_modules/data-uri-to-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/data-uri-to-buffer/-/data-uri-to-buffer-6.0.2.tgz";
        hash = "sha512-7hvf7/GW8e86rW0ptuwS3OcBGDjIi6SZva7hCyWC0yYry2cOPmLIjXAUHI6DK2HsnwJd9ifmt57i8eV2n4YNpw==";
      }
    );
    "node_modules/debug/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-4.4.3.tgz";
        hash = "sha512-RGwwWnwQvkVfavKVt22FGLw+xYSdzARwm0ru6DhTVA3umU5hZc28V3kO4stgYryrTlLpuvgI9GiijltAjNbcqA==";
      }
    );
    "node_modules/decamelize/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/decamelize/-/decamelize-6.0.1.tgz";
        hash = "sha512-G7Cqgaelq68XHJNGlZ7lrNQyhZGsFqpwtGFexqUv4IQdjKoSYF7ipZ9UuTJZUSQXFj/XaoBLuEVIVqr8EJngEQ==";
      }
    );
    "node_modules/deepmerge-ts/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/deepmerge-ts/-/deepmerge-ts-7.1.5.tgz";
        hash = "sha512-HOJkrhaYsweh+W+e74Yn7YStZOilkoPb6fycpwNLKzSPtruFs48nYis0zy5yJz1+ktUhHxoRDJ27RQAWLIJVJw==";
      }
    );
    "node_modules/degenerator/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/degenerator/-/degenerator-5.0.1.tgz";
        hash = "sha512-TllpMR/t0M5sqCXfj85i4XaAzxmS5tVA16dqvdkMwGmzI+dXLXnw3J+3Vdv7VKw+ThlTMboK6i9rnZ6Nntj5CQ==";
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
    "node_modules/dom-serializer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/dom-serializer/-/dom-serializer-2.0.0.tgz";
        hash = "sha512-wIkAryiqt/nV5EQKqQpo3SToSOV9J0DnbJqwK7Wv/Trc92zIAYZ4FlMu+JPFW1DfGFt81ZTCGgDEabffXeLyJg==";
      }
    );
    "node_modules/domelementtype/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/domelementtype/-/domelementtype-2.3.0.tgz";
        hash = "sha512-OLETBj6w0OsagBwdXnPdN0cnMfF9opN69co+7ZrbfPGrdpPVNBUj02spi6B1N7wChLQiPn4CSH/zJvXw56gmHw==";
      }
    );
    "node_modules/domhandler/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/domhandler/-/domhandler-5.0.3.tgz";
        hash = "sha512-cgwlv/1iFQiFnU96XXgROh8xTeetsnJiDsTc7TYCLFd9+/WNkIqPTxiM/8pSd8VIrhXGTf1Ny1q1hquVqDJB5w==";
      }
    );
    "node_modules/domutils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/domutils/-/domutils-3.2.2.tgz";
        hash = "sha512-6kZKyUajlDuqlHKVX1w7gyslj9MPIXzIFiz/rGu35uC1wMi+kMhQwGhl4lt9unC9Vb9INnY9Z3/ZA3+FhASLaw==";
      }
    );
    "node_modules/dunder-proto/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/dunder-proto/-/dunder-proto-1.0.1.tgz";
        hash = "sha512-KIN/nDJBQRcXw0MLVhZE9iQHmG68qAVIBg9CqmUYjmQIhgij9U5MFvrqkUL5FbtyyzZuOeOt0zdeRe4UY7ct+A==";
      }
    );
    "node_modules/eastasianwidth/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/eastasianwidth/-/eastasianwidth-0.2.0.tgz";
        hash = "sha512-I88TYZWc9XiYHRQ4/3c5rjjfgkjhLyW2luGIheGERbNQ6OY7yTybanSpDXZa8y7VUP9YmDcYa+eyq4ca7iLqWA==";
      }
    );
    "node_modules/edge-paths/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/edge-paths/-/edge-paths-3.0.5.tgz";
        hash = "sha512-sB7vSrDnFa4ezWQk9nZ/n0FdpdUuC6R1EOrlU3DL+bovcNFK28rqu2emmAUjujYEJTWIgQGqgVVWUZXMnc8iWg==";
      }
    );
    "node_modules/edgedriver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/edgedriver/-/edgedriver-6.3.0.tgz";
        hash = "sha512-ggEQL+oEyIcM4nP2QC3AtCQ04o4kDNefRM3hja0odvlPSnsaxiruMxEZ93v3gDCKWYW6BXUr51PPradb+3nffw==";
      }
    );
    "node_modules/ee-first/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
        hash = "sha512-WMwm9LhRUo+WUaRN+vRuETqG89IgZphVSNkdFgeb6sS/E4OrDIN7t48CAewSHXc6C8lefD8KKfr5vY61brQlow==";
      }
    );
    "node_modules/emoji-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz";
        hash = "sha512-MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A==";
      }
    );
    "node_modules/encodeurl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/encodeurl/-/encodeurl-2.0.0.tgz";
        hash = "sha512-Q0n9HRi4m6JuGIV1eFlmvJB7ZEVxu93IrMyiMsGC0lrMJMWzRgx6WGquyfQgZVb31vhGgXnfmPNNXmxnOkRBrg==";
      }
    );
    "node_modules/encoding-sniffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/encoding-sniffer/-/encoding-sniffer-0.2.1.tgz";
        hash = "sha512-5gvq20T6vfpekVtqrYQsSCFZ1wEg5+wW0/QaZMWkFr6BqD3NfKs0rLCx4rrVlSWJeZb5NBJgVLswK/w2MWU+Gw==";
      }
    );
    "node_modules/end-of-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.5.tgz";
        hash = "sha512-ooEGc6HP26xXq/N+GCGOT0JKCLDGrq2bQUZrQ7gyrJiZANJ/8YDTxTpQBXGMn+WbIQXNVpyWymm7KYVICQnyOg==";
      }
    );
    "node_modules/entities/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/entities/-/entities-4.5.0.tgz";
        hash = "sha512-V0hjH4dGPh9Ao5p0MoRY6BVqtwCjhz6vI5LT8AJ55H+4g9/4vbHx1I54fS0XuclLhDHArPQCiMjDxjaL8fPxhw==";
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
    "node_modules/escodegen/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/escodegen/-/escodegen-2.1.0.tgz";
        hash = "sha512-2NlIDTwUWJN0mRPQOdtQBzbUHvdGY2P1VXSyU83Q3xKxM7WHX2Ql8dKq782Q9TgQUNOLEzEYu9bzLNj1q88I5w==";
      }
    );
    "node_modules/esprima/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/esprima/-/esprima-4.0.1.tgz";
        hash = "sha512-eGuFFw7Upda+g4p+QHvnW0RyTX/SVeJBDM/gCtMARO0cLuT2HcEKnTPvhjV6aGeqrCB/sbNop0Kszm0jsaWU4A==";
      }
    );
    "node_modules/estraverse/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/estraverse/-/estraverse-5.3.0.tgz";
        hash = "sha512-MMdARuVEQziNTeJD8DgMqmhwR11BRQ/cBP+pLtYdSTnf3MIO8fFeiINEbX36ZdNlfU/7A9f3gUw49B3oQsvwBA==";
      }
    );
    "node_modules/esutils/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/esutils/-/esutils-2.0.3.tgz";
        hash = "sha512-kVscqXk4OCp68SZ0dkgEKVi6/8ij300KBWTJq32P/dYeWTSwK41WyTxalN1eRmA5Z9UU/LX9D7FWSmV9SAYx6g==";
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
    "node_modules/events-universal/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/events-universal/-/events-universal-1.0.1.tgz";
        hash = "sha512-LUd5euvbMLpwOF8m6ivPCbhQeSiYVNb8Vs0fQ8QjXo0JTkEHpz8pxdQf0gStltaPpw0Cca8b39KxvK9cfKRiAw==";
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
    "node_modules/extract-zip/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/extract-zip/-/extract-zip-2.0.1.tgz";
        hash = "sha512-GDhU9ntwuKyGXdZBUgTIe+vXnWj0fppUEtMDL0+idd5Sta8TGpHssn/eusA9mrPr9qNDym6SxAYZjNvCn/9RBg==";
      }
    );
    "node_modules/fast-deep-equal/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-2.0.1.tgz";
        hash = "sha512-bCK/2Z4zLidyB4ReuIsvALH6w31YfAQDmXMqMx6FyfHqvBxtjC0eRumeSu4Bs3XtXwpyIywtSTrVT99BxY1f9w==";
      }
    );
    "node_modules/fast-fifo/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-fifo/-/fast-fifo-1.3.2.tgz";
        hash = "sha512-/d9sfos4yxzpwkDkuN7k2SqFKtYNmCTzgfEpz82x34IM9/zc8KGxQoXg1liNC/izpRM/MBdt44Nmx41ZWqk+FQ==";
      }
    );
    "node_modules/fast-uri/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-uri/-/fast-uri-3.1.0.tgz";
        hash = "sha512-iPeeDKJSWf4IEOasVVrknXpaBV0IApz/gp7S2bb7Z4Lljbl2MGJRqInZiUrQwV16cpzw/D3S5j5Julj/gT52AA==";
      }
    );
    "node_modules/fast-xml-builder/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-xml-builder/-/fast-xml-builder-1.0.0.tgz";
        hash = "sha512-fpZuDogrAgnyt9oDDz+5DBz0zgPdPZz6D4IR7iESxRXElrlGTRkHJ9eEt+SACRJwT0FNFrt71DFQIUFBJfX/uQ==";
      }
    );
    "node_modules/fast-xml-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-xml-parser/-/fast-xml-parser-5.4.2.tgz";
        hash = "sha512-pw/6pIl4k0CSpElPEJhDppLzaixDEuWui2CUQQBH/ECDf7+y6YwA4Gf7Tyb0Rfe4DIMuZipYj4AEL0nACKglvQ==";
      }
    );
    "node_modules/fd-slicer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fd-slicer/-/fd-slicer-1.1.0.tgz";
        hash = "sha512-cE1qsB/VwyQozZ+q1dGxR8LBYNZeofhEdUNGSMbQD3Gw2lAzX9Zb3uIU6Ebc/Fmyjo9AWWfnn0AUCHqtevs/8g==";
      }
    );
    "node_modules/finalhandler/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/finalhandler/-/finalhandler-2.1.1.tgz";
        hash = "sha512-S8KoZgRZN+a5rNwqTxlZZePjT/4cnm0ROV70LedRHZ0p8u9fRID0hJUZQpkKLzro8LfmC8sx23bY6tVNxv8pQA==";
      }
    );
    "node_modules/foreground-child/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/foreground-child/-/foreground-child-3.3.1.tgz";
        hash = "sha512-gIXjKqtFuWEgzFRJA9WCQeSJLZDjgJUOMCMzxtvFq/37KojM1BFGufqsCy0r4qSQmYLsZYMeyRqzIWOMup03sw==";
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
    "node_modules/function-bind/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.2.tgz";
        hash = "sha512-7XHNxH7qX9xG5mIwxkhumTox/MIRNcOgDrxWsMt2pAr23WHp6MrRlN7FBSFpCpr+oVO0F744iUgR82nJMfG2SA==";
      }
    );
    "node_modules/geckodriver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/geckodriver/-/geckodriver-6.1.0.tgz";
        hash = "sha512-ZRXLa4ZaYTTgUO4Eefw+RsQCleugU2QLb1ME7qTYxxuRj51yAhfnXaItXNs5/vUzfIaDHuZ+YnSF005hfp07nQ==";
      }
    );
    "node_modules/get-caller-file/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-caller-file/-/get-caller-file-2.0.5.tgz";
        hash = "sha512-DyFP3BM/3YHTQOCUL/w0OZHR0lpKeGrxotcHWcqNEdnltqFwXVfhEBQ94eIo34AfQpo0rGki4cyIiftY06h2Fg==";
      }
    );
    "node_modules/get-intrinsic/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-intrinsic/-/get-intrinsic-1.3.0.tgz";
        hash = "sha512-9fSjSaos/fRIVIp+xSJlE6lfwhES7LNtKaCBIamHsjr2na1BiABJPo0mOjjz8GJDURarmCPGqaiVg5mfjb98CQ==";
      }
    );
    "node_modules/get-port/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-port/-/get-port-7.1.0.tgz";
        hash = "sha512-QB9NKEeDg3xxVwCCwJQ9+xycaz6pBB6iQ76wiWMl1927n0Kir6alPiP+yuiICLLU4jpMe08dXfpebuQppFA2zw==";
      }
    );
    "node_modules/get-proto/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-proto/-/get-proto-1.0.1.tgz";
        hash = "sha512-sTSfBjoXBp89JvIKIefqw7U2CCebsc74kiY6awiGogKtoSGbgjYE/G/+l9sF3MWFPNc9IcoOC4ODfKHfxFmp0g==";
      }
    );
    "node_modules/get-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-stream/-/get-stream-5.2.0.tgz";
        hash = "sha512-nBF+F1rAZVCu/p7rjzgA+Yb4lfYXrpl7a6VmJrU8wF9I1CKvP/QwPNZHnOlwbTkY6dvtFIzFMSyQXbLoTQPRpA==";
      }
    );
    "node_modules/get-uri/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/get-uri/-/get-uri-6.0.5.tgz";
        hash = "sha512-b1O07XYq8eRuVzBNgJLstU6FYc1tS6wnMtF1I1D9lE8LxZSOGZ7LhxN54yPP6mGw5f2CkXY2BQUL9Fx41qvcIg==";
      }
    );
    "node_modules/glob/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-10.5.0.tgz";
        hash = "sha512-DfXN8DfhJ7NH3Oe7cFmu3NCu1wKbkReJ8TorzSAFbSKrlNaQSKfIzqYqVY8zlbs2NLBbWpRiU52GX2PbaBVNkg==";
      }
    );
    "node_modules/gopd/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/gopd/-/gopd-1.2.0.tgz";
        hash = "sha512-ZUKRh6/kUFoAiTAtTYPZJ3hw9wNxx+BIBOijnlG9PnrJsCcSjs1wyyD6vJpaYtgnzDrKYRSqf3OO6Rfa93xsRg==";
      }
    );
    "node_modules/graceful-fs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz";
        hash = "sha512-RbJ5/jmFcNNCcDV5o9eTnBLJ/HszWV0P73bc+Ff4nS/rJj+YaS6IGyiOL0VoBYX+l1Wrl3k63h/KrH+nhJ0XvQ==";
      }
    );
    "node_modules/grapheme-splitter/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/grapheme-splitter/-/grapheme-splitter-1.0.4.tgz";
        hash = "sha512-bzh50DW9kTPM00T8y4o8vQg89Di9oLJVLW/KaOGIXJWP/iqCN6WKYkbNOF04vFLJhwcpYUh9ydh/+5vpOqV4YQ==";
      }
    );
    "node_modules/has-flag/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
        hash = "sha512-EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==";
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
        url = "https://registry.npmjs.org/hono/-/hono-4.12.11.tgz";
        hash = "sha512-r4xbIa3mGGGoH9nN4A14DOg2wx7y2oQyJEb5O57C/xzETG/qx4c7CVDQ5WMeKHZ7ORk2W0hZ/sQKXTav3cmYBA==";
      }
    );
    "node_modules/htmlfy/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/htmlfy/-/htmlfy-0.8.1.tgz";
        hash = "sha512-xWROBw9+MEGwxpotll0h672KCaLrKKiCYzsyN8ZgL9cQbVumFnyvsk2JqiB9ELAV1GLj1GG/jxZUjV9OZZi/yQ==";
      }
    );
    "node_modules/htmlparser2/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/htmlparser2/-/htmlparser2-10.1.0.tgz";
        hash = "sha512-VTZkM9GWRAtEpveh7MSF6SjjrpNVNNVJfFup7xTY3UpFtm67foy9HDVXneLtFVt4pMz5kZtgNcvCniNFb1hlEQ==";
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
    "node_modules/immediate/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/immediate/-/immediate-3.0.6.tgz";
        hash = "sha512-XXOFtyqDjNDAQxVfYxuF7g9Il/IbWmmlQg2MYKOH8ExIT1qg6xc4zyS3HaEEATgs1btfzxq15ciUiY7gjSXRGQ==";
      }
    );
    "node_modules/import-meta-resolve/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/import-meta-resolve/-/import-meta-resolve-4.2.0.tgz";
        hash = "sha512-Iqv2fzaTQN28s/FwZAoFq0ZSs/7hMAHJVX+w8PZl3cY19Pxk6jFFalxQoIfW2826i/fDLXv8IiEZRIT0lDuWcg==";
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
    "node_modules/is-fullwidth-code-point/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz";
        hash = "sha512-zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==";
      }
    );
    "node_modules/is-plain-obj/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-plain-obj/-/is-plain-obj-4.1.0.tgz";
        hash = "sha512-+Pgi+vMuUNkJyExiMBt5IlFoMyKnr5zhJ4Uspz58WOhBF5QoIZkFyNHIbBAtHwzVAgk5RtndVNsDRN61/mmDqg==";
      }
    );
    "node_modules/is-promise/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-promise/-/is-promise-4.0.0.tgz";
        hash = "sha512-hvpoI6korhJMnej285dSg6nu1+e6uxs7zG3BYAm5byqDsgJNWwxzM6z6iZiAgQR4TJ30JmBTOwqZUw3WlyH3AQ==";
      }
    );
    "node_modules/is-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-stream/-/is-stream-2.0.1.tgz";
        hash = "sha512-hFoiJiTl63nn+kstHGBtewWSKnQLpyb155KHheA1l39uvtO9nWIop1p3udqPcUd/xbF1VLMO4n7OI6p7RbngDg==";
      }
    );
    "node_modules/isarray/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        hash = "sha512-VLghIWNM6ELQzo7zwmcg0NmTVyWKYjvIeM83yjp0wRDTmUnrM678fQbcKBo6n2CJEF0szoG//ytg+TKla89ALQ==";
      }
    );
    "node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-4.0.0.tgz";
        hash = "sha512-FFUtZMpoZ8RqHS3XeXEmHWLA4thH+ZxCv2lOiPIn1Xc7CxrqhWzNSDzD+/chS/zbYezmiwWLdQC09JdQKmthOw==";
      }
    );
    "node_modules/jackspeak/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jackspeak/-/jackspeak-3.4.3.tgz";
        hash = "sha512-OGlZQpz2yfahA/Rd1Y8Cd9SIEsqvXkLVoSw/cgwhnhFMDbsQFeZYoJJ7bIZBS9BcamUW96asq/npPWugM+RQBw==";
      }
    );
    "node_modules/jiti/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jiti/-/jiti-2.6.1.tgz";
        hash = "sha512-ekilCSN1jwRvIbgeg/57YFh8qQDNbwDb9xT/qu2DAHbFFZUicIl4ygVaAvzveMhMVr3LnpSKTNnwt8PoOfmKhQ==";
      }
    );
    "node_modules/jose/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jose/-/jose-6.2.2.tgz";
        hash = "sha512-d7kPDd34KO/YnzaDOlikGpOurfF0ByC2sEV4cANCtdqLlTfBlw2p14O/5d/zv40gJPbIQxfES3nSx1/oYNyuZQ==";
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
    "node_modules/jszip/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/jszip/-/jszip-3.10.1.tgz";
        hash = "sha512-xXDvecyTpGLrqFrvkrUSoxxfJI5AH7U8zxxtVclpsUtMCq4JQ290LY8AW5c7Ggnr/Y/oK+bQMbqK2qmtk3pN4g==";
      }
    );
    "node_modules/lazystream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lazystream/-/lazystream-1.0.1.tgz";
        hash = "sha512-b94GiNHQNy6JNTrt5w6zNyffMrNkXZb3KTkCZJb2V1xaEGCk093vkZ2jk3tpaeP33/OiXC+WvK9AxUebnf5nbw==";
      }
    );
    "node_modules/lie/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lie/-/lie-3.3.0.tgz";
        hash = "sha512-UaiMJzeWRlEujzAuw5LokY1L5ecNQYZKfmyZ9L7wDHb/p5etKaxXhohBcrw0EYby+G/NA52vRSN4N39dxHAIwQ==";
      }
    );
    "node_modules/locate-app/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/locate-app/-/locate-app-2.5.0.tgz";
        hash = "sha512-xIqbzPMBYArJRmPGUZD9CzV9wOqmVtQnaAn3wrj3s6WYW0bQvPI7x+sPYUGmDTYMHefVK//zc6HEYZ1qnxIK+Q==";
      }
    );
    "node_modules/lodash/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.17.23.tgz";
        hash = "sha512-LgVTMpQtIopCi79SJeDiP0TfWi5CNEc/L/aRdTh3yIvmZXTnheWpKjSZhnvMl8iXbC1tFg9gdHHDMLoV7CnG+w==";
      }
    );
    "node_modules/lodash.clonedeep/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
        hash = "sha512-H5ZhCF25riFd9uB5UCkVKo61m3S/xZk1x4wA6yp/L3RFP6Z/eHH1ymQcGLo7J3GMPfm0V/7m1tryHuGVxpqEBQ==";
      }
    );
    "node_modules/lodash.zip/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lodash.zip/-/lodash.zip-4.2.0.tgz";
        hash = "sha512-C7IOaBBK/0gMORRBd8OETNx3kmOkgIWIPvyDpZSCTwUrpYmgZwJkjZeOD8ww4xbOUOs4/attY+pciKvadNfFbg==";
      }
    );
    "node_modules/loglevel/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/loglevel/-/loglevel-1.9.2.tgz";
        hash = "sha512-HgMmCqIJSAKqo68l0rS2AanEWfkxaZ5wNiEFb5ggm08lDs9Xl2KxBlX3PTcaD2chBM1gXAYf491/M2Rv8Jwayg==";
      }
    );
    "node_modules/loglevel-plugin-prefix/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/loglevel-plugin-prefix/-/loglevel-plugin-prefix-0.8.4.tgz";
        hash = "sha512-WpG9CcFAOjz/FtNht+QJeGpvVl/cdR6P0z6OcXSkr8wFJOsV2GRj2j10JLfjuA4aYkcKCNIEqRGCyTife9R8/g==";
      }
    );
    "node_modules/lru-cache/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-10.4.3.tgz";
        hash = "sha512-JNAzZcXrCt42VGLuYz0zfAzDfAvJWW6AfYlDBQyDV5DClI2m5sAmK+OIO7s59XfsRsWHp02jAJrRadPRGTt6SQ==";
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
        url = "https://registry.npmjs.org/minimatch/-/minimatch-9.0.9.tgz";
        hash = "sha512-OBwBN9AL4dqmETlpS2zasx+vTeWclWzkblfZk7KTA5j3jeOONz/tRCnZomUyvNg83wL5Zv9Ss6HMJXAgL8R2Yg==";
      }
    );
    "node_modules/minipass/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/minipass/-/minipass-7.1.3.tgz";
        hash = "sha512-tEBHqDnIoM/1rXME1zgka9g6Q2lcoCkxHLuc7ODJ5BxbP5d4c2Z5cGgtXAku59200Cx7diuHTOYfSBD8n6mm8A==";
      }
    );
    "node_modules/mitt/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/mitt/-/mitt-3.0.1.tgz";
        hash = "sha512-vKivATfr97l2/QBCYAkXYDbrIWPM2IIKEl7YPhjCvKlG3kE2gm+uBo6nEXK3M5/Ffh/FLpKExzOQ3JJoJGFKBw==";
      }
    );
    "node_modules/modern-tar/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/modern-tar/-/modern-tar-0.7.5.tgz";
        hash = "sha512-YTefgdpKKFgoTDbEUqXqgUJct2OG6/4hs4XWLsxcHkDLj/x/V8WmKIRppPnXP5feQ7d1vuYWSp3qKkxfwaFaxA==";
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
    "node_modules/netmask/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/netmask/-/netmask-2.0.2.tgz";
        hash = "sha512-dBpDMdxv9Irdq66304OLfEmQ9tbNRFnFTuZiLo+bD+r332bBmMJ8GBLXklIXXgxd3+v9+KUnZaUR5PJMa75Gsg==";
      }
    );
    "node_modules/node-simctl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/node-simctl/-/node-simctl-7.7.5.tgz";
        hash = "sha512-lWflzDW9xLuOOvR6mTJ9efbDtO/iSCH6rEGjxFxTV0vGgz5XjoZlW2BkNCCZib0B6Y23tCOiYhYJaMQYB8FKIQ==";
      }
    );
    "node_modules/normalize-path/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz";
        hash = "sha512-6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==";
      }
    );
    "node_modules/nth-check/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/nth-check/-/nth-check-2.1.1.tgz";
        hash = "sha512-lqjrjmaOoAnWfMmBPL+XNnynZh2+swxiX3WUE0s4yEHI6m+AwrK2UZOimIRl3X/4QctVqS8AiZjFqyOGrMXb/w==";
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
        url = "https://registry.npmjs.org/oh-my-opencode-slim/-/oh-my-opencode-slim-0.9.2.tgz";
        hash = "sha512-K+UIjQnkLss28E0uiu6MqJw8tPOg+2ChK3cVOfismjZYkOcEMMrr9pHp/HAYzPPgslTrr4e8A6Y70ddKXes9dw==";
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
    "node_modules/pac-proxy-agent/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pac-proxy-agent/-/pac-proxy-agent-7.2.0.tgz";
        hash = "sha512-TEB8ESquiLMc0lV8vcd5Ql/JAKAoyzHFXaStwjkzpOpC5Yv+pIzLfHvjTSdf3vpa2bMiUQrg9i6276yn8666aA==";
      }
    );
    "node_modules/pac-resolver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pac-resolver/-/pac-resolver-7.0.1.tgz";
        hash = "sha512-5NPgf87AT2STgwa2ntRMr45jTKrYBGkVU36yT0ig/n/GMAa3oPqhZfIQ2kMEimReg0+t9kZViDVZ83qfVUlckg==";
      }
    );
    "node_modules/package-json-from-dist/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/package-json-from-dist/-/package-json-from-dist-1.0.1.tgz";
        hash = "sha512-UEZIS3/by4OC8vL3P2dTXRETpebLI2NiI5vIrjaD/5UtrkFX/tNbwjTSRAGC/+7CAo2pIcBaRgWmcBBHcsaCIw==";
      }
    );
    "node_modules/pako/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pako/-/pako-1.0.11.tgz";
        hash = "sha512-4hLB8Py4zZce5s4yd9XzopqwVv/yGNhV1Bl8NTmCq1763HeK2+EwVTv+leGeL13Dnh2wfbqowVPXCIO0z4taYw==";
      }
    );
    "node_modules/parse5/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse5/-/parse5-7.3.0.tgz";
        hash = "sha512-IInvU7fabl34qmi9gY8XOVxhYyMyuH2xUNpb2q8/Y+7552KlejkRvqvD19nMoUW/uQGGbqNpA6Tufu5FL5BZgw==";
      }
    );
    "node_modules/parse5-htmlparser2-tree-adapter/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse5-htmlparser2-tree-adapter/-/parse5-htmlparser2-tree-adapter-7.1.0.tgz";
        hash = "sha512-ruw5xyKs6lrpo9x9rCZqZZnIUntICjQAd0Wsmp396Ul9lN/h+ifgVV1x1gZHi8euej6wTfpqX8j+BFQxF0NS/g==";
      }
    );
    "node_modules/parse5-parser-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parse5-parser-stream/-/parse5-parser-stream-7.1.2.tgz";
        hash = "sha512-JyeQc9iwFLn5TbvvqACIF/VXG6abODeB3Fwmv/TGdLk2LfbWkaySGY72at4+Ty7EkPZj854u4CrICqNk2qIbow==";
      }
    );
    "node_modules/parseurl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.3.tgz";
        hash = "sha512-CiyeOxFT/JZyN5m0z9PfXw4SCBJ6Sygz1Dpl0wqjlhDEGGBP1GnsUVEL0p63hoG1fcj3fHynXi9NYO4nWOL+qQ==";
      }
    );
    "node_modules/path-key/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz";
        hash = "sha512-ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==";
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
    "node_modules/pend/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pend/-/pend-1.2.0.tgz";
        hash = "sha512-F3asv42UuXchdzt+xXqfW1OGlVBe+mxa2mqI0pg5yAHZPvFmY3Y6drSf/GQ1A86WgWEN9Kzh/WrgKa6iGcHXLg==";
      }
    );
    "node_modules/pkce-challenge/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pkce-challenge/-/pkce-challenge-5.0.1.tgz";
        hash = "sha512-wQ0b/W4Fr01qtpHlqSqspcj3EhBvimsdh0KlHhH8HRZnMsEa0ea2fTULOXOS9ccQr3om+GcGRk4e+isrZWV8qQ==";
      }
    );
    "node_modules/playwright-core/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/playwright-core/-/playwright-core-1.58.2.tgz";
        hash = "sha512-yZkEtftgwS8CsfYo7nm0KE8jsvm6i/PTgVtB8DL726wNf6H2IMsDuxCpJj59KDaxCtSnrWan2AeDqM7JBaultg==";
      }
    );
    "node_modules/process/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/process/-/process-0.11.10.tgz";
        hash = "sha512-cdGef/drWFoydD1JsMzuFf8100nZl+GT+yacc2bEced5f9Rjk4z+WtFUTBu9PhOi9j/jfmBPu0mMEY4wIdAF8A==";
      }
    );
    "node_modules/process-nextick-args/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz";
        hash = "sha512-3ouUOpQhtgrbOa17J7+uxOTpITYWaGP7/AhoR3+A+/1e9skrzelGi/dXzEYyvbxubEF6Wn2ypscTKiKJFFn1ag==";
      }
    );
    "node_modules/progress/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/progress/-/progress-2.0.3.tgz";
        hash = "sha512-7PiHtLll5LdnKIMw100I+8xJXR5gW2QwWYkT6iJva0bXitZKa/XMrSbdmg3r2Xnaidz9Qumd0VPaMrZlF9V9sA==";
      }
    );
    "node_modules/proxy-addr/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.7.tgz";
        hash = "sha512-llQsMLSUDUPT44jdrU/O37qlnifitDP+ZwrmmZcoSKyLKvtZxpyV0n2/bD/N4tBAAZ/gJEdZU7KMraoK1+XYAg==";
      }
    );
    "node_modules/proxy-agent/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/proxy-agent/-/proxy-agent-6.5.0.tgz";
        hash = "sha512-TmatMXdr2KlRiA2CyDu8GqR8EjahTG3aY3nXjdzFyoZbmB8hrBsTyMezhULIXKnC0jpfjlmiZ3+EaCzoInSu/A==";
      }
    );
    "node_modules/proxy-from-env/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/proxy-from-env/-/proxy-from-env-1.1.0.tgz";
        hash = "sha512-D+zkORCbA9f1tdWRK0RaCR3GPv50cMxcrz4X8k5LTSUD1Dkw47mKJEZQNunItRTkWwgtaUSo1RVFRIG9ZXiFYg==";
      }
    );
    "node_modules/pump/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pump/-/pump-3.0.4.tgz";
        hash = "sha512-VS7sjc6KR7e1ukRFhQSY5LM2uBWAUPiOPa/A3mkKmiMwSmRFUITt0xuj+/lesgnCv+dPIEYlkzrcyXgquIHMcA==";
      }
    );
    "node_modules/qs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.15.0.tgz";
        hash = "sha512-mAZTtNCeetKMH+pSjrb76NAM8V9a05I9aBZOHztWy/UqcJdQYNsf59vrRKWnojAT9Y+GbIvoTBC++CPHqpDBhQ==";
      }
    );
    "node_modules/query-selector-shadow-dom/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/query-selector-shadow-dom/-/query-selector-shadow-dom-1.0.1.tgz";
        hash = "sha512-lT5yCqEBgfoMYpf3F2xQRK7zEr1rhIIZuceDK6+xRkJQ4NMbHTwXqk4NkwDwQMNqXgG9r9fyHnzwNVs6zV5KRw==";
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
    "node_modules/readdir-glob/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/readdir-glob/-/readdir-glob-1.1.3.tgz";
        hash = "sha512-v05I2k7xN8zXvPD9N+z/uhXPaj0sUFCe2rcWZIpBsqxfP7xXFQ0tipAd/wjj1YxWyWtUS5IDJpOG82JKt2EAVA==";
      }
    );
    "node_modules/require-directory/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/require-directory/-/require-directory-2.1.1.tgz";
        hash = "sha512-fGxEI7+wsG9xrvdjsrlmL22OMTTiHRwAMroiEeMgq8gzoLC/PQr7RsRDSTLUg/bZAZtF+TVIkHc6/4RIKrui+Q==";
      }
    );
    "node_modules/require-from-string/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/require-from-string/-/require-from-string-2.0.2.tgz";
        hash = "sha512-Xf0nWe6RseziFMu+Ap9biiUbmplq6S9/p+7w7YXP/JBHhrUDDUhwa+vANyubuqfZWTveU//DYVGsDG7RKL/vEw==";
      }
    );
    "node_modules/resq/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/resq/-/resq-1.11.0.tgz";
        hash = "sha512-G10EBz+zAAy3zUd/CDoBbXRL6ia9kOo3xRHrMDsHljI0GDkhYlyjwoCx5+3eCC4swi1uCoZQhskuJkj7Gp57Bw==";
      }
    );
    "node_modules/ret/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ret/-/ret-0.5.0.tgz";
        hash = "sha512-I1XxrZSQ+oErkRR4jYbAyEEu2I0avBvvMM5JN+6EBprOGRCs63ENqZ3vjavq8fBw2+62G5LF5XelKwuJpcvcxw==";
      }
    );
    "node_modules/rgb2hex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/rgb2hex/-/rgb2hex-0.2.5.tgz";
        hash = "sha512-22MOP1Rh7sAo1BZpDG6R5RFYzR2lYEgwq7HEmyW2qcsOqR2lQKmn+O//xV3YG/0rrhMC6KVX2hU+ZXuaw9a5bw==";
      }
    );
    "node_modules/rimraf/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/rimraf/-/rimraf-5.0.10.tgz";
        hash = "sha512-l0OE8wL34P4nJH/H2ffoaniAokM2qSmrtXHmlpvYr5AVVX8msAyW0l8NVJFDxlSK4u3Uh/f41cQheDVdnYijwQ==";
      }
    );
    "node_modules/router/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/router/-/router-2.2.0.tgz";
        hash = "sha512-nLTrUKm2UyiL7rlhapu/Zl45FwNgkZGaCpZbIHajDYgwlJCOzLSk+cIPAnsEqV955GjILJnKbdQC1nVPz+gAYQ==";
      }
    );
    "node_modules/safaridriver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safaridriver/-/safaridriver-1.0.1.tgz";
        hash = "sha512-jkg4434cYgtrIF2AeY/X0Wmd2W73cK5qIEFE3hDrrQenJH/2SDJIXGvPAigfvQTcE9+H31zkiNHbUqcihEiMRA==";
      }
    );
    "node_modules/safe-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        hash = "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==";
      }
    );
    "node_modules/safe-regex2/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safe-regex2/-/safe-regex2-5.0.0.tgz";
        hash = "sha512-YwJwe5a51WlK7KbOJREPdjNrpViQBI3p4T50lfwPuDhZnE3XGVTlGvi+aolc5+RvxDD6bnUmjVsU9n1eboLUYw==";
      }
    );
    "node_modules/safer-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        hash = "sha512-YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      }
    );
    "node_modules/semver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-7.7.4.tgz";
        hash = "sha512-vFKC2IEtQnVhpT78h1Yp8wzwrf8CM+MzKMHGJZfBtzhZNycRFnXsHk6E5TxIkkMsgNS7mdX3AGB7x2QM2di4lA==";
      }
    );
    "node_modules/send/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/send/-/send-1.2.1.tgz";
        hash = "sha512-1gnZf7DFcoIcajTjTwjwuDjzuz4PPcY2StKPlsGAQ1+YH20IRVrBaXSWmdjowTJ6u8Rc01PoYOGHXfP1mYcZNQ==";
      }
    );
    "node_modules/serialize-error/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/serialize-error/-/serialize-error-12.0.0.tgz";
        hash = "sha512-ZYkZLAvKTKQXWuh5XpBw7CdbSzagarX39WyZ2H07CDLC5/KfsRGlIXV8d4+tfqX1M7916mRqR1QfNHSij+c9Pw==";
      }
    );
    "node_modules/serve-static/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/serve-static/-/serve-static-2.2.1.tgz";
        hash = "sha512-xRXBn0pPqQTVQiC8wyQrKs2MOlX24zQ0POGaj0kultvoOCstBQM5yvOhAVSUwOMjQtTvsPWoNCHfPGwaaQJhTw==";
      }
    );
    "node_modules/set-blocking/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz";
        hash = "sha512-KiKBS8AnWGEyLzofFfmvKwpdPzqiy16LvQfK3yv/fVH7Bj13/wl3JSR1J+rfgRE9q7xUJK4qvgS8raSOeLUehw==";
      }
    );
    "node_modules/setimmediate/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/setimmediate/-/setimmediate-1.0.5.tgz";
        hash = "sha512-MATJdZp8sLqDl/68LfQmbP8zKPLQNV6BIZoIgrscFDQ+RsvK/BxeDQOgyxKKoh0y/8h3BqVFnCqQ/gd+reiIXA==";
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
    "node_modules/shell-quote/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/shell-quote/-/shell-quote-1.8.3.tgz";
        hash = "sha512-ObmnIF4hXNg1BqhnHmgbDETF8dLPCggZWBjkQfhZpbszZnYur5DUljTcCHii5LC3J5E0yeO/1LIMyH+UvHQgyw==";
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
    "node_modules/signal-exit/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-4.1.0.tgz";
        hash = "sha512-bzyZ1e88w9O1iNJbKnOlvYTrWPDl46O1bG0D3XInv+9tkPrxrN8jUUTiFlDkkmKWgn1M6CfIA13SuGqOa9Korw==";
      }
    );
    "node_modules/smart-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/smart-buffer/-/smart-buffer-4.2.0.tgz";
        hash = "sha512-94hK0Hh8rPqQl2xXc3HsaBoOXKV20MToPkcXvwbISWLEs+64sBq5kFgn2kJDHb1Pry9yrP0dxrCI9RRci7RXKg==";
      }
    );
    "node_modules/socks/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/socks/-/socks-2.8.7.tgz";
        hash = "sha512-HLpt+uLy/pxB+bum/9DzAgiKS8CX1EvbWxI4zlmgGCExImLdiad2iCwXT5Z4c9c3Eq8rP2318mPW2c+QbtjK8A==";
      }
    );
    "node_modules/socks-proxy-agent/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/socks-proxy-agent/-/socks-proxy-agent-8.0.5.tgz";
        hash = "sha512-HehCEsotFqbPW9sJ8WVYB6UbmIMv7kUUORIF2Nncq4VQvBfNBLibW9YZR5dlYCSUhwcD628pRllm7n+E+YTzJw==";
      }
    );
    "node_modules/source-map/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz";
        hash = "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==";
      }
    );
    "node_modules/source-map-support/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.5.21.tgz";
        hash = "sha512-uBHU3L3czsIyYXKX88fdrGovxdSCoTGDRZ6SYXtSRxLZUzHg5P/66Ht6uoUlHu9EZod+inXhKo3qQgwXUT/y1w==";
      }
    );
    "node_modules/spacetrim/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/spacetrim/-/spacetrim-0.11.59.tgz";
        hash = "sha512-lLYsktklSRKprreOm7NXReW8YiX2VBjbgmXYEziOoGf/qsJqAEACaDvoTtUOycwjpaSh+bT8eu0KrJn7UNxiCg==";
      }
    );
    "node_modules/split2/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/split2/-/split2-4.2.0.tgz";
        hash = "sha512-UcjcJOWknrNkF6PLX83qcHM6KHgVKNkV62Y8a5uYDVv9ydGQVwAHMKqHdJje1VTWpljG0WYpCDhrCdAOYH4TWg==";
      }
    );
    "node_modules/statuses/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-2.0.2.tgz";
        hash = "sha512-DvEy55V3DB7uknRo+4iOGT5fP1slR8wQohVdknigZPMpMstaKJQWhwiYBACJE3Ul2pTnATihhBYnRhZQHGBiRw==";
      }
    );
    "node_modules/streamx/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/streamx/-/streamx-2.23.0.tgz";
        hash = "sha512-kn+e44esVfn2Fa/O0CPFcex27fjIL6MkVae0Mm6q+E6f0hWv578YCERbv+4m02cjxvDsPKLnmxral/rR6lBMAg==";
      }
    );
    "node_modules/string-width/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz";
        hash = "sha512-wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==";
      }
    );
    "node_modules/string-width-cjs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string-width-cjs/-/string-width-4.2.3.tgz";
        hash = "sha512-wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==";
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
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-7.2.0.tgz";
        hash = "sha512-yDPMNjp4WyfYBkHnjIRLfca1i6KMyGCtsVgoKe/z1+6vukgaENdgGBZt+ZmKPc4gavvEZ5OgHfHdrazhgNyG7w==";
      }
    );
    "node_modules/strip-ansi-cjs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strip-ansi-cjs/-/strip-ansi-6.0.1.tgz";
        hash = "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      }
    );
    "node_modules/strnum/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strnum/-/strnum-2.2.0.tgz";
        hash = "sha512-Y7Bj8XyJxnPAORMZj/xltsfo55uOiyHcU2tnAVzHUnSJR/KsEX+9RoDeXEnsXtl/CX4fAcrt64gZ13aGaWPeBg==";
      }
    );
    "node_modules/supports-color/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz";
        hash = "sha512-qpCAvRl9stuOHveKsn7HncJRvv501qIacKzQlO/+Lwxc9+0q2wLyv4Dfvt80/DPn2pqOBsJdDiogXGR9+OvwRw==";
      }
    );
    "node_modules/tar-fs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tar-fs/-/tar-fs-3.1.2.tgz";
        hash = "sha512-QGxxTxxyleAdyM3kpFs14ymbYmNFrfY+pHj7Z8FgtbZ7w2//VAgLMac7sT6nRpIHjppXO2AwwEOg0bPFVRcmXw==";
      }
    );
    "node_modules/tar-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tar-stream/-/tar-stream-3.1.8.tgz";
        hash = "sha512-U6QpVRyCGHva435KoNWy9PRoi2IFYCgtEhq9nmrPPpbRacPs9IH4aJ3gbrFC8dPcXvdSZ4XXfXT5Fshbp2MtlQ==";
      }
    );
    "node_modules/teen_process/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/teen_process/-/teen_process-2.3.3.tgz";
        hash = "sha512-NIdeetf/6gyEqLjnzvfgQe7PfipSceq2xDQM2Py2BkBnIIeWh3HRD3vNhulyO5WppfCv9z4mtsEHyq8kdiULTA==";
      }
    );
    "node_modules/teex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/teex/-/teex-1.0.1.tgz";
        hash = "sha512-eYE6iEI62Ni1H8oIa7KlDU6uQBtqr4Eajni3wX7rpfXD8ysFx8z0+dri+KWEPWpBsxXfxu58x/0jvTVT1ekOSg==";
      }
    );
    "node_modules/text-decoder/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/text-decoder/-/text-decoder-1.2.7.tgz";
        hash = "sha512-vlLytXkeP4xvEq2otHeJfSQIRyWxo/oZGEbXrtEEF9Hnmrdly59sUbzZ/QgyWuLYHctCHxFF4tRQZNQ9k60ExQ==";
      }
    );
    "node_modules/toidentifier/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.1.tgz";
        hash = "sha512-o5sSPKEkg/DIQNmH43V0/uerLrpzVedkUh8tGNvaeXpfpuwjKenlSox/2O/BTlZUtEe+JG7s5YhEz608PlAHRA==";
      }
    );
    "node_modules/tslib/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/tslib/-/tslib-2.8.1.tgz";
        hash = "sha512-oJFu94HQb+KVduSUQL7wnpmqnfmLsOA/nAh6b6EH0wCEoK0/mPeXU6c3wKDV83MkOuHPRHtSXKKU99IBazS/2w==";
      }
    );
    "node_modules/type-fest/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/type-fest/-/type-fest-4.41.0.tgz";
        hash = "sha512-TeTSQ6H5YHvpqVwBRcnLDCBnDOHWYu7IvGbHT6N8AOymcr9PJGjc1GTtiWZTYg0NCgYwvnYWEkVChQAr9bjfwA==";
      }
    );
    "node_modules/type-is/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/type-is/-/type-is-2.0.1.tgz";
        hash = "sha512-OZs6gsjF4vMp32qrCbiVSkrFmXtG/AZhY3t0iAMrMBiAZyV9oALtXO8hsrHbMXF9x6L3grlFuwW2oAz7cav+Gw==";
      }
    );
    "node_modules/undici/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/undici/-/undici-7.22.0.tgz";
        hash = "sha512-RqslV2Us5BrllB+JeiZnK4peryVTndy9Dnqq62S3yYRRTj0tFQCwEniUy2167skdGOy3vqRzEvl1Dm4sV2ReDg==";
      }
    );
    "node_modules/undici-types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/undici-types/-/undici-types-6.21.0.tgz";
        hash = "sha512-iwDZqg0QAGrg9Rav5H4n0M64c3mkR59cJ6wQp+7C4nI0gsmExaedaYLNO44eT4AtBBwjbTiGPMlt2Md0T9H9JQ==";
      }
    );
    "node_modules/unpipe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
        hash = "sha512-pjy2bYhSsufwWlKwPc+l3cN7+wuJlK6uz0YdJEOlQDbl6jo/YlPi4mb8agUkVC8BF7V8NuzeyPNqRksA3hztKQ==";
      }
    );
    "node_modules/urlpattern-polyfill/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/urlpattern-polyfill/-/urlpattern-polyfill-10.1.0.tgz";
        hash = "sha512-IGjKp/o0NL3Bso1PymYURCJxMPNAf/ILOpendP9f5B6e1rTJgdgiOvgfoT8VxCAdY+Wisb9uhGaJJf3yZ2V9nw==";
      }
    );
    "node_modules/userhome/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/userhome/-/userhome-1.0.1.tgz";
        hash = "sha512-5cnLm4gseXjAclKowC4IjByaGsjtAoV6PrOQOljplNB54ReUYJP8HdAFq2muHinSDAh09PPX/uXDPfdxRHvuSA==";
      }
    );
    "node_modules/util-deprecate/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        hash = "sha512-EPD5q1uXyFxJpCrLnCc1nHnq3gOa6DZBocAIiI2TaSCA7VCJ1UJDMagCzIkXNsUYfD1daK//LTEQ8xiIbrHtcw==";
      }
    );
    "node_modules/uuid/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-11.1.0.tgz";
        hash = "sha512-0/A9rDy9P7cJ+8w1c9WD9V//9Wj15Ce2MPz8Ri6032usz+NfePxx5AcN3bN+r6ZL6jEo066/yNYB3tn4pQEx+A==";
      }
    );
    "node_modules/vary/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz";
        hash = "sha512-BNGbWLfd0eUPabhkXUVm0j8uuvREyTh5ovRa/dyow/BqAbZJyC+5fU+IzQOzmAKzYqYRAISoRhdQr3eIZ/PXqg==";
      }
    );
    "node_modules/vscode-jsonrpc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.2.1.tgz";
        hash = "sha512-kdjOSJ2lLIn7r1rtrMbbNCHjyMPfRnowdKjBQ+mGq6NAW5QY2bEZC/khaC5OR8svbbjvLEaIXkOq45e2X9BIbQ==";
      }
    );
    "node_modules/vscode-languageserver-protocol/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.5.tgz";
        hash = "sha512-mb1bvRJN8SVznADSGWM9u/b07H7Ecg0I3OgXDuLdn307rl/J3A9YD6/eYOssqhecL27hK1IPZAsaqh00i/Jljg==";
      }
    );
    "node_modules/vscode-languageserver-types/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.17.5.tgz";
        hash = "sha512-Ld1VelNuX9pdF39h2Hgaeb5hEZM2Z3jUrrMgWQAu82jMtZp7p3vJT3BzToKtZI7NgQssZje5o0zryOrhQvzQAg==";
      }
    );
    "node_modules/wait-port/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/wait-port/-/wait-port-1.1.0.tgz";
        hash = "sha512-3e04qkoN3LxTMLakdqeWth8nih8usyg+sf1Bgdf9wwUkp05iuK1eSY/QpLvscT/+F/gA89+LpUmmgBtesbqI2Q==";
      }
    );
    "node_modules/webdriver/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/webdriver/-/webdriver-9.24.0.tgz";
        hash = "sha512-2R31Ey83NzMsafkl4hdFq6GlIBvOODQMkueLjeRqYAITu3QCYiq9oqBdnWA6CdePuV4dbKlYsKRX0mwMiPclDA==";
      }
    );
    "node_modules/webdriverio/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/webdriverio/-/webdriverio-9.24.0.tgz";
        hash = "sha512-LTJt6Z/iDM0ne/4ytd3BykoPv9CuJ+CAILOzlwFeMGn4Mj02i4Bk2Rg9o/jeJ89f52hnv4OPmNjD0e8nzWAy5g==";
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
    "node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-6.0.1.tgz";
        hash = "sha512-oGLe46MIrCRqX7ytPUf66EAYvdeMIZYn3WaocqqKZAxrBpkqHfL/qvTyJ/bTk5+AqHCjXmrv3CEWgy368zhRUg==";
      }
    );
    "node_modules/wrap-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-8.1.0.tgz";
        hash = "sha512-si7QWI6zUMq56bESFvagtmzMdGOtoxfR+Sez11Mobfc7tm+VkUckk9bW2UeffTGVUbOksxmSw0AA2gs8g71NCQ==";
      }
    );
    "node_modules/wrap-ansi-cjs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/wrap-ansi-cjs/-/wrap-ansi-7.0.0.tgz";
        hash = "sha512-YVGIj2kamLSTxw6NsZjoBxfSwsn0ycdesmc4p+Q21c5zPuZ1pl+NfxVdxPtdHvmNVOQ6XSYG4AUtyt/Fi7D16Q==";
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
    "node_modules/y18n/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/y18n/-/y18n-5.0.8.tgz";
        hash = "sha512-0pfFzegeDWJHJIAmTLRP2DwHjdF5s7jo9tuztdQxAhINCdvS+3nGINqPd00AphqJR/0LhANUS6/+7SCb98YOfA==";
      }
    );
    "node_modules/yargs/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/yargs/-/yargs-17.7.2.tgz";
        hash = "sha512-7dSzzRQ++CKnNI/krKnYRV7JKKPUXMEh61soaHKg9mrWEhzFWhFnxPxGl+69cD1Ou63C13NUPCnmIcrvqCuM6w==";
      }
    );
    "node_modules/yargs-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/yargs-parser/-/yargs-parser-21.1.1.tgz";
        hash = "sha512-tVpsJW7DdjecAiFpbIB1e3qxIQsE6NoPc5/eTdrbbIC4h0LVsWhnoa3g+m2HclBIujHzsxZ4VJVA+GUuc2/LBw==";
      }
    );
    "node_modules/yauzl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/yauzl/-/yauzl-2.10.0.tgz";
        hash = "sha512-p4a9I6X6nu6IhoGmBqAcbJy1mlC4j27vEPZX9F4L4/vZT3Lyq1VkFHw/V/PUcB9Buo+DG3iHkT0x3Qya58zc3g==";
      }
    );
    "node_modules/zip-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zip-stream/-/zip-stream-6.0.1.tgz";
        hash = "sha512-zK7YHHz4ZXpW89AHXUPbQVGKI7uvkd3hzusTdotCg1UxyaVtg0zFJSTfW/Dq5f7OBBVnq6cZIaC8Ti4hb6dtCA==";
      }
    );
    "node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz";
        hash = "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==";
      }
    );
    "node_modules/zod-to-json-schema/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod-to-json-schema/-/zod-to-json-schema-3.25.2.tgz";
        hash = "sha512-O/PgfnpT1xKSDeQYSCfRI5Gy3hPf91mKVDuYLUHZJMiDFptvP41MSnWofm8dnCm0256ZNfZIM7DSzuSMAFnjHA==";
      }
    );
    "node_modules/@appium/logger/node_modules/lodash/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz";
        hash = "sha512-v2kDEe57lecTulaDIuNTPy3Ry4gLGJ6Z1O3vE1krgXZNrsQ+LFTGHVxVjcXPs17LhbZVGedAJv8XZ1tvj5FvSg==";
      }
    );
    "node_modules/@isaacs/cliui/node_modules/string-width/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-5.1.2.tgz";
        hash = "sha512-HnLOCR3vjcY8beoNLtcjZ5/nxn2afmME6lhrDrebokqMap+XbeW8n9TXpPDOqdGK5qcI3oT0GKTW6wC7EMiVqA==";
      }
    );
    "node_modules/@modelcontextprotocol/sdk/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-4.3.6.tgz";
        hash = "sha512-rftlrkhHZOcjDwkGlnUtZZkvaPHCsDATp4pGpuOOMDaTdDDXF91wuVDJoWoPsKX/3YPQ5fHuF3STjcYyKr+Qhg==";
      }
    );
    "node_modules/@opencode-ai/plugin/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-4.1.8.tgz";
        hash = "sha512-5R1P+WwQqmmMIEACyzSvo4JXHY5WiAFHRMg+zBZKgKS+Q1viRa0C1hmUKtHltoIFKtIdki3pRxkmpP74jnNYHQ==";
      }
    );
    "node_modules/ajv/node_modules/fast-deep-equal/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz";
        hash = "sha512-f3qQ9oQy9j2AhBe/H9VC91wLmKBCCU/gDOnKNAYG5hswO7BLKj09Hc5HYNz9cGI++xlpDCIgDaitVs03ATR84Q==";
      }
    );
    "node_modules/cliui/node_modules/strip-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
        hash = "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      }
    );
    "node_modules/cliui/node_modules/wrap-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-7.0.0.tgz";
        hash = "sha512-YVGIj2kamLSTxw6NsZjoBxfSwsn0ycdesmc4p+Q21c5zPuZ1pl+NfxVdxPtdHvmNVOQ6XSYG4AUtyt/Fi7D16Q==";
      }
    );
    "node_modules/cross-spawn/node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        hash = "sha512-BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      }
    );
    "node_modules/edge-paths/node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        hash = "sha512-BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      }
    );
    "node_modules/encoding-sniffer/node_modules/iconv-lite/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.6.3.tgz";
        hash = "sha512-4fCk79wshMdzMp2rH06qWrJE4iolqLhCUH+OiuIgU++RB0+94NlDL81atO7GX55uUKueo0txHNtvEyI6D7WdMw==";
      }
    );
    "node_modules/htmlparser2/node_modules/entities/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/entities/-/entities-7.0.1.tgz";
        hash = "sha512-TWrgLOFUQTH994YUyl1yT4uyavY5nNB5muff+RtWaqNVCAK408b5ZnnbNAUEWLTCpum9w6arT70i1XdQ4UeOPA==";
      }
    );
    "node_modules/jszip/node_modules/readable-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.8.tgz";
        hash = "sha512-8p0AUk4XODgIewSi0l8Epjs+EVnWiK7NoDIEGU0HhE7+ZyY8D1IMY7odu5lRrFXGg71L15KG8QrPmum45RTtdA==";
      }
    );
    "node_modules/lazystream/node_modules/readable-stream/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.8.tgz";
        hash = "sha512-8p0AUk4XODgIewSi0l8Epjs+EVnWiK7NoDIEGU0HhE7+ZyY8D1IMY7odu5lRrFXGg71L15KG8QrPmum45RTtdA==";
      }
    );
    "node_modules/locate-app/node_modules/type-fest/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/type-fest/-/type-fest-4.26.0.tgz";
        hash = "sha512-OduNjVJsFbifKb57UqZ2EMP1i4u64Xwow3NYXUtBbD4vIwJdQd4+xl8YDou1dlm4DVrtwT/7Ky8z8WyCULVfxw==";
      }
    );
    "node_modules/node-simctl/node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-5.0.0.tgz";
        hash = "sha512-JEdGzHwwkrbWoGOlIHqQ5gtprKGOenpDHpxE9zVR1bWbOtYRyPPHMe9FaP6x61CmNaTThSkb0DAJte5jD+DmzQ==";
      }
    );
    "node_modules/oh-my-opencode-slim/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-4.3.6.tgz";
        hash = "sha512-rftlrkhHZOcjDwkGlnUtZZkvaPHCsDATp4pGpuOOMDaTdDDXF91wuVDJoWoPsKX/3YPQ5fHuF3STjcYyKr+Qhg==";
      }
    );
    "node_modules/parse5/node_modules/entities/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/entities/-/entities-6.0.1.tgz";
        hash = "sha512-aN97NXWF6AWBTahfVOIrB/NShkzi5H7F9r1s9mD3cDj4Ko5f2qhhVoYMibXF7GlLveb/D2ioWay8lxI97Ven3g==";
      }
    );
    "node_modules/proxy-agent/node_modules/lru-cache/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-7.18.3.tgz";
        hash = "sha512-jumlc0BIUrS3qJGgIkWZsyfAM7NCWiBcCDhnd+3NNM5KbBmLTgHVfWBcg6W+rLUsIpzpERPsvwUP7CckAQSOoA==";
      }
    );
    "node_modules/readdir-glob/node_modules/minimatch/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-5.1.9.tgz";
        hash = "sha512-7o1wEA2RyMP7Iu7GNba9vc0RWWGACJOCZBJX2GJWip0ikV+wcOsgVuY9uE8CPiyQhkGFSlhuSkZPavN7u1c2Fw==";
      }
    );
    "node_modules/string-width/node_modules/strip-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
        hash = "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      }
    );
    "node_modules/string-width-cjs/node_modules/strip-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
        hash = "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      }
    );
    "node_modules/string_decoder/node_modules/safe-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
        hash = "sha512-rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==";
      }
    );
    "node_modules/strip-ansi-cjs/node_modules/ansi-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
        hash = "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      }
    );
    "node_modules/vscode-languageserver-protocol/node_modules/vscode-jsonrpc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.2.0.tgz";
        hash = "sha512-C+r0eKJUIfiDIfwJhria30+TYWPtuHJXHtI7J0YlOmKAo7ogxP20T0zxB7HZQIFhIyvoBPwWskjxrvAtfjyZfA==";
      }
    );
    "node_modules/wait-port/node_modules/chalk/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-4.1.2.tgz";
        hash = "sha512-oKnbhFyRIXpUuez8iBMmyEa4nbj4IOQyuhc/wy9kY7/WVPcwIO9VA668Pu8RkO7+0G76SLROeyw9CpQ061i4mA==";
      }
    );
    "node_modules/webdriver/node_modules/undici/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/undici/-/undici-6.23.0.tgz";
        hash = "sha512-VfQPToRA5FZs/qJxLIinmU59u0r7LXqoJkCzinq3ckNJp3vKEh7jTWN589YQ5+aoAC/TGRLyJLCPKcLQbM8r9g==";
      }
    );
    "node_modules/whatwg-encoding/node_modules/iconv-lite/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.6.3.tgz";
        hash = "sha512-4fCk79wshMdzMp2rH06qWrJE4iolqLhCUH+OiuIgU++RB0+94NlDL81atO7GX55uUKueo0txHNtvEyI6D7WdMw==";
      }
    );
    "node_modules/wrap-ansi/node_modules/ansi-styles/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-6.2.3.tgz";
        hash = "sha512-4Dj6M28JB+oAH8kFkTLUo+a2jwOFkuqb3yucU0CANcRRUbxS0cP0nZYCGjcc3BNXwRIsUVmDGgzawme7zvJHvg==";
      }
    );
    "node_modules/wrap-ansi/node_modules/string-width/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-5.1.2.tgz";
        hash = "sha512-HnLOCR3vjcY8beoNLtcjZ5/nxn2afmME6lhrDrebokqMap+XbeW8n9TXpPDOqdGK5qcI3oT0GKTW6wC7EMiVqA==";
      }
    );
    "node_modules/wrap-ansi-cjs/node_modules/strip-ansi/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
        hash = "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      }
    );
    "node_modules/yauzl/node_modules/buffer-crc32/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
        hash = "sha512-VO9Ht/+p3SN7SKWqcrgEzjGbRSJYTx+Q1pTQC0wrWqHx0vpJraQ6GtHx8tvcg1rlK1byhU5gccxgOgj7B0TDkQ==";
      }
    );
    "node_modules/@isaacs/cliui/node_modules/string-width/node_modules/emoji-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-9.2.2.tgz";
        hash = "sha512-L18DaJsXSUk2+42pv8mLs5jJT2hqFkFE4j21wOmgbUqsZ2hL72NsUU785g9RXgo3s0ZNgVl42TiHp3ZtOv/Vyg==";
      }
    );
    "node_modules/cliui/node_modules/strip-ansi/node_modules/ansi-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
        hash = "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      }
    );
    "node_modules/cross-spawn/node_modules/which/node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        hash = "sha512-RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
      }
    );
    "node_modules/edge-paths/node_modules/which/node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        hash = "sha512-RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
      }
    );
    "node_modules/jszip/node_modules/readable-stream/node_modules/string_decoder/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz";
        hash = "sha512-n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==";
      }
    );
    "node_modules/lazystream/node_modules/readable-stream/node_modules/string_decoder/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz";
        hash = "sha512-n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==";
      }
    );
    "node_modules/node-simctl/node_modules/which/node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-3.1.5.tgz";
        hash = "sha512-6B3tLtFqtQS4ekarvLVMZ+X+VlvQekbe4taUkf/rhVO3d/h0M2rfARm/pXLcPEsjjMsFgrFgSrhQIxcSVrBz8w==";
      }
    );
    "node_modules/string-width-cjs/node_modules/strip-ansi/node_modules/ansi-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
        hash = "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      }
    );
    "node_modules/string-width/node_modules/strip-ansi/node_modules/ansi-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
        hash = "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      }
    );
    "node_modules/wrap-ansi-cjs/node_modules/strip-ansi/node_modules/ansi-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
        hash = "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      }
    );
    "node_modules/wrap-ansi/node_modules/string-width/node_modules/emoji-regex/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-9.2.2.tgz";
        hash = "sha512-L18DaJsXSUk2+42pv8mLs5jJT2hqFkFE4j21wOmgbUqsZ2hL72NsUU785g9RXgo3s0ZNgVl42TiHp3ZtOv/Vyg==";
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
  patchShebangs --host "$out/lib/node_modules/@puppeteer/browsers/lib/cjs/main-cli.js"
  ln -s "$out/lib/node_modules/@puppeteer/browsers/lib/cjs/main-cli.js" "$out/lib/node_modules/.bin/browsers"
  patchShebangs --host "$out/lib/node_modules/agent-browser/b"
  ln -s "$out/lib/node_modules/agent-browser/b" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/agent-browser/i"
  ln -s "$out/lib/node_modules/agent-browser/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/agent-browser/n"
  ln -s "$out/lib/node_modules/agent-browser/n" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/agent-browser//"
  ln -s "$out/lib/node_modules/agent-browser//" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/agent-browser/a"
  ln -s "$out/lib/node_modules/agent-browser/a" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/agent-browser/g"
  ln -s "$out/lib/node_modules/agent-browser/g" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/agent-browser/e"
  ln -s "$out/lib/node_modules/agent-browser/e" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/agent-browser/n"
  ln -s "$out/lib/node_modules/agent-browser/n" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/agent-browser/t"
  ln -s "$out/lib/node_modules/agent-browser/t" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/agent-browser/-"
  ln -s "$out/lib/node_modules/agent-browser/-" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/agent-browser/b"
  ln -s "$out/lib/node_modules/agent-browser/b" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/agent-browser/r"
  ln -s "$out/lib/node_modules/agent-browser/r" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/agent-browser/o"
  ln -s "$out/lib/node_modules/agent-browser/o" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/agent-browser/w"
  ln -s "$out/lib/node_modules/agent-browser/w" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/agent-browser/s"
  ln -s "$out/lib/node_modules/agent-browser/s" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/agent-browser/e"
  ln -s "$out/lib/node_modules/agent-browser/e" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/agent-browser/r"
  ln -s "$out/lib/node_modules/agent-browser/r" "$out/lib/node_modules/.bin/16"
  patchShebangs --host "$out/lib/node_modules/agent-browser/."
  ln -s "$out/lib/node_modules/agent-browser/." "$out/lib/node_modules/.bin/17"
  patchShebangs --host "$out/lib/node_modules/agent-browser/j"
  ln -s "$out/lib/node_modules/agent-browser/j" "$out/lib/node_modules/.bin/18"
  patchShebangs --host "$out/lib/node_modules/agent-browser/s"
  ln -s "$out/lib/node_modules/agent-browser/s" "$out/lib/node_modules/.bin/19"
  patchShebangs --host "$out/lib/node_modules/crc-32/bin/crc32.njs"
  ln -s "$out/lib/node_modules/crc-32/bin/crc32.njs" "$out/lib/node_modules/.bin/crc32"
  patchShebangs --host "$out/lib/node_modules/edgedriver/b"
  ln -s "$out/lib/node_modules/edgedriver/b" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/edgedriver/i"
  ln -s "$out/lib/node_modules/edgedriver/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/edgedriver/n"
  ln -s "$out/lib/node_modules/edgedriver/n" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/edgedriver//"
  ln -s "$out/lib/node_modules/edgedriver//" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/edgedriver/e"
  ln -s "$out/lib/node_modules/edgedriver/e" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/edgedriver/d"
  ln -s "$out/lib/node_modules/edgedriver/d" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/edgedriver/g"
  ln -s "$out/lib/node_modules/edgedriver/g" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/edgedriver/e"
  ln -s "$out/lib/node_modules/edgedriver/e" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/edgedriver/d"
  ln -s "$out/lib/node_modules/edgedriver/d" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/edgedriver/r"
  ln -s "$out/lib/node_modules/edgedriver/r" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/edgedriver/i"
  ln -s "$out/lib/node_modules/edgedriver/i" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/edgedriver/v"
  ln -s "$out/lib/node_modules/edgedriver/v" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/edgedriver/e"
  ln -s "$out/lib/node_modules/edgedriver/e" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/edgedriver/r"
  ln -s "$out/lib/node_modules/edgedriver/r" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/edgedriver/."
  ln -s "$out/lib/node_modules/edgedriver/." "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/edgedriver/j"
  ln -s "$out/lib/node_modules/edgedriver/j" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/edgedriver/s"
  ln -s "$out/lib/node_modules/edgedriver/s" "$out/lib/node_modules/.bin/16"
  patchShebangs --host "$out/lib/node_modules/escodegen/bin/escodegen.js"
  ln -s "$out/lib/node_modules/escodegen/bin/escodegen.js" "$out/lib/node_modules/.bin/escodegen"
  patchShebangs --host "$out/lib/node_modules/escodegen/bin/esgenerate.js"
  ln -s "$out/lib/node_modules/escodegen/bin/esgenerate.js" "$out/lib/node_modules/.bin/esgenerate"
  patchShebangs --host "$out/lib/node_modules/esprima/bin/esparse.js"
  ln -s "$out/lib/node_modules/esprima/bin/esparse.js" "$out/lib/node_modules/.bin/esparse"
  patchShebangs --host "$out/lib/node_modules/esprima/bin/esvalidate.js"
  ln -s "$out/lib/node_modules/esprima/bin/esvalidate.js" "$out/lib/node_modules/.bin/esvalidate"
  patchShebangs --host "$out/lib/node_modules/extract-zip/c"
  ln -s "$out/lib/node_modules/extract-zip/c" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/extract-zip/l"
  ln -s "$out/lib/node_modules/extract-zip/l" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/extract-zip/i"
  ln -s "$out/lib/node_modules/extract-zip/i" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/extract-zip/."
  ln -s "$out/lib/node_modules/extract-zip/." "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/extract-zip/j"
  ln -s "$out/lib/node_modules/extract-zip/j" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/extract-zip/s"
  ln -s "$out/lib/node_modules/extract-zip/s" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/fast-xml-parser/src/cli/cli.js"
  ln -s "$out/lib/node_modules/fast-xml-parser/src/cli/cli.js" "$out/lib/node_modules/.bin/fxparser"
  patchShebangs --host "$out/lib/node_modules/geckodriver/b"
  ln -s "$out/lib/node_modules/geckodriver/b" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/geckodriver/i"
  ln -s "$out/lib/node_modules/geckodriver/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/geckodriver/n"
  ln -s "$out/lib/node_modules/geckodriver/n" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/geckodriver//"
  ln -s "$out/lib/node_modules/geckodriver//" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/geckodriver/g"
  ln -s "$out/lib/node_modules/geckodriver/g" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/geckodriver/e"
  ln -s "$out/lib/node_modules/geckodriver/e" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/geckodriver/c"
  ln -s "$out/lib/node_modules/geckodriver/c" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/geckodriver/k"
  ln -s "$out/lib/node_modules/geckodriver/k" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/geckodriver/o"
  ln -s "$out/lib/node_modules/geckodriver/o" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/geckodriver/d"
  ln -s "$out/lib/node_modules/geckodriver/d" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/geckodriver/r"
  ln -s "$out/lib/node_modules/geckodriver/r" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/geckodriver/i"
  ln -s "$out/lib/node_modules/geckodriver/i" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/geckodriver/v"
  ln -s "$out/lib/node_modules/geckodriver/v" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/geckodriver/e"
  ln -s "$out/lib/node_modules/geckodriver/e" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/geckodriver/r"
  ln -s "$out/lib/node_modules/geckodriver/r" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/geckodriver/."
  ln -s "$out/lib/node_modules/geckodriver/." "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/geckodriver/j"
  ln -s "$out/lib/node_modules/geckodriver/j" "$out/lib/node_modules/.bin/16"
  patchShebangs --host "$out/lib/node_modules/geckodriver/s"
  ln -s "$out/lib/node_modules/geckodriver/s" "$out/lib/node_modules/.bin/17"
  patchShebangs --host "$out/lib/node_modules/glob/d"
  ln -s "$out/lib/node_modules/glob/d" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/glob/i"
  ln -s "$out/lib/node_modules/glob/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/glob/s"
  ln -s "$out/lib/node_modules/glob/s" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/glob/t"
  ln -s "$out/lib/node_modules/glob/t" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/glob//"
  ln -s "$out/lib/node_modules/glob//" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/glob/e"
  ln -s "$out/lib/node_modules/glob/e" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/glob/s"
  ln -s "$out/lib/node_modules/glob/s" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/glob/m"
  ln -s "$out/lib/node_modules/glob/m" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/glob//"
  ln -s "$out/lib/node_modules/glob//" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/glob/b"
  ln -s "$out/lib/node_modules/glob/b" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/glob/i"
  ln -s "$out/lib/node_modules/glob/i" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/glob/n"
  ln -s "$out/lib/node_modules/glob/n" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/glob/."
  ln -s "$out/lib/node_modules/glob/." "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/glob/m"
  ln -s "$out/lib/node_modules/glob/m" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/glob/j"
  ln -s "$out/lib/node_modules/glob/j" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/glob/s"
  ln -s "$out/lib/node_modules/glob/s" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/jiti/l"
  ln -s "$out/lib/node_modules/jiti/l" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/jiti/i"
  ln -s "$out/lib/node_modules/jiti/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/jiti/b"
  ln -s "$out/lib/node_modules/jiti/b" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/jiti//"
  ln -s "$out/lib/node_modules/jiti//" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/jiti/j"
  ln -s "$out/lib/node_modules/jiti/j" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/jiti/i"
  ln -s "$out/lib/node_modules/jiti/i" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/jiti/t"
  ln -s "$out/lib/node_modules/jiti/t" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/jiti/i"
  ln -s "$out/lib/node_modules/jiti/i" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/jiti/-"
  ln -s "$out/lib/node_modules/jiti/-" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/jiti/c"
  ln -s "$out/lib/node_modules/jiti/c" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/jiti/l"
  ln -s "$out/lib/node_modules/jiti/l" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/jiti/i"
  ln -s "$out/lib/node_modules/jiti/i" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/jiti/."
  ln -s "$out/lib/node_modules/jiti/." "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/jiti/m"
  ln -s "$out/lib/node_modules/jiti/m" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/jiti/j"
  ln -s "$out/lib/node_modules/jiti/j" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/jiti/s"
  ln -s "$out/lib/node_modules/jiti/s" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/oh-my-opencode-slim/dist/cli/index.js"
  ln -s "$out/lib/node_modules/oh-my-opencode-slim/dist/cli/index.js" "$out/lib/node_modules/.bin/oh-my-opencode-slim"
  patchShebangs --host "$out/lib/node_modules/playwright-core/c"
  ln -s "$out/lib/node_modules/playwright-core/c" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/playwright-core/l"
  ln -s "$out/lib/node_modules/playwright-core/l" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/playwright-core/i"
  ln -s "$out/lib/node_modules/playwright-core/i" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/playwright-core/."
  ln -s "$out/lib/node_modules/playwright-core/." "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/playwright-core/j"
  ln -s "$out/lib/node_modules/playwright-core/j" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/playwright-core/s"
  ln -s "$out/lib/node_modules/playwright-core/s" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/rimraf/d"
  ln -s "$out/lib/node_modules/rimraf/d" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/rimraf/i"
  ln -s "$out/lib/node_modules/rimraf/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/rimraf/s"
  ln -s "$out/lib/node_modules/rimraf/s" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/rimraf/t"
  ln -s "$out/lib/node_modules/rimraf/t" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/rimraf//"
  ln -s "$out/lib/node_modules/rimraf//" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/rimraf/e"
  ln -s "$out/lib/node_modules/rimraf/e" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/rimraf/s"
  ln -s "$out/lib/node_modules/rimraf/s" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/rimraf/m"
  ln -s "$out/lib/node_modules/rimraf/m" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/rimraf//"
  ln -s "$out/lib/node_modules/rimraf//" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/rimraf/b"
  ln -s "$out/lib/node_modules/rimraf/b" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/rimraf/i"
  ln -s "$out/lib/node_modules/rimraf/i" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/rimraf/n"
  ln -s "$out/lib/node_modules/rimraf/n" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/rimraf/."
  ln -s "$out/lib/node_modules/rimraf/." "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/rimraf/m"
  ln -s "$out/lib/node_modules/rimraf/m" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/rimraf/j"
  ln -s "$out/lib/node_modules/rimraf/j" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/rimraf/s"
  ln -s "$out/lib/node_modules/rimraf/s" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/semver/b"
  ln -s "$out/lib/node_modules/semver/b" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/semver/i"
  ln -s "$out/lib/node_modules/semver/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/semver/n"
  ln -s "$out/lib/node_modules/semver/n" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/semver//"
  ln -s "$out/lib/node_modules/semver//" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/semver/s"
  ln -s "$out/lib/node_modules/semver/s" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/semver/e"
  ln -s "$out/lib/node_modules/semver/e" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/semver/m"
  ln -s "$out/lib/node_modules/semver/m" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/semver/v"
  ln -s "$out/lib/node_modules/semver/v" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/semver/e"
  ln -s "$out/lib/node_modules/semver/e" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/semver/r"
  ln -s "$out/lib/node_modules/semver/r" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/semver/."
  ln -s "$out/lib/node_modules/semver/." "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/semver/j"
  ln -s "$out/lib/node_modules/semver/j" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/semver/s"
  ln -s "$out/lib/node_modules/semver/s" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/uuid/d"
  ln -s "$out/lib/node_modules/uuid/d" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/uuid/i"
  ln -s "$out/lib/node_modules/uuid/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/uuid/s"
  ln -s "$out/lib/node_modules/uuid/s" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/uuid/t"
  ln -s "$out/lib/node_modules/uuid/t" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/uuid//"
  ln -s "$out/lib/node_modules/uuid//" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/uuid/e"
  ln -s "$out/lib/node_modules/uuid/e" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/uuid/s"
  ln -s "$out/lib/node_modules/uuid/s" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/uuid/m"
  ln -s "$out/lib/node_modules/uuid/m" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/uuid//"
  ln -s "$out/lib/node_modules/uuid//" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/uuid/b"
  ln -s "$out/lib/node_modules/uuid/b" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/uuid/i"
  ln -s "$out/lib/node_modules/uuid/i" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/uuid/n"
  ln -s "$out/lib/node_modules/uuid/n" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/uuid//"
  ln -s "$out/lib/node_modules/uuid//" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/uuid/u"
  ln -s "$out/lib/node_modules/uuid/u" "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/uuid/u"
  ln -s "$out/lib/node_modules/uuid/u" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/uuid/i"
  ln -s "$out/lib/node_modules/uuid/i" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/uuid/d"
  ln -s "$out/lib/node_modules/uuid/d" "$out/lib/node_modules/.bin/16"
  patchShebangs --host "$out/lib/node_modules/wait-port/b"
  ln -s "$out/lib/node_modules/wait-port/b" "$out/lib/node_modules/.bin/0"
  patchShebangs --host "$out/lib/node_modules/wait-port/i"
  ln -s "$out/lib/node_modules/wait-port/i" "$out/lib/node_modules/.bin/1"
  patchShebangs --host "$out/lib/node_modules/wait-port/n"
  ln -s "$out/lib/node_modules/wait-port/n" "$out/lib/node_modules/.bin/2"
  patchShebangs --host "$out/lib/node_modules/wait-port//"
  ln -s "$out/lib/node_modules/wait-port//" "$out/lib/node_modules/.bin/3"
  patchShebangs --host "$out/lib/node_modules/wait-port/w"
  ln -s "$out/lib/node_modules/wait-port/w" "$out/lib/node_modules/.bin/4"
  patchShebangs --host "$out/lib/node_modules/wait-port/a"
  ln -s "$out/lib/node_modules/wait-port/a" "$out/lib/node_modules/.bin/5"
  patchShebangs --host "$out/lib/node_modules/wait-port/i"
  ln -s "$out/lib/node_modules/wait-port/i" "$out/lib/node_modules/.bin/6"
  patchShebangs --host "$out/lib/node_modules/wait-port/t"
  ln -s "$out/lib/node_modules/wait-port/t" "$out/lib/node_modules/.bin/7"
  patchShebangs --host "$out/lib/node_modules/wait-port/-"
  ln -s "$out/lib/node_modules/wait-port/-" "$out/lib/node_modules/.bin/8"
  patchShebangs --host "$out/lib/node_modules/wait-port/p"
  ln -s "$out/lib/node_modules/wait-port/p" "$out/lib/node_modules/.bin/9"
  patchShebangs --host "$out/lib/node_modules/wait-port/o"
  ln -s "$out/lib/node_modules/wait-port/o" "$out/lib/node_modules/.bin/10"
  patchShebangs --host "$out/lib/node_modules/wait-port/r"
  ln -s "$out/lib/node_modules/wait-port/r" "$out/lib/node_modules/.bin/11"
  patchShebangs --host "$out/lib/node_modules/wait-port/t"
  ln -s "$out/lib/node_modules/wait-port/t" "$out/lib/node_modules/.bin/12"
  patchShebangs --host "$out/lib/node_modules/wait-port/."
  ln -s "$out/lib/node_modules/wait-port/." "$out/lib/node_modules/.bin/13"
  patchShebangs --host "$out/lib/node_modules/wait-port/j"
  ln -s "$out/lib/node_modules/wait-port/j" "$out/lib/node_modules/.bin/14"
  patchShebangs --host "$out/lib/node_modules/wait-port/s"
  ln -s "$out/lib/node_modules/wait-port/s" "$out/lib/node_modules/.bin/15"
  patchShebangs --host "$out/lib/node_modules/which/bin/which.js"
  ln -s "$out/lib/node_modules/which/bin/which.js" "$out/lib/node_modules/.bin/node-which"
  ln -s "$out/lib/node_modules/.bin" "$out/bin"
'')
