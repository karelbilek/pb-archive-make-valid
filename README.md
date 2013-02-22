PB archiv correcting scripts 
=====================

Some people told me that the TPB archives are not either well formed or valid XMLs.

So I made simple perl scripts to make them valid and well-formed; I think it's better than uploading it again.

Run the scripts in bash on any linux like follows.

       perl correct_poor.pl poor3.xml poor.corrected.xml

       perl correct_rich.pl rich.xml rich.corrected.xml
       
It will make another file with corrected ampersands and added DOCTYPE and DTD definitons.

The scripts will probably work on OS X too, and maybe even cygwin.
