package com.woowacourse.dsgram.service;

import com.woowacourse.dsgram.domain.Article;
import com.woowacourse.dsgram.domain.HashTag;
import com.woowacourse.dsgram.domain.repository.HashTagRepository;
import com.woowacourse.dsgram.service.dto.HashTagResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

import static java.util.stream.Collectors.toList;

@Service
public class HashTagService {
    private final HashTagRepository hashTagRepository;

    public HashTagService(HashTagRepository hashTagRepository) {
        this.hashTagRepository = hashTagRepository;
    }

    public void saveHashTags(Article article) {
        // TODO: 2019-08-21 id 1번은 어디에 저장되는가...
        // TODO: 2019-08-24 왜 set으로 저장하면 첫 번째꺼만 저장?
        hashTagRepository.saveAll(extractHashTags(article));
    }

    private List<HashTag> extractHashTags(Article article) {
        return article.getKeyword().stream()
                .map(keyword -> new HashTag(keyword, article))
                .collect(toList());
    }

    public HashTagResponse findAll(String query) {
        Page<HashTag> hashTags = hashTagRepository.findAllDistinctByKeywordIgnoreCaseContaining(query,
                PageRequest.of(0, 10, Sort.by("id").descending()));
        return new HashTagResponse(hashTags.getContent());
    }

    private void deleteAllByArticleId(long articleId) {
        hashTagRepository.deleteAllByArticleId(articleId);
    }

    public void update(Article article) {
        // TODO: 2019-08-24 더 좋은 방법 찾아보기...
        deleteAllByArticleId(article.getId());
        saveHashTags(article);
    }
}
