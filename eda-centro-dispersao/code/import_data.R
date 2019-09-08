library(tidyverse)

clima = read_csv(
    "https://github.com/nazareno/eda-clima/raw/master/data/clima_cg_jp-semanal.csv",
    col_types = "cTdddd"
)

clima %>%
    mutate(mes = lubridate::month(semana), ano = lubridate::year(semana)) %>%
    write_csv(here::here("data/clima_cg_jp-semanal.csv"))


