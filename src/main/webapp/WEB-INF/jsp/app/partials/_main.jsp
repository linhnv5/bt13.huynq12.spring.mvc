<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="block-content block-content-no-pad row mb-4">
    <div class="col-12 col-sm-12 col-md-3 mb-5 app-image text-center">
        <img src="${app.getAppImageUrl() != null ? app.getAppImageUrl() : 'img/default-app.png'}" alt="${app.getTitle()}"
            style="padding: 5px;background: #f7f7f7;border-radius: 10px;width:170px;">
    </div>
    <div class="col-12 col-sm-12 col-md-9 mb-5 mt-1" style="padding: 0 25px;">
        <div>
            <h2>${app.getTitle()}</h2>
        </div>

        <div>
            <div class="rating" itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
                <div class="stars-detail">
                <span class="score" title="${app.getTitle()} avenger rating ${app.getCurrentRatings()}" style="width: ${app.getCurrentRatings() / 5 * 100}%;"></span>
                </div>
                <meta itemprop="ratingCount" content="${app.getCurrentRatings()}">
                <meta itemprop="bestRating" content="5">
                <meta itemprop="worstRating" content="1">
            </div>
            <span class="star average" itemprop="ratingValue">${app.getCurrentRatings()}</span>
                <span class="details-delimiter"> | </span>
                <a href="#comment" class="details-to-bottom" data-type="reviews">0 Reviews</a>
                <span class="details-delimiter"> | </span>
            <a href="#comment" class="details-to-bottom" data-type="posts">0 Comments</a>
        </div>

        <div class="mt-3">
            <div class="btn-group mr-2 mb-2" role="group" aria-label="Icons File group">
                <a href="${app.getAppDownloadURL()}" class="btn btn-hero-lg btn-square btn-hero-primary mr-1 mb-3">
                    <i class="fa fa-fw fa-download mr-1"></i> Download
                </a>
            </div>
        </div>
    </div>
</div>