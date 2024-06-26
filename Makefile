build:
	GOOS=linux GOARCH=arm64 go build -tags lambda.norpc -o bootstrap main.go
	terraform apply
invoke:
	aws lambda invoke --function-name hello-world --payload fileb://event.json out.json
	cat out.json
destroy:
	terraform destroy
	rm bootstrap myfunction.zip out.json
lint:
	terraform fmt --recursive
	go fmt ./...