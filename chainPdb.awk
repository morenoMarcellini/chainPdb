#!/usr/bin/awk -f

BEGIN{}

{

    if (($1=="REMARK") || ($1=="EXPDTA") || ($1=="TER") || ($1=="END")) {print $0; next}
    
    if ($4 == "WAT") 
    {
	if ($2 > 9999)
	    printf "HETATM %5i  %-3s %-3s Z%4i   %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
	else
	    printf "HETATM%5i  %-3s %-3s Z%4i    %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
    }
    else if ($4 == "NA")
    {
	if ($2 > 9999)
	    printf "HETATM %i  %-3s %-3s X%4i   %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
	else
	    printf "HETATM %i  %-3s %-3s X%4i    %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
    }
    else if($4 == "CL") 
    {
	if ($2 > 9999)
	    printf "HETATM %i  %-3s %-3s Y%4i   %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
	else
	    printf "HETATM %i  %-3s %-3s Y%4i    %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
    }
    else
	printf     "ATOM   %4i  %-3s %-3s Q%4i    %8.3f%8.3f%8.3f %5.2f %5.2f%12s\n", $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
}

END{}
