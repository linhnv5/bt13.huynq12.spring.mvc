<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="pt-4 px-4 bg-body-dark rounded push animated fadeIn">
	<h3>Shortcut Menu</h3>
	<div class="row row-deck">
		<div class="row row-deck">
			<div class="col-6 col-md-4 col-xl-3">
				<a class="btn block block-rounded block-link-pop text-center d-flex align-items-center " href="/admin/apps">
					<div class="block-content">
						<p class="font-w600 font-size-sm text-uppercase">
							<i class="fab fa-android"></i> All Apps
						</p>
					</div>
				</a>
			</div>
			<div class="col-6 col-md-4 col-xl-3">
				<a class="btn block block-rounded block-link-pop text-center d-flex align-items-center "
					href="/admin/apps/create">
					<div class="block-content">
						<p class="font-w600 font-size-sm text-uppercase">
							<i class="fa fa-plus-circle"></i> New App <br> <small>
								Manual create app</small>
						</p>
					</div>
				</a>
			</div>
			<div class="col-6 col-md-4 col-xl-3">
				<a class="btn block block-rounded block-link-pop text-center d-flex align-items-center "
					href="/admin/create-app-from-store">
					<div class="block-content">
						<p class="font-w600 font-size-sm text-uppercase">
							<i class="fab fa-google-play"></i> Google Play Store <br> <small>
								Create via api</small>
						</p>
					</div>
				</a>
			</div>
			<div class="col-6 col-md-4 col-xl-3">
				<a class="btn block block-rounded block-link-pop text-center d-flex align-items-center "
					href="/admin/featured-apps">
					<div class="block-content">
						<p class="font-w600 font-size-sm text-uppercase">
							<i class="fa fa-mobile-alt"></i> Setup Featured Apps
						</p>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>
