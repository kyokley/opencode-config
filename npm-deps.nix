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
    "node_modules/accepts/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/accepts/-/accepts-2.0.0.tgz";
        hash = "sha512-5cvg6CtKwfgdmVqY1WIiXKc3Q1bkRqGLi+2W/6ao+6Y7gu/RCwRuAhGEzh5B4KlszSuTLgZYuqFqo5bImjNKng==";
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
    "node_modules/body-parser/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/body-parser/-/body-parser-2.2.2.tgz";
        hash = "sha512-oP5VkATKlNwcgvxi0vM0p/D3n2C3EReYVX+DNYs5TjZFn/oQt2j+4sVJtSMr18pdRr8wjTcBl6LoV+FUwzPmNA==";
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
    "node_modules/debug/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-4.4.3.tgz";
        hash = "sha512-RGwwWnwQvkVfavKVt22FGLw+xYSdzARwm0ru6DhTVA3umU5hZc28V3kO4stgYryrTlLpuvgI9GiijltAjNbcqA==";
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
    "node_modules/encodeurl/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/encodeurl/-/encodeurl-2.0.0.tgz";
        hash = "sha512-Q0n9HRi4m6JuGIV1eFlmvJB7ZEVxu93IrMyiMsGC0lrMJMWzRgx6WGquyfQgZVb31vhGgXnfmPNNXmxnOkRBrg==";
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
    "node_modules/finalhandler/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/finalhandler/-/finalhandler-2.1.1.tgz";
        hash = "sha512-S8KoZgRZN+a5rNwqTxlZZePjT/4cnm0ROV70LedRHZ0p8u9fRID0hJUZQpkKLzro8LfmC8sx23bY6tVNxv8pQA==";
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
        url = "https://registry.npmjs.org/hono/-/hono-4.12.11.tgz";
        hash = "sha512-r4xbIa3mGGGoH9nN4A14DOg2wx7y2oQyJEb5O57C/xzETG/qx4c7CVDQ5WMeKHZ7ORk2W0hZ/sQKXTav3cmYBA==";
      }
    );
    "node_modules/http-errors/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/http-errors/-/http-errors-2.0.1.tgz";
        hash = "sha512-4FbRdAX+bSdmo4AUFuS0WNiPz8NgFt+r8ThgNWmlrjQjt1Q7ZR9+zTlce2859x4KSXrwIsaeTqDoKQmtP8pLmQ==";
      }
    );
    "node_modules/iconv-lite/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.7.2.tgz";
        hash = "sha512-im9DjEDQ55s9fL4EYzOAv0yMqmMBSZp6G0VvFyTMPKWxiSBHUj9NW/qqLmXUwXrrM7AvqSlTCfvqRb0cM8yYqw==";
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
    "node_modules/is-promise/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/is-promise/-/is-promise-4.0.0.tgz";
        hash = "sha512-hvpoI6korhJMnej285dSg6nu1+e6uxs7zG3BYAm5byqDsgJNWwxzM6z6iZiAgQR4TJ30JmBTOwqZUw3WlyH3AQ==";
      }
    );
    "node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-4.0.0.tgz";
        hash = "sha512-FFUtZMpoZ8RqHS3XeXEmHWLA4thH+ZxCv2lOiPIn1Xc7CxrqhWzNSDzD+/chS/zbYezmiwWLdQC09JdQKmthOw==";
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
    "node_modules/path-to-regexp/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-8.4.2.tgz";
        hash = "sha512-qRcuIdP69NPm4qbACK+aDogI5CBDMi1jKe0ry5rSQJz8JVLsC7jV8XpiJjGRLLol3N+R5ihGYcrPLTno6pAdBA==";
      }
    );
    "node_modules/pkce-challenge/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/pkce-challenge/-/pkce-challenge-5.0.1.tgz";
        hash = "sha512-wQ0b/W4Fr01qtpHlqSqspcj3EhBvimsdh0KlHhH8HRZnMsEa0ea2fTULOXOS9ccQr3om+GcGRk4e+isrZWV8qQ==";
      }
    );
    "node_modules/proxy-addr/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.7.tgz";
        hash = "sha512-llQsMLSUDUPT44jdrU/O37qlnifitDP+ZwrmmZcoSKyLKvtZxpyV0n2/bD/N4tBAAZ/gJEdZU7KMraoK1+XYAg==";
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
    "node_modules/require-from-string/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/require-from-string/-/require-from-string-2.0.2.tgz";
        hash = "sha512-Xf0nWe6RseziFMu+Ap9biiUbmplq6S9/p+7w7YXP/JBHhrUDDUhwa+vANyubuqfZWTveU//DYVGsDG7RKL/vEw==";
      }
    );
    "node_modules/router/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/router/-/router-2.2.0.tgz";
        hash = "sha512-nLTrUKm2UyiL7rlhapu/Zl45FwNgkZGaCpZbIHajDYgwlJCOzLSk+cIPAnsEqV955GjILJnKbdQC1nVPz+gAYQ==";
      }
    );
    "node_modules/safer-buffer/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        hash = "sha512-YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      }
    );
    "node_modules/send/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/send/-/send-1.2.1.tgz";
        hash = "sha512-1gnZf7DFcoIcajTjTwjwuDjzuz4PPcY2StKPlsGAQ1+YH20IRVrBaXSWmdjowTJ6u8Rc01PoYOGHXfP1mYcZNQ==";
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
    "node_modules/statuses/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-2.0.2.tgz";
        hash = "sha512-DvEy55V3DB7uknRo+4iOGT5fP1slR8wQohVdknigZPMpMstaKJQWhwiYBACJE3Ul2pTnATihhBYnRhZQHGBiRw==";
      }
    );
    "node_modules/toidentifier/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.1.tgz";
        hash = "sha512-o5sSPKEkg/DIQNmH43V0/uerLrpzVedkUh8tGNvaeXpfpuwjKenlSox/2O/BTlZUtEe+JG7s5YhEz608PlAHRA==";
      }
    );
    "node_modules/type-is/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/type-is/-/type-is-2.0.1.tgz";
        hash = "sha512-OZs6gsjF4vMp32qrCbiVSkrFmXtG/AZhY3t0iAMrMBiAZyV9oALtXO8hsrHbMXF9x6L3grlFuwW2oAz7cav+Gw==";
      }
    );
    "node_modules/unpipe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
        hash = "sha512-pjy2bYhSsufwWlKwPc+l3cN7+wuJlK6uz0YdJEOlQDbl6jo/YlPi4mb8agUkVC8BF7V8NuzeyPNqRksA3hztKQ==";
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
    "node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-6.0.1.tgz";
        hash = "sha512-oGLe46MIrCRqX7ytPUf66EAYvdeMIZYn3WaocqqKZAxrBpkqHfL/qvTyJ/bTk5+AqHCjXmrv3CEWgy368zhRUg==";
      }
    );
    "node_modules/wrappy/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        hash = "sha512-l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
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
    "node_modules/@opencode-ai/plugin/node_modules/zod/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/zod/-/zod-4.1.8.tgz";
        hash = "sha512-5R1P+WwQqmmMIEACyzSvo4JXHY5WiAFHRMg+zBZKgKS+Q1viRa0C1hmUKtHltoIFKtIdki3pRxkmpP74jnNYHQ==";
      }
    );
    "node_modules/cross-spawn/node_modules/which/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        hash = "sha512-BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      }
    );
    "node_modules/vscode-languageserver-protocol/node_modules/vscode-jsonrpc/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.2.0.tgz";
        hash = "sha512-C+r0eKJUIfiDIfwJhria30+TYWPtuHJXHtI7J0YlOmKAo7ogxP20T0zxB7HZQIFhIyvoBPwWskjxrvAtfjyZfA==";
      }
    );
    "node_modules/cross-spawn/node_modules/which/node_modules/isexe/" = extractTarball (
      pkgs.fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        hash = "sha512-RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
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
  patchShebangs --host "$out/lib/node_modules/oh-my-opencode-slim/dist/cli/index.js"
  ln -s "$out/lib/node_modules/oh-my-opencode-slim/dist/cli/index.js" "$out/lib/node_modules/.bin/oh-my-opencode-slim"
  patchShebangs --host "$out/lib/node_modules/which/bin/which.js"
  ln -s "$out/lib/node_modules/which/bin/which.js" "$out/lib/node_modules/.bin/node-which"
  ln -s "$out/lib/node_modules/.bin" "$out/bin"
'')
