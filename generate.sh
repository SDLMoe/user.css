#!/bin/sh
sed --expression="s/.*@version.*/@version $(date --utc +'%Y-%m-%d')/g" hiragino.user.css > hiragino-sourcecodepro.user.css

sed --expression="s/Source Code Pro/JetBrains Mono/g" hiragino-sourcecodepro.user.css > hiragino-jbmono.user.css

cat << EOF >> hiragino-sourcecodepro.user.css

@font-face {
    font-family: "JetBrains Mono";
    src: local("Source Code Pro");
}
EOF

cat << EOF >> hiragino-jbmono.user.css

@font-face {
    font-family: "Source Code Pro";
    src: local("JetBrains Mono");
}
EOF
