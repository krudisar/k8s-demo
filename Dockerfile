# start from scratch
FROM scratch

# copy our static linked executable
COPY hello helloworld

# tell how to run this container 
CMD ["./helloworld"]
