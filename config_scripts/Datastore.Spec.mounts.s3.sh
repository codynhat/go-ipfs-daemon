#!/bin/sh

echo "[
    {
        \"child\": {
            \"type\": \"s3ds\",
            \"region\": \"$IPFS_S3_REGION\",
            \"bucket\": \"$IPFS_S3_BUCKET_NAME\",
            \"rootDirectory\": \"$IPFS_S3_ROOT_DIRECTORY\",
            \"regionEndpoint\":\"$IPFS_S3_REGION_ENDPOINT\",
            \"accessKey\": \"$IPFS_S3_ACCESS_KEY_ID\",
            \"secretKey\": \"$IPFS_S3_SECRET_ACCESS_KEY\",
            \"keyTransform\": \"$IPFS_S3_KEY_TRANSFORM\"
        },
        \"mountpoint\": \"/blocks\",
        \"prefix\": \"s3.datastore\",
        \"type\": \"measure\"
        },
        {
        \"child\": {
            \"compression\": \"none\",
            \"path\": \"datastore\",
            \"type\": \"levelds\"
        },
        \"mountpoint\": \"/\",
        \"prefix\": \"leveldb.datastore\",
        \"type\": \"measure\"
    }
]"
