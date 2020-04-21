$(function() {
  $("#postcode").jpostal({
    postcode : [ "#postcode" ],
    address  : {
                  "#prefecture_code" : "%3",
                  "#address_city"            : "%4",
                  "#address_street"          : "%5%6%7"
                }
  });
});
