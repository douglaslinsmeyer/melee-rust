helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace

helm repo add mariadb-operator https://mariadb-operator.github.io/mariadb-operator
helm install mariadb-operator mariadb-operator/mariadb-operator