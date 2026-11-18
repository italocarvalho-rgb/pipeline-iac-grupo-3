variable &quot;ambiente&quot; {
type = string
default = &quot;homologacao&quot;
}
resource &quot;local_file&quot; &quot;ambiente&quot; {
filename = &quot;${path.module}/ambiente.txt&quot;
content = &quot;Ambiente: ${var.ambiente}\nEquipe: NOME-DA-EQUIPE\n&quot;
}
output &quot;arquivo_criado&quot; {
value = local_file.ambiente.filename
}
Crie também o .gitignore na raiz, para não enviar arquivos gerados pelo Terraform:
.gitignore
infra/.terraform/
infra/*.tfstate*
infra/ambiente.txt
