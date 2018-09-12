# start from scratch
FROM scratch

# copy our static linked executable
COPY helloworld helloworld

# tell how to run this container 
CMD ["./helloworld"]
