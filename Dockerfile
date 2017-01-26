FROM gitlab/gitlab-ce:latest

ADD start-sendmail.sh mkimage-*.sh /assets/
RUN for ii in $(cd /assets && ls mkimage-*.sh | sort); do sh /assets/${ii}; done

