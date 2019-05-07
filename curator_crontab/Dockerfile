FROM loverszhaokai/curator:5.7.6

#
# curator config
# OVERRIDE by yours
#
ADD ./curator.yml /curator_crontab/curator.yml

#
# /curator_crontab/conf: action configs
# OVERRIDE by yours
#
ADD ./conf /curator_crontab/conf

#
# scripts
#
ADD ./curator.sh /curator_crontab/curator.sh
ADD ./replace_crontab_with_shell.sh /curator_crontab/replace_crontab_with_shell.sh

CMD [ "sh", "/curator_crontab/replace_crontab_with_shell.sh"]
