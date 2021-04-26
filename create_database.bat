set npm_config_loglevel=silent npm version

@REM download individual country data
git clone https://github.com/kausgang/collect_wiki_timline_data.git
cd collect_wiki_timline_data
call npm install
node app.js
call execute.bat

cd ..\..

@REM merge downloaded data
git clone https://github.com/kausgang/collate_wiki_timeline.git


@REM rename the existing SOURCE_DATA folder
ren collate_wiki_timeline\SOURCE_DATA SOURCE_DATA_OLD

@REM copy the individual folders
xcopy /e /i collect_wiki_timline_data\DOWNLOADED_DATA collate_wiki_timeline\SOURCE_DATA

cd collaborate_wiki_timeline
call npm install
node app.js

cd ..

@REM extrat the database
xcopy /e /i collate_wiki_timeline\MASTER_DATA .\DATABASE

@REM remove the child projects
rmdir /s /q collect_wiki_timline_data collate_wiki_timeline
