#!/bin/sh

echo "{\"mounts\":[{\"bucket\":\"$IPFS_S3_BUCKET_NAME\",\"mountpoint\":\"/blocks\",\"region\":\"$IPFS_S3_REGION\",\"rootDirectory\":\"$IPFS_S3_ROOT_DIRECTORY\",\"regionEndpoint\":\"$IPFS_S3_REGION_ENDPOINT\"},{\"mountpoint\":\"/\",\"path\":\"datastore\",\"type\":\"levelds\"}],\"type\":\"mount\"}"
