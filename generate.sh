#!/bin/sh
sed -e "s/.*@version.*/@version $(date -u +'%Y-%m-%d')/g" hiragino.user.css > hiragino-sourcecodepro.user.css

sed -e "s/Source Code Pro/JetBrains Mono/g" hiragino-sourcecodepro.user.css > hiragino-jbmono.user.css

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
