# Lob::MultiLineAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient** | **String** | The intended recipient, typically a person&#39;s or firm&#39;s name. | [optional] |
| **company** | **String** | Either &#x60;name&#x60; or &#x60;company&#x60; is required, you may also add both. | [optional] |
| **primary_line** | **String** | The primary delivery line (usually the street address) of the address. Combination of the following applicable &#x60;components&#x60;: * &#x60;primary_number&#x60; * &#x60;street_predirection&#x60; * &#x60;street_name&#x60; * &#x60;street_suffix&#x60; * &#x60;street_postdirection&#x60; * &#x60;secondary_designator&#x60; * &#x60;secondary_number&#x60; * &#x60;pmb_designator&#x60; * &#x60;pmb_number&#x60;  |  |
| **secondary_line** | **String** | The secondary delivery line of the address. This field is typically empty but may contain information if &#x60;primary_line&#x60; is too long.  | [optional] |
| **urbanization** | **String** | Only present for addresses in Puerto Rico. An urbanization refers to an area, sector, or development within a city. See [USPS documentation](https://pe.usps.com/text/pub28/28api_008.htm#:~:text&#x3D;I51.,-4%20Urbanizations&amp;text&#x3D;In%20Puerto%20Rico%2C%20identical%20street,placed%20before%20the%20urbanization%20name.) for clarification.  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** | The &lt;a href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_3166-2:US\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 3166-2&lt;/a&gt; two letter code or subdivision name for the state. &#x60;city&#x60; and &#x60;state&#x60; are required if no &#x60;zip_code&#x60; is passed. | [optional] |
| **zip_code** | **String** | Required if &#x60;city&#x60; and &#x60;state&#x60; are not passed in. If included, must be formatted as a US ZIP or ZIP+4 (e.g. &#x60;94107&#x60;, &#x60;941072282&#x60;, &#x60;94107-2282&#x60;). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = Lob::MultiLineAddress.new(
  recipient: null,
  company: null,
  primary_line: null,
  secondary_line: null,
  urbanization: null,
  city: null,
  state: null,
  zip_code: null
)
```

