@echo off

echo [docker info] >> log
docker info >> log

curl ^
  -X PUT ^
  -H "Accept: application/vnd.github.v3+json" ^
  -H "Authorization: token %GITHUB_ACCESS_TOKEN%" ^
  -L "https://api.github.com/repos/javanile/ci-status/contents/log/FILE.log" ^
  -d "{\"message\":\"message\",\"content\":\"QQ==\"}"
 
