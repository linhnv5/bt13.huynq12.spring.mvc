<%@tag description="Category" pageEncoding="UTF-8"%>

<div class="block block-rounded">
    <div class="block-content block-content-full bg-gd-lake-op text-center">
        <a class="item item-circle mx-auto bg-black-25" href="javascript:void(0)">
            <i class="fa fa-2x fa-gamepad text-white"></i>
        </a>
        <p class="text-white font-size-h3 font-w300 mt-3 mb-0">
            Popular categories
        </p>
    </div>
    <div class="block-content block-content-full">
        <%--div class="block block-rounded block-bordered">

            @if(isset( $sidebar['categories'] ))

                <ul class="nav nav-tabs nav-tabs-block" data-toggle="tabs" role="tablist">

                    @foreach($sidebar['categories'] as $parentCategory)
                        <li class="nav-item @if($loop->first) active @endif">
                            <a class="nav-link @if($loop->first) active @endif" href="#cat-{{ $parentCategory['id']}}">{{ $parentCategory['title'] }}</a>
                        </li>
                    @endforeach
                </ul>
                <div class="block-content tab-content">

                    @foreach($sidebar['categories'] as $parentCategory)
                        <div class="tab-pane @if($loop->first) active @endif" id="cat-{{ $parentCategory['id']}}" role="tabpanel">

                            @if ( isset($parentCategory['child_categories']))
                                <ul class="list-unstyled">
                                    @foreach($parentCategory['child_categories'] as $category)
                                        @if ( @$category['parent_id'] == @$parentCategory['id'])
                                                <li class="mb-3">
                                                    <a href="{{ $category['page_url'] }}" class="btn btn-block btn-outline-primary btn-sm text-left">
                                                            <i class="{{ (isset($category['icon']) && $category['icon']) ? $category['icon'] : 'fab fa-google-play text-primary'}} mr-1"></i>
                                                            <strong>{{ $category['title']}} </strong>
                                                    </a>
                                                    </li>
                                        @endif
                                    @endforeach
                                </ul>
                            @endif
                        </div>
                    @endforeach
                </div>

            @else
                <div>{{ __('dcm.no_categoriy_configured') }}</div>
            @endif

        </div--%>
		<div class="block block-rounded block-bordered">
			<ul class="nav nav-tabs nav-tabs-block js-tabs-enabled"
				data-toggle="tabs" role="tablist">
				<li class="nav-item active "><a class="nav-link active "
					href="#cat-1">Apps</a></li>
				<li class="nav-item "><a class="nav-link " href="#cat-2">Games</a>
				</li>
			</ul>
			<div class="block-content tab-content">
				<div class="tab-pane active " id="cat-1" role="tabpanel">
					<ul class="list-unstyled">
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/business"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Business
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/comics"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Comics
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/communication"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Communication
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/dating"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Dating
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/education"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Education
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/entertainment"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Entertainment
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/events"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Events
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/finance"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Finance
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/food-drink"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Food
									&amp; Drink </strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/health-fitness"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Health
									&amp; Fitness </strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/house-home"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>House
									&amp; Home </strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/libraries-demo"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Libraries
									&amp; Demo </strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/lifestyle"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Lifestyle
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/maps-navigation"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Maps
									&amp; Navigation </strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/medical"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Medical
							</strong>
						</a></li>
					</ul>
				</div>
				<div class="tab-pane " id="cat-2" role="tabpanel">
					<ul class="list-unstyled">
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/sports"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Sports
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/action"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Action
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/adventure"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Adventure
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/arcade"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Arcade
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/board"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Board
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/card"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Card
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/casino"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Casino
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/casual"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Casual
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/educational"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Educational
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/music"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Music
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/puzzle"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Puzzle
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/racing"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Racing
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/role-playing"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Role
									Playing </strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/simulation"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Simulation
							</strong>
						</a></li>
						<li class="mb-3"><a
							href="http://googelplayappstore.info/category/strategy"
							class="btn btn-block btn-outline-primary btn-sm text-left"> <i
								class="fab fa-google-play text-primary mr-1"></i> <strong>Strategy
							</strong>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>