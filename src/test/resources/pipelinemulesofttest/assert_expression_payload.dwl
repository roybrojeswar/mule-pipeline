%dw 2.0
import * from dw::test::Asserts
---
payload must [
  beObject(),
  $[*"abbreviation"] must haveSize(1),
  $[*"client_ip"] must haveSize(1),
  $[*"dst"] must haveSize(1),
  $[*"dst_from"] must haveSize(1),
  $[*"dst_offset"] must haveSize(1),
  $[*"dst_until"] must haveSize(1),
  $[*"timezone"] must haveSize(1),
  $[*"State"] must haveSize(1),
  $[*"abbreviation"][0] must equalTo("IST"),
  $[*"client_ip"][0] must equalTo("202.142.69.230"),
  $[*"dst"][0] must equalTo(false),
  $[*"dst_from"][0] must equalTo(null),
  $[*"dst_offset"][0] must equalTo(0),
  $[*"dst_until"][0] must equalTo(null),
  $[*"timezone"][0] must equalTo("Asia/Kolkata"),
  $[*"State"][0] must equalTo("WB")
]