@echo off
call .\setenv.bat

call :%~1
exit /B %errorlevel%

:init
..\buildtools\tfbackend.bat
exit /B %errorlevel%

:plan
::We make the call with the correct region
echo region_level:%region_level%
terraform plan -var-file .\env\%region_level%.tfvars
exit /B %errorlevel%

:clean
call .\cleantfenv.bat
exit /B %errorlevel%

:validate
terraform validate
exit /B %errorlevel%

:apply
::We make the call with the correct region
terraform apply -var-file .\env\%region_level%.tfvars --auto-approve
exit /B %errorlevel%

:destroy
::We make the call with the correct region
terraform destroy -var-file .\env\%region_level%.tfvars --auto-approve
exit /B %errorlevel%

:QueryBackend
..\buildtools\tfbackend.bat %*
exit /B %errorlevel%

:CreateBackend
..\buildtools\tfbackend.bat %tf_rg_name%, %tf_stg_name%, %tf_container_name%, %current_region%
exit /B %errorlevel%
