# I used curl to invoke JSONWS and saw it on mysql 
curl http://localhost:8080/api/jsonws/ohqiwtsfhl.h7g5folder/add-my-custom-h7-g5-folder \
  -d description="This is where I store all my vacation photos." \
  -d name="Vacation Photos" \
  -u test@liferay.com:test

curl http://localhost:8080/api/jsonws/ohqiwtsfhl.h7g5folder/add-my-custom-h7-g5-folder \
  -d description="Marcos test" \
  -d name="Marcos" \
  -u test@liferay.com:test

# I used curl to invoke add-my-custom-h7-g5-folder-with-permission-check
curl http://localhost:8080/api/jsonws/ohqiwtsfhl.h7g5folder/add-my-custom-h7-g5-folder-with-permission-check \
  -d description="Invoking Permission Check" \
  -d name="Permission Check" \
  -u test@liferay.com:test

# I added a new user to Liferay and got the exception message "You are not test@liferay.com"
curl http://localhost:8080/api/jsonws/ohqiwtsfhl.h7g5folder/add-my-custom-h7-g5-folder-with-permission-check \
  -d description="Using other user" \
  -d name="Other user" \
  -u abhner@liferay.com:test

#I used this curl command to invoke JSONWS and invoked
curl http://localhost:8080/api/jsonws/ohqiwtsfhl.h7g5entry/add-my-custom-h7-g5-entry-service-with-permission-check \
  -d description="photo ." \
  -d name="desc " \
  -u test@liferay.com:test

#I used this curl command to invoke JSONWS and didn't invok
  curl http://localhost:8080/api/jsonws/ohqiwtsfhl.h7g5entry/add-my-custom-h7-g5-entry-service-with-permission-check \
  -d description="photo 1." \
  -d name="desc 1" \
  -u abhner@liferay.com:test