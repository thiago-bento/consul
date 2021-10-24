Projeto Destinado ao aprendizado do consul da Hashcorp


###
Comandos## 
docker container run -it -v $PWD:/app -w /app consul:1.9.4 sh

abrir um novo terminal
$docker ps
$docker exec -it nomedocontainer sh

$consul members

$netstat -napt (visualizar as portas)

$curl localhost:8500
$curl localhost:8500/v1/catalog/nodes
$apk -U add bind-tools
$dig @127.0.0.1 -p 8600 nomedoserviço.service.consul

###
 - criar uma pasta consuld.d
 - criar um arquivo auth.json
 - Subir um containet com o consul com um volume app 
    $docker container run -it --name consulbento -v $PWD:/app -w /app consul:1.9.4 sh
 - Configurar o consul agente de DEV (dentro do container)
    $consul agent -dev -config-dir    
 - instalar o dig - $apk -U add bind-tools
 - consul agent -dev -config-dir ./consul.d
 - dig @127.0.0.1 -p 8600 nomedoserviço.service.consul
###

### Cluster
 - subir 3 maquinas com docker - 2 server 1 client
 - instalar o docker
 - docker run -it --network host consul:1.9.4 sh
 - consul agent -server -bootstrap-expect=2 -node server02 -bind=IPDAMAQUINA -data-dir=/var/lib/consul -config-dir=/etc/consul.d
 
  - consul agent -server -bootstrap-expect=2 -node server02 -bind=IPDAMAQUINA -retry-join=IPSERVER1 -data-dir=/var/lib/consul -config-dir=/etc/consul.d


 - consul agent -node=client01 -bind=10.138.0.2 -data-dir=var/lib/consul -config-dir=/etc/consul.d







 