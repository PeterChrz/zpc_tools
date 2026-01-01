#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED}=== Stopping Development Services ===${NC}"

echo -e "${YELLOW}→${NC} Stopping PHP-FPM..."
sudo rc-service php-fpm stop

echo -e "${YELLOW}→${NC} Stopping MariaDB..."
sudo rc-service mariadb stop

echo ""
echo -e "${GREEN}✓ Development services stopped${NC}"
