mkdir /root/.aws \
 && touch /root/.aws/credentials \
 && echo "[default]" >> /root/.aws/credentials \
 && echo "aws_access_key_id=${AWS_ACCESS_KEY_ID}" >> /root/.aws/credentials \
 && echo "aws_secret_access_key=${AWS_SECRET_ACCESS_KEY}" >> /root/.aws/credentials \

mkdir /home/chrome/staging \
 && chown chrome:chrome /home/chrome/staging \
 && chmod 700 /goofys \
 && /goofys -sse -o allow_other --dir-mode=0777 --uid=1000 --gid=1000 $AWS_BUCKET /home/chrome/staging