#!/bin/bash
mkdir -p allure-history

cat > allure-history/index.html << 'EOF'
<html>
  <head><title>Allure Reports</title></head>
  <body>
    <h1>Allure Reports</h1>
    <ul>
EOF

if [ -d "allure-history/api" ] && [ "$(ls -A allure-history/api)" ]; then
    echo '      <li><a href="./api/index.html">API Report</a></li>' >> allure-history/index.html
fi
if [ -d "allure-history/ui" ] && [ "$(ls -A allure-history/ui)" ]; then
    echo '      <li><a href="./ui/index.html">UI Report</a></li>' >> allure-history/index.html
fi

cat >> allure-history/index.html << 'EOF'
    </ul>
  </body>
</html>
EOF