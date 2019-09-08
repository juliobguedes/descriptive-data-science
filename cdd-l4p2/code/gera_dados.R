library(tidyverse)
library(here)

basico <- read_csv2(
  here::here("data/Basico_PB.csv"),
  local = locale(encoding = "latin1"),
  col_types = "ddcdcdcdcdcdcdcdcdcddddddddddddddd") %>%
  select("Cod_setor", "Nome_da_UF", "Nome_do_municipio", "Situacao_setor")

pessoa <- read_csv2(
  here::here("data/Pessoa03_PB.csv"),
  local = locale(encoding = "latin1"),
  col_types = "dddddddd") %>%
  select("Cod_setor", "V001", "V002", "V003", "V004", "V005", "V006")

pessoas_alfabetizadas <- read_csv(
  here::here("data/Instrucao1_PB.csv"),
  local = locale(encoding = "latin1"),
  col_types= "ddddddddddddddddd") %>% 
  select("Cod_setor", "V2248", "V2249")

basico <- basico %>% rename(
  cod_setor = "Cod_setor",
  UF = "Nome_da_UF",
  municipio = "Nome_do_municipio",
  urbano = "Situacao_setor"
)

pessoa <- pessoa %>% rename(
  cod_setor = "Cod_setor",
  num_residentes = "V001",
  num_brancos = "V002",
  num_pretos = "V003",
  num_amarelos = "V004",
  num_pardos = "V005",
  num_indigenas = "V006"
)

pessoas_alfabetizadas <- pessoas_alfabetizadas %>% rename(
  cod_setor = "Cod_setor",
  alfabetizados = "V2248",
  n_alfabetizados = "V2249"
)

dados <- basico %>% left_join(pessoa, by="cod_setor")
dados <- dados %>% left_join(pessoas_alfabetizadas, by="cod_setor")
dados <- dados %>% mutate(
  urbano = ifelse(urbano < 4, "Urbano", "Rural"),
  porc_brancos = num_brancos/num_residentes,
  porc_pretos = num_pretos/num_residentes,
  porc_amarelos = num_amarelos/num_residentes,
  porc_pardos = num_pardos/num_residentes,
  porc_indigenas = num_indigenas/num_residentes,
  porc_alfabetizados = alfabetizados / (alfabetizados + n_alfabetizados),
  porc_brancos_amarelos = porc_brancos + porc_amarelos,
  porc_indigenas_pardos_pretos = porc_pretos + porc_pardos + porc_indigenas
)

write_csv(dados, here::here("data/dados_limpos.csv"))