# Go Gin Quickstart with IBM Cloud

    - This example assumes the following:
        - Have Go installed: 'brew install go'
        - Have Docker installed: https://docs.docker.com/get-docker/
        - Have IBMCloud CLI installed: https://cloud.ibm.com/docs/cli?topic=cli-getting-started

## Important Commands:

    - Run Locally without Docker: 
        - go run main.go
    - Docker Multistage Build: 
        - docker build --tag <my_repository> .
        - docker run -p 80:80 -it <my_repository> 
    - Push to registry:
        - Log into ibmcloud container registry: 
            - ibmcloud cr login
        - Tag image:
            - docker tag hello-world icr.io/<my_namespace>/<my_repository>:<my_tag>
        - Push to Registry:
            - docker push icr.io/<my_namespace>/<my_repository>:<my_tag>
        - Verify Images were pushed to Registry:
            - ibmcloud cr image-list
