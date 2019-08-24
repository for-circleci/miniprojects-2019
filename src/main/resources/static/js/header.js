HEADER_APP = (() => {
    const HeaderController = function () {
        const headerService = new HeaderService();

        const search = () => {
            const searchInput = document.querySelector('.search-input input');
            searchInput ? searchInput.addEventListener('keyup', headerService.searchHashTag) : undefined;
        };

        const toggleSearchBar = () => {
            const searchBar = document.querySelector('.search-toggle');
            searchBar ? searchBar.addEventListener('click', headerService.toggleSearchInput) : undefined;
        };

        const applyHashTag = () => {
            window.addEventListener('DOMContentLoaded', headerService.applyHashTag);
        };

        const init = () => {
            search();
            toggleSearchBar();
            applyHashTag();
        };
        return {
            init: init,
        }
    };

    const HeaderService = function () {
        const connector = FETCH_APP.FetchApi();

        const searchHashTag = event => {
            const searchResult = document.getElementById('search-result');

            const getSearchResult = response => {
                response.json()
                    .then(data => {
                        removeChildElements();
                        data['hashTags'].forEach(hashTag => {
                            const searchResultTemplate =
                                `<li class="search-result-item">
                                    <div class="row align-items-center margin-10">
                                        <div class="col-2 text-center">
                                            <p class="text-gray font-size-25 mrg-btm-0">#</p>
                                        </div>
                                        <div class="col-8">
                                            <a href="/tags/${hashTag.keyword.substr(1)}" class="text-dark">
                                                <div class="row">
                                                    ${hashTag.keyword}
                                                </div>
                                                <div class="row text-gray">
                                                    게시물 ${Intl.NumberFormat.call().format(hashTag.count)}
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>`;

                            searchResult.insertAdjacentHTML('beforeend', searchResultTemplate);
                        });

                        toggleSearchList();
                    });

                const removeChildElements = () => {
                    searchResult.innerHTML = '';
                };

                const toggleSearchList = () => {
                    const advancedSearch = document.querySelector('.advanced-search');
                    if (query.length > 0 && searchResult.childElementCount > 0) {
                        advancedSearch.classList.add('active');
                        return;
                    }
                    advancedSearch.classList.remove('active');
                };
            };

            const query = event.target.value
                .replace(new RegExp('#', 'gi'), ''); // TODO 사람 검색과 분기 처리!!

            connector.fetchTemplateWithoutBody(`/api/hashTag?query=${query}`, connector.GET, getSearchResult)
        };

        const toggleSearchInput = event => {
            event.preventDefault();
            document.querySelector('.search-box').classList.toggle('active');
            document.querySelector('.search-input').classList.toggle('active');
            document.querySelector('.search-input input').focus();
        };

        const applyHashTag = () => {
            const contents = Array.from(document.getElementsByClassName('contents'));
            const regex = new RegExp('#([0-9a-zA-Z가-힣_]{2,30})', 'g');

            contents.forEach(content => {
                const contentsHtml = content.innerHTML;

                const tag = contentsHtml.match(regex);
                tag.forEach(tag => {
                    // TODO 오상씨.. 이거 외않되?
                    const tagRegex = new RegExp(/[가-힣]/).test(tag.substr(-1)) ? new RegExp(`\\${tag}\\B`, 'g') : new RegExp(`\\${tag}\\b`, 'g');
                    content.innerHTML = content.innerHTML.replace(tagRegex, `<a href="/tags/${tag.substr(1)}">${tag}</a>`);
                });
            });
        };

        return {
            searchHashTag: searchHashTag,
            toggleSearchInput: toggleSearchInput,
            applyHashTag: applyHashTag,
        }
    };

    const init = () => {
        const headerController = new HeaderController();
        headerController.init();
    };

    return {
        init: init,
        HeaderService: HeaderService
    }
})();

HEADER_APP.init();