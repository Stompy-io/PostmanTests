# npm install -g newman
# npm install -g newman-reporter-htmlextra
# cd git_repo/PostmanTests
mkdir -p beta_results
newman run P1_AWS_API_Tests.postman_collection.json -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run P1_Coverage.postman_collection.json -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Utilization.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Trend.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Spend\ History.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run P1_Cost\ Analysis\ Page.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Notifier\ API.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Purchase\ Preview.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

# newman run Purchase\ Random.postman_collection.json  -e Beta.postman_environment.json # -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

# newman run Purchase\ Individual.postman_collection.json  -e Beta.postman_environment.json # -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run User\ API.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Reset.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run P1_Auth.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs ##--env-var spotARN=$PROD_SPOT_ARN --env-var testARN=$PROD_ANAL_ARN

newman run P1_Auth\ Never\ Fail.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs ##--env-var spotARN=$PROD_SPOT_ARN --env-var testARN=$PROD_ANAL_ARN

newman run C2_Create\ Spotainer.postman_collection.json  -e Beta.postman_environment.json -d region_code.csv -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run No\ Auth\ No\ Access.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Register\ Existed.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Register\ Slow.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs

newman run Reset\ Too\ Slow.postman_collection.json  -e Beta.postman_environment.json -r htmlextra --reporter-htmlextra-export ./beta_results/ --reporter-htmlextra-logs
