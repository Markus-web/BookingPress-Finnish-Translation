# BookingPress Finnish Translation

Finnish (fi) gettext catalogs for [BookingPress](https://www.bookingpressplugin.com/) Lite, Pro, and common addons.

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

Lite and Pro share the text domain `bookingpress-appointment-booking` but ship **separate** catalogs. Do not mix Lite and Pro files.

Each folder includes `*-fi.po` / `*-fi.mo` and the matching `*-en_US.po` (and `.mo` when present) as the English baseline for that version.

## Install

Copy the Finnish files into the plugin `languages/` directory, then keep site language Finnish.

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

Google Captcha 1.7: the vendor ZIP may ship catalogs under `langauges/` (typo). Create or use `languages/` to match the plugin Domain Path.

After copying, clear any object cache / reload the admin so WordPress picks up the new `.mo` files.

## Notes

- Conventions used here: henkilökunta (not henkilöstö); amounts like `100 €` instead of `$100` where translated.
- Re-merge against new vendor `en_US.po` when you upgrade BookingPress, then update Finnish strings for any new msgids.

## License

Translation files are provided for use with BookingPress. BookingPress itself is a third-party product; see bookingpressplugin.com for their license terms.
