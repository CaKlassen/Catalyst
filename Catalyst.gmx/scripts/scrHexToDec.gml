//converts a hex string (in lower case) to an integer

var hex = argument0, dec = 0, h = "0123456789abcdef";

for (var p = 1; p <= string_length(hex); p++)
{
    dec = dec << 4 | (string_pos(string_char_at(hex, p),h) - 1);
}

return dec;