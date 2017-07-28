library('doRedis')

#connect redis queues
registerDoRedis('r_jobs', host='localhost', port=6379)

options('redis:num'=TRUE)

#Check workers
nWorkers=getDoParWorkers()
print(paste0("Workers: ",nWorkers))

#nodes
nodes=foreach(j=1:10) %dopar%
{(system('hostname',intern=T))}
nodes=unique(unlist(nodes))

print("Nodes:")
nodes
