<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="block block-square pb-4">
    <div class="block-header block-header-default">
        <h3 class="block-title"><i class="fa fa-fw fa-feather-alt mr-1"></i> The Description of ${app.getTitle()}</h3>
    </div>
    <div class="block-content px-0 pt-0" >
        <div class="content 3" itemprop="description" id="app_description">
            ${app.getAppDescriptionHTML()}
        </div>
    </div>
</div>