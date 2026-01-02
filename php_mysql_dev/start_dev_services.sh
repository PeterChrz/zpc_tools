#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Starting Development Services ===${NC}"

echo -e "${YELLOW}→${NC} Starting MariaDB..."
sudo rc-service mariadb start

echo -e "${YELLOW}→${NC} Starting PHP-FPM..."
sudo rc-service php-fpm start

echo -e "${YELLOW}→${NC} Starting Nginx..."
sudo rc-service nginx start

echo ""
echo -e "${GREEN}✓ Development services started${NC}"
echo ""
echo "Services running:"
echo "  - MariaDB: $(sudo rc-service mariadb status 2>&1 | grep -q 'started' && echo 'Running' || echo 'Stopped')"
echo "  - PHP-FPM: $(sudo rc-service php-fpm status 2>&1 | grep -q 'started' && echo 'Running' || echo 'Stopped')"
echo "  - Nginx: $(sudo rc-service nginx status 2>&1 | grep -q 'started' && echo 'Running' || echo 'Stopped')"
