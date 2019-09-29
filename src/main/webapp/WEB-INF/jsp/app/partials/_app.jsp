<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-md-4 col-sm-6 col-xs-6">
    <a class="block block-rounded block-link-shadow" href="/app/${app.getId()}">
        <div class="block-content block-content-full d-flex align-items-center justify-content-between">
            <div class="item  block-app-image">
                <img src="${app.getAppImageUrl() != null ? app.getAppImageUrl() : 'img/default-app.png'}" width="100%" height="100%">
            </div>
            <div class="ml-3 text-right">
                <p class="font-w600 mb-0 app-title">
                	${app.getTitleShort(18)}
                </p>
                <div class="stars mb-0">
                    <span class="score" title="${app.getTitle()} avenger rating ${app.getCurrentRatings()}" style="width: ${app.getCurrentRatings() / 5 * 100}%;"></span>
                    <span class="star">${app.getCurrentRatings()}</span>
                </div>
                <button type="button" class="block-app-download btn btn-outline-success btn-sm">
                    <i class="fa fa-fw fa-download mr-1"></i> Download
                </button>
            </div>
        </div>
    </a>
</div>