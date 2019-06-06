#!/usr/bin/awk
function case(str){
	l = length(str);
	k = false;
	new_str = "";
	for (i = 1; i <= l; i++) {
		if (k)
			new_str = (new_str tolower(substr(str,i,1)));
		else
			new_str = (new_str toupper(substr(str,i,1)));
		k = !k;
	}
	print new_str;
	return new_str;
}

#BEGIN { case("dsgd");}
