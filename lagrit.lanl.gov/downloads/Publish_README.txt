This is an example is for fehm files
Same thing for any project under another directory.
Contact for ees web pages: Les Mansell <lim@lanl.gov>

=================
COPY TO DEV SITE
 
sftp from linux box  to publish.lanl.gov

For Terry Miller
NEW: sftp tamiller@publish.lanl.gov

move into local directory
lcd fehm

move into sft dev directory
cd /www/dev-green/docs/orgs/ees/fehm

check local and sft files:
lls
ls

copy a file onto dev system
put files onto their system  get files from their system.

sftp> put index.shtml
Uploading index.shtml to /var/www/html/yellow/development/dev-green/docs/orgs/ees/fehm/index.shtml
index.shtml                                         100%   11KB  10.8KB/s   00:00    

To see how new file looks, go to dev site,
http://ees.ds.lanl.gov/fehm/

NOTE: DO NOT USE local /include files, use ees includes using virtual = /source....

=================
PUBLISH FROM LANL SITE:

http://int.lanl.gov/tools/publish/dsp/index.php

1. Select Public (institutional green) 

2. Select files using orgs/ees/
   New directory uses C
   Replacement or new files use A or B
    
   enter address of files to publish, use address such as 
       orgs/ees/fehm/index.shtml
       or orgs/ees/fehm/*  (then select from list you are shown)

check the box to select
HIT PUBLISH button

=================
FIRST - TO CREATE APPROVED SITE

email www-admin@lanl.gov to get a site location for NEWNAME
You will receive an email letting you know it has been setup.
Once done, upload your files and get approval.

From: 	 www-admin <www-admin@lanl.gov>
Subject: RE: new web page for NEWNAME code
 
sftp        publish.lanl.gov
username    u113691 (your user name)
password    cryptocard-generated

change directory to
/www/dev-green/docs/orgs/ees/NEWNAME
Upload files
 
Development URL: http://NEWNAME.ds.lanl.gov
This is the URL you will use for review and classification 
The world can not see this, just you and LANL evaluators.

APPROVALS <http://int.lanl.gov/security/classification/>. 
Send the development URL to Lynn Wysocki-Smith, lws@lanl.gov. 
If she is available, she will review your site; otherwise, contact SAFE-1.
 
When you are cleared to publish to the world, go to
http://int.lanl.gov/tools/publish/dsp/

Step 1 choose Public (institutional green)
Step 2 Part A enter  orgs/ees/NEWNAME/*
Continue
Select files and Publish
repeat as necessary
Use Step 2 Part C to publish new subdirectories. 

After publishing subdirectories for the first time, 
use Part A and include the subdirectory to republish files, 
e.g., orgs/ees/NEWNAME /images/* to republish files.
 
Production URL will be http://NEWNAME.lanl.gov 
and https://NEWNAME.lanl.gov where necessary.
 
If you need assistance any time during this process, 
please continue to send email to this list, www-admin@lanl.gov.
Leslie

Help pages are available at http://int.lanl.gov/tools/publish/help.php

