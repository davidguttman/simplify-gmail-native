curl -s 'https://raw.githubusercontent.com/leggett/simplify/master/gmail/style.css' > /tmp/style.css
curl -s 'https://raw.githubusercontent.com/leggett/simplify/master/gmail/script.js' > /tmp/script.js
curl -s 'https://jiahaog.github.io/nativefier-icons/files/gmail.icns' > /tmp/gmail.icns

npx nativefier \
  --disable-gpu \
  --inject /tmp/script.js \
  --inject /tmp/style.css \
  -i /tmp/gmail.icns \
  --internal-urls 'nomatch' \
  "https://mail.google.com/mail/u/0/#inbox"

open Gmail-darwin-x64
