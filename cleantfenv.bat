@echo off

rmdir /s /q .terraform
del /f /q .terraform.lock.hcl

set REGION_PRIMARY=
set REGION_SECONDARY=
set tli=
set env=
set competency=
set sub_short_name=
call ..\buildtools\tfenvreset.bat
