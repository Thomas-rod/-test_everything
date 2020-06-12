
const algoliaSearch = () => {

  const searchClient = algoliasearch(
    'CFJVGE1KY4',
    'd6fb43e818fa0939aef7f26581ba699e'
  );



  const autocomplete = instantsearch.connectors.connectAutocomplete(
    ({ indices, refine, widgetParams }, isFirstRendering) => {
      const { container, onSelectChange } = widgetParams;

      if (isFirstRendering) {
        container.html('<select id="ais-autocomplete"></select>');

        container.find('select').selectize({
          options: [],
          valueField: 'name',
          labelField: 'name',
          searchField: 'name',
          highlight: false,
          onType: refine,
          onChange(value) {
            // We call the provided callback each time a value is selected
            onSelectChange(value);
            refine(value);
          }
        });

        return;
      }

      const [select] = container.find('select');

      indices.forEach(index => {
        select.selectize.clearOptions();
        index.results.hits.forEach(hit => select.selectize.addOption(hit));
        select.selectize.refreshOptions(select.selectize.isOpen);
      });
    }
  );

  const suggestions = instantsearch({
    indexName: 'Character',
    searchClient,
  });

  suggestions.addWidgets([
    autocomplete({
      container: $('#autocomplete'),
      onSelectChange(value) {
       // Now we can trigger the search on our main instance
       // each time the value inside the dropdown is selected
       search.helper.setQuery(value).search();
      },
    })
  ]);

  const search = instantsearch({
    indexName: 'Character',
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
      container: '#hits',
      templates: {
        item: `
          <div>
            <header class="hit-name">
              {{#helpers.highlight}}{ "attribute": "name" }{{/helpers.highlight}}
            </header>
          </div>
        `,
      },
    })
  ]);
  search.start();
}

export { algoliaSearch }
