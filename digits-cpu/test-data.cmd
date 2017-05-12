docker run --rm --name digits-cpu -d -v "%cd:\=/%/digits-data"/:/data -v "%cd:\=/%/digits-jobs":/jobs -p 5000:5000 rquintino/digits-cpu
start http://localhost:5000
if not exist "digits-data/mnist" ( docker exec -it digits-cpu python -m digits.download_data mnist /data/mnist ) else (echo Mnist exists)