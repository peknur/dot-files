# ~/.bashrc - highlight YAML from stdin
#
# kubectl -n kube-system get deployments/coredns -oyaml | vaml
# ref: https://github.com/kubernetes/kubectl/issues/524#issuecomment-459028694

function vaml() {
    vim -R -c 'set syntax=yaml' -;
}
