
const algoliaSearch = () => {

  const searchClient = algoliasearch(
    'CFJVGE1KY4',
    'd6fb43e818fa0939aef7f26581ba699e'
  );

  const search = instantsearch({
    indexName: 'demo_ecommerce',
    searchClient,
  });

  search.addWidgets([
    instantsearch.widgets.searchBox({
      container: document.querySelector('#searchbox'),
      placeholder: "Quel joueur cherches-tu?",
      autofocus:true,
      showReset: true,
      showSubmit: true,
      showLoadingIndicator: true
    }),
    instantsearch.widgets.hits({
      container: document.querySelector('#hits'),
      templates: {
      empty: "No results.",
      item: `
        <div class="hit-name">
          {{#helpers.highlight}}{ "attribute": "name" }{{/helpers.highlight}}
        </div>
      `,
      }
    })
  ]);

  search.start();
}

export { algoliaSearch }
