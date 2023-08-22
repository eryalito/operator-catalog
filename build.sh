mkdir -p catalog

opm alpha render-template semver -o yaml < catalog-template.yaml > catalog/catalog.yaml
docker build . -f catalog.Dockerfile -t ghcr.io/eryalito/operator-catalog:latest
