# retrival-agumentataion
This project is adpated from  OpenChatKit (https://github.com/togethercomputer/OpenChatKitset), and hence we will have to use (https://huggingface.co/datasets/ChristophSchuhmann/wikipedia-3sentence-level-retrieval-index/tree/main) repository, for which you have to do

    git lfs install
    git clone https://huggingface.co/datasets/ChristophSchuhmann/wikipedia-3sentence-level-retrieval-index

## steps to reproduce
* git clone the repository
* run `docker build -t <image_name> .`
* create an `app` and `app/data/` directory inside docker
* move the files inside `wikipedia-3sentence-level-retrieval-index` directory into `app/data/` directory
* run `docker build -t <image_name> .`
* run `docker run --gpus '"device=0"' -it -p 8888:8888 -v $PWD/data:/app/data assesment  jupyter lab /app/retriver.ipynb --allow-root --ip 0.0.0.0`
  


    
