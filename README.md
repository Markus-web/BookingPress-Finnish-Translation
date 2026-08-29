# BookingPress Finnish Translation

Community Finnish (`fi`) [gettext](https://www.gnu.org/software/gettext/) catalogs for [BookingPress](https://www.bookingpressplugin.com/) Lite, Pro, and common addons.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

| Path | What |
|------|------|
| [`Lite/`](Lite/) | BookingPress free / wp.org plugin |
| [`Pro/`](Pro/) | BookingPress Pro (same text domain, **separate** catalog) |
| [`addons/`](addons/) | Official BookingPress addons (cart, tax, captcha, …) |

Each folder ships:

- `*-fi.po` / `*-fi.mo` — Finnish translation
- `*-en_US.po` (and `.mo` when available) — English baseline for that plugin version

Lite and Pro both use text domain `bookingpress-appointment-booking`. Install each catalog only into its own plugin `languages/` folder. Do not mix them.

## Versions (2026-08-29)

| Package | Version | Folder |
|---------|---------|--------|
| BookingPress Lite | 1.6.4 | `Lite/` |
| BookingPress Pro | 6.1.1 | `Pro/` |
| Cart | 4.8 | `addons/cart/` |
| Conversion Tracking | 1.4 | `addons/conversion-tracking/` |
| Discount | 1.9 | `addons/discount-addon/` |
| Google Captcha | 1.7 | `addons/google-captcha/` |
| Invoice | 2.9 | `addons/invoice/` |
| Mailchimp | 1.5 | `addons/mailchimp/` |
| Tax | 2.5 | `addons/tax/` |
| Turnstile Captcha | 1.2 | `addons/turnstile-captcha/` |

## Install

1. Upgrade the plugin(s) to the versions in the table (or re-merge if newer).
2. Copy the Finnish files into the plugin `languages/` directory.
3. Keep WordPress site language Finnish.
4. Clear object cache / reload wp-admin so the new `.mo` is loaded.

**Lite**

```
wp-content/plugins/bookingpress-appointment-booking/languages/
  bookingpress-appointment-booking-fi.po
  bookingpress-appointment-booking-fi.mo
```

**Pro**

```
wp-content/plugins/bookingpress-appointment-booking-pro/languages/
  bookingpress-appointment-booking-fi.po
  bookingpress-appointment-booking-fi.mo
```

**Addons** (example: cart)

```
wp-content/plugins/bookingpress-cart/languages/
  bookingpress-cart-fi.po
  bookingpress-cart-fi.mo
```

**Google Captcha 1.7:** the vendor ZIP may ship catalogs under `langauges/` (typo). Create or use `languages/` to match the plugin Domain Path (`/languages`).

## Verify (optional)

With [gettext](https://www.gnu.org/software/gettext/) installed:

```bash
./verify.sh
```

Every `*-fi.po` must match its sibling `*-en_US.po` (`msgcmp` clean).

## Translation notes

- Prefer **henkilökunta** (not henkilöstö).
- Prefer amounts like `100 €` instead of `$100` where the string is translated.
- Brands, payment gateway names, shortcodes, URLs, and many country/language names stay in English on purpose.
- After a BookingPress upgrade: replace the EN baseline from the vendor ZIP, `msgmerge` into `*-fi.po`, translate new msgids, then `msgfmt` to rebuild `*-fi.mo`.

## Changelog

### 2026-08-29

- Lite **1.6.4**, Pro **6.1.1**, Cart **4.8** EN baselines + Finnish updates.
- Repo layout: `Lite/`, `Pro/`, `addons/<slug>/` (addons no longer mixed under `Pro/`).
- New / fixed Finnish strings for cancellation reason, unsupported currency for payment method, and reschedule beyond the advance booking period.
- Added MIT license, `.gitignore`, and `verify.sh`.

## License

MIT — see [LICENSE](LICENSE). BookingPress itself remains a third-party product; see [bookingpressplugin.com](https://www.bookingpressplugin.com/) for their terms.
