print("v20170728-6")
print("Loading libs...")
library('doRedis')

print(sessionInfo())

print("Getting Config...")

redisHost=Sys.getenv("REDIS_HOST", unset = "redis", names = NA)
redisPort=as.integer(Sys.getenv("REDIS_PORT", unset = "6379", names = NA))
redisQueue=Sys.getenv("REDIS_QUEUE", unset = "r_jobs", names = NA)
redisPassword=Sys.getenv("REDIS_PASSWORD", unset = "", names = NA)
if (redisPassword=="") redisPassword=NULL


maxTries=10
i=0
while(i<10)
{
  i=i+1
  print(paste0("Trying #",i))
  print(paste0("Connecting to redis at ",redisHost,":",redisPort," ",redisQueue," queue..."))
  
  tryCatch(
  	{redisWorker(redisQueue,host=redisHost, port=redisPort,password = redisPassword)}
  	, error = function(err) {
   
    print(paste("ERROR:  ",err))}
    , finally = {
   
   
  })
  
  Sys.sleep(2)
}

print("Exiting...")