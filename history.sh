#!/bin/bash
USERNAME=$1
curl -u $USERNAME http://api.foursquare.com/v1/history.json?l=250
