$ContainerName = "envoycorsbypass"
@"
docker run -d --name $ContainerName -p 9901:9901 -p 80:80 envoyproxy/envoy-alpine-dev
docker cp envoy.yaml $($ContainerName):/etc/envoy/envoy.yaml
docker container restart $ContainerName
docker logs $ContainerName
"@
