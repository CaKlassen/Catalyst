//reads a variable from a file over a certain number of bytes, returns value
//argument0 - open file
//argument1 - how many bytes to read

var f = argument0, tem = 0, num;

for (var i = argument1; i > 0; i -= 1)
{
    num = file_bin_read_byte(f);            //read the current byte
    global.md5StrIn += string(num);         //add it to the md5 input string
    tem += num * power(256, i-1);           //add it to the number being read
}

return tem;