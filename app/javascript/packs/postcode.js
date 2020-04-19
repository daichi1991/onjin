$(function() {
  $("#creator_post_code").jpostal({
    postcode : [ "#creator_post_code" ],
    address  : {
                  "#creator_prefecture_code" : "%3",
                  "#creator_address_city"            : "%4",
                  "#creator_address_street"          : "%5%6%7"
                }
  });
});
