#!/bin/bash
  if curl -s --head https://google.com/ | grep "200 OK" > /dev/null
	  then
    echo "The HTTP server on owler.com is up!" 
  else
    echo "The HTTP server on owler.com is down!"
fi
