@echo off
::
::Region Options:
:: centralus,eastus,eastus2,westus,westus2,northcentralus,southcentralus,westcentralus,northeurope,westeurope,westus3
::Logic to set the primary and secondary region. Only the above values are accepted.
if not defined REGION_PRIMARY set REGION_PRIMARY=southcentralus
if not defined REGION_SECONDARY set REGION_SECONDARY=northcentralus
if not defined tli set tli=dmo2
if not defined env set env=dev
::Set region_level to either primary or secondary
if not defined region_level set region_level=primary
:: Get ID for Private DNS Zones - NO SPACES BEFORE/AFTER EQUAL SIGN
set TF_VAR_pdns_blob_id=
set TF_VAR_pdns_file_id=
set TF_VAR_pdns_kv_id=
set TF_VAR_pdns_as_id=
set TF_VAR_pdns_db_id=

::Seldom changes, only change this if you know that the pipeline ran with a different value
if not defined competency set competency=vnet
if not defined sub_short_name set sub_short_name=bg3

::Call tfenv.bat in buildtools repository to set the rest of the environment
call ..\buildtools\tfenv.bat
