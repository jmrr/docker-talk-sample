# docker-talk-sample

Sample "Hello, World!" Ruby app running in a Docker container. Used during a sharing session about Docker as a tutorial.

### Instructions

1. Build the image

```
docker build -t launchpad/helloruby .
```

2. Run the image

```
docker run --rm -p 3000:3000 launchpad/helloruby 
```

3. Visit your app:

In your browser, go to [[http://localhost:3000]], or with cURL:

```
cURL -X GET http://localhost:3000
```


### Resources

I based my tutorial on [this](https://rubyplus.com/articles/2461-Docker-Basics-Running-a-Hello-World-Sinatra-App-in-a-Container) one using Docker for Mac OS.
