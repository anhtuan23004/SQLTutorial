SET SQL_SAFE_UPDATES = 0;
USE mydatabase;
UPDATE dictionary 
SET detail = REPLACE(detail,'@','✏');
SET detail = REPLACE(detail,'-','–');
SET detail = REPLACE(detail,'+',':&nbsp');
SET detail = REPLACE(detail,':',':&nbsp;');
SET detail = REPLACE(detail,'=','&nbsp;&nbsp;&nbsp;&nbsp;•&nbsp;');