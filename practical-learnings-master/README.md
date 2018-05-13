<div align='center'>
    <img height='175px' src='http://deeplearni.ng/static/img/dl_header_logo.png'/>
</div>

-----------------

# Session 1

### Setup Images
 
We are assuming that you already have the image somewhere on your computer as well as Docker installed.
We also assume that you have this GitLab project cloned... Just want to make sure!

1. In terminal, change directory to where the image is located.
2. Run `docker load < meetup-zeppelin.img`.
  * If you want, `docker tag deeplearner0:5000/meetup-zeppelin meetup-zeppelin`.
3. Running `docker images` should show that "meetup-zeppelin" is available.

### Run Container

We will walk through what each part of this statement does.

1. `docker run -it -p 8080:8080 -p 4040:4040 -v <path_to_notebooks_dir>:/zeppelin/notebook -v <path_to_datasets_dir>:/data-sets --rm meetup-zeppelin`