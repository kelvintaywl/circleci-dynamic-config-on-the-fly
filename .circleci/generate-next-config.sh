# IMPORTANT: this script should be run inside the .circleci folder
# TODO: make this agnostic to directory from where script is run,
# or raise an error in the worst case.

cat templates/_header.yml >> next-config.yml

cat templates/parameters.yml >> next-config.yml

# add jobs
echo "jobs:\n" >> next-config.yml
cat templates/jobs/deploy.yml >> next-config.yml

cat templates/workflows.yml >> next-config.yml
