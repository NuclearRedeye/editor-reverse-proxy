#!/bin/bash
echo 'creating buckets'
awslocal s3 mb s3://s3-editor-source-bucket
awslocal s3 mb s3://s3-editor-destination-bucket
echo 'buckets created'