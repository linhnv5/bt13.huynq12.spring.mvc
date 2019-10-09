<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>

<t:master title="App Store 4 Fun">

<jsp:attribute name="content">
<div class="row">
   <div class="col-md-12" itemscope itemtype="http://schema.org/MobileApplication">
      <div class="block block-themed">
        <div class="block-header bg-light">
            <h3 class="block-title"><a href="/">Home</a> » Latest for you</h3>
        </div>

        <div class="block-content px-0 pt-0" >
            <div class="content 3" itemprop="description" id="app_description">
                Latest for you
            </div>
        </div>

        <div class="block-content block-content-full">
            <div class="row">
				<c:forEach items="${apps.getData()}" var="app">
                    <div class="col-12 col-sm-12 col-md-2 mb-5 app-image text-center">
                        <img src="${app.getAppImageUrl() != null ? app.getAppImageUrl() : 'img/default-app.png'}"
							 alt="${app.getTitle()}"
							 style="padding: 2px; background: #f7f7f7; border-radius: 10px; width: 80px;">
                    </div>
                    <div class="col-12 col-sm-12 col-md-10 mb-5 mt-1" style="padding: 0 25px;">
                        <div>
                            <h4>${app.getTitle()}</h4>
                        </div>
                        <div>
                            <div class="rating" itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating">
                                <div class="stars-detail">
	                                <span class="score"
                                		title="${app.getTitle()} average rating ${app.getCurrentRatings()}"
										style="width: ${app.getCurrentRatings() / 5 * 100}%;">
									</span>
                                </div>
                                <meta itemprop="ratingCount" content="${app.getCurrentRatings()}">
                                <meta itemprop="bestRating" content="5">
                                <meta itemprop="worstRating" content="1">
                            </div>
                            <span class="star average" itemprop="ratingValue">${app.getCurrentRatings()}</span>
                            <span class="details-delimiter"> | </span>
                            <a href="/app/${app.getId()}" title="${app.getTitle()}" class="details-to-bottom" data-type="reviews">0 Reviews</a>
                            <span class="details-delimiter"> | </span>
                            <a href="/app/${app.getId()}" class="details-to-bottom" data-type="posts">0 Comments</a>
                        </div>
                        <div itemprop="description" id="app_description">
                        	${app.getAppDescriptionShort(150)}
                        </div>
                        <div class="mt-3">
                            <div class="btn-group mr-2 mb-2" role="group" aria-label="Icons File group">
                                <a href="${app.getAppDownloadURL()}" class="btn btn-success  btn-sm mr-1 mb-3">
                                    <i class="fa fa-fw fa-download mr-1"></i> Download
                                </a>
                                <a href="/app/${app.getId()}" title="${app.getTitle()}" class="btn btn-dark  btn-sm mr-1 mb-3">
                                    <i class="fa fa-fw fa-download mr-1"></i> Readmore
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="block-content block-content-full bg-body-light">
            	<ul class="pagination" role="navigation">
					<c:choose>
						<c:when test="${apps.getMeta().getPagination().getCurrent_page() gt 0}">
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/latest?page=${apps.getMeta().getPagination().getCurrent_page()apps.getMeta().getPagination().getCurrent_page()-1}" rel="next" aria-label="« Previous">‹</a>
							</li>
						</c:when>
						<c:otherwise>
		            		<li class="page-item disabled" aria-disabled="true" aria-label="« Previous">
								<span class="page-link" aria-hidden="true">‹</span>
							</li>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="1" end="${apps.getMeta().getPagination().getTotal_pages()}">
						<c:choose>
							<c:when test="${apps.getMeta().getPagination().getCurrent_page() eq i-1}">
								<li class="page-item active" aria-current="page">
									<span class="page-link">${i}</span>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="http://localhost:8080/latest?page=${i-1}">${i}</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:choose>
						<c:when test="${apps.getMeta().getPagination().getCurrent_page() lt apps.getMeta().getPagination().getTotal_pages()-1}">
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/latest?page=${apps.getMeta().getPagination().getCurrent_page()+1}" rel="next" aria-label="Next »">›</a>
							</li>
						</c:when>
						<c:otherwise>
		            		<li class="page-item disabled" aria-disabled="true" aria-label="Next »">
								<span class="page-link" aria-hidden="true">›</span>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
      </div>
    </div>
   </div>
</div>

</jsp:attribute>

<jsp:attribute name="javascript">
</jsp:attribute>

</t:master>
