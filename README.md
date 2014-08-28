# et_monitoring cookbook

Installs basic New Relic server monitoring.

# Requirements

# Usage

Include the `et_monitoring::agent` recipe.

# Attributes

None specific to this cookbook; all are setting existing attributes from other cookbooks.

# Recipes

## default

Empty

## agent

1. Collects necessary API keys
2. Assigns them to attributes
3. Includes the newrelic-ng default recipe

# Author

Author:: EverTrue, Inc. (<devops@evertrue.com>)
