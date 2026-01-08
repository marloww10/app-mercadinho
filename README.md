# 🛒 App Lista de Mercado

Este projeto é uma aplicação mobile desenvolvida em **Flutter**, criada para facilitar a organização das compras do dia a dia e auxiliar no controle financeiro antes de chegar ao caixa.

O objetivo foi criar uma interface vibrante e intuitiva, onde o usuário consegue adicionar produtos rapidamente e visualizar o total da compra em tempo real.

---

## 👀 Demonstração

<div style="display: flex; flex-direction: row; overflow-x: auto;">
  <img width="300" height="800" alt="Tela Principal" src="![Home]lib\assets\image.png" />
  &nbsp;
  <img width="300" height="800" alt="Adicionar Item" src="![Adicionar item]lib\assets\image2.png" />
  &nbsp;
  <img width="300" height="800" alt="Adicionar Item" src="![Adicionar item]lib\assets\image-1.png" />
  &nbsp;
  <img width="300" height="800" alt="Dialog Confirmação e app completo" src="![Gif do app]lib\assets\app.gif" />
</div>

---

## 🎨 Design e Identidade Visual

O aplicativo foge do padrão monótono, adotando uma **Identidade Visual Vibrante (Amarelo)**.
A escolha da paleta de cores (`Yellow Theme`) e o uso de componentes arredondados trazem uma sensação moderna e amigável. Todo o estilo foi centralizado via `ThemeData`, demonstrando boas práticas de organização de código e consistência visual em botões, inputs e dialogs.

## ✨ Principais Funcionalidades

### 1. Controle de Gastos em Tempo Real
O diferencial do app é o feedback financeiro instantâneo.
* **Cálculo Automático:** Conforme o usuário adiciona itens à lista, o aplicativo calcula e exibe o **Valor Total** no topo da tela. Isso ajuda o usuário a não estourar o orçamento antes mesmo de passar no caixa.

### 2. Gestão Moderna (Swipe-to-Delete)
A interação foi pensada para ser ágil e nativa:
* **Adição Rápida:** Um *Modal Bottom Sheet* (aba que sobe) permite inserir produtos sem sair do contexto da tela principal.
* **Remoção por Gesto:** Utilização do widget `Dismissible`, permitindo que o usuário arraste o item para o lado para excluí-lo, com feedback visual em vermelho (lixeira).

### 3. Segurança e Validação (UX)
A usabilidade é prioridade para evitar erros e toques acidentais:
* **Confirmação de Exclusão:** Ao tentar apagar um item, o app "segura" a ação e pergunta: *"Vai remover?"*. Isso evita que o usuário perca itens da lista por um deslize do dedo.
* **Validação de Inputs:** O sistema impede a criação de produtos sem nome ou com valores inválidos, garantindo a integridade da lista.

---

## 🛠️ Tecnologias Utilizadas

- <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg" width="20" height="20"/> Flutter - Framework UI.
- <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg" width="20" height="20"/> Dart - Linguagem.

---

<div align="center">
  <sub>Desenvolvido com 💛 e Flutter por Marlon Lara</sub>
</div>