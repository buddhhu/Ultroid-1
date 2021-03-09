# Ultroid - UserBot
# Copyright (C) 2020 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM heroku/heroku:20
COPY deploy.sh .
RUN chmod +x deploy.sh && sh deploy.sh
WORKDIR /root/TeamUltroid/
CMD ["bash", "resources/startup/startup.sh"]
