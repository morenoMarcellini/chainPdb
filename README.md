# chainPdb
This file read in a pdb file without chain ID and add the chain ID. It has been tested in several distribution of Linux
You should have installed awk or gawk.

How to use it:

$:> . ./chainPdb.awk file_in > file_out

You can also change the permission to executable script by:

$:> chmod 755 chainPdb.awk

followed by

$:> ./chainPdb.awk file_in > file_out

You can also directly copy in your personal bin folder, and more simply to run it as:

$:> chainPdb.awk file_in > file_out

If you need to add other exclusion keyword, then you can change:

  if (($1=="REMARK") || ($1=="EXPDTA") || ($1=="TER") || ($1=="END")) {print $0; next}
 
 to, for example
 
  if (($1=="REMARK") || ($1=="EXPDTA") || ($1=="TER") || ($1=="END") || ($1=="CUCU")) {print $0; next}
                                                                     ^^^^^^^^^^^^^^^ 
In such a case, please let me know

Phd M. Marcellini < bradipopitt@gmail.com >

Last editing: 2020-03-04 13:53
