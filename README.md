# retrival-agumentataion
This project is adpated from  OpenChatKit (https://github.com/togethercomputer/OpenChatKit), and hence we will have to use (https://huggingface.co/datasets/ChristophSchuhmann/wikipedia-3sentence-level-retrieval-index/tree/main) repository, for which you have to do

    git lfs install
    git clone https://huggingface.co/datasets/ChristophSchuhmann/wikipedia-3sentence-level-retrieval-index data

## steps to reproduce
* git clone the repository
* run `docker build -t assement .` inside the directory
* run `docker run --gpus '"device=0"' -it -p 8888:8888 -v $PWD/data:/app/data assesment  jupyter lab /app/retriver.ipynb --allow-root --ip 0.0.0.0`
  (the above command binds the host GPU, port and mounts the volume to docker)
  


    
