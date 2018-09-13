#!/bin/bash

services=(allocations backlog registration timesheets)

for service in ${services[@]}; do
    cf create-service cleardb spark "tracker-$service-database"
done

exit 0