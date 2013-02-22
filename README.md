PB archiv correcting scripts 
=====================

Some people told me that the TPB archives are not either well formed or valid XMLs.

So I made simple perl script to make them valid and well-formed; I think it's better than uploading it again.

Run the script in bash on any linux like follows.

       perl correct.pl poor poor3.xml poor.corrected.xml

       perl correct.pl rich rich.xml rich.corrected.xml
       
It will make another file with corrected ampersands and added DOCTYPE and DTD definitons.

The scripts will probably work on OS X too, and maybe even cygwin.
