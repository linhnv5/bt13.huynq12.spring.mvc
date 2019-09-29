<%@tag description="App" pageEncoding="UTF-8"%>

<div class="block block-rounded">
    <div class="block-content block-content-full bg-gd-fruit text-center">
        <a class="item item-circle mx-auto bg-black-25" href="javascript:void(0)">
            <i class="fab fa-2x fa-android text-white"></i>
        </a>
        <p class="text-white font-size-h3 font-w300 mt-3 mb-0">
           Most Viewed Apps
        </p>
    </div>
    <div class="block-content block-content-full">
        <%--table class="table table-borderless table-striped table-hover">
            <tbody>
                @if(isset( $sidebar['most_viewed_apps']))

                    @foreach ( $sidebar['most_viewed_apps'] as $index => $app)

                        @php
                            switch ($index) {
                                case 0:
                                    $ribbonColor = 'danger';
                                    break;
                                case 1:
                                    $ribbonColor = 'warning';
                                    break;
                                case 2:
                                    $ribbonColor = 'info';
                                    break;
                                default:
                                    $ribbonColor = 'light';
                                    break;
                            }
                        @endphp
                        <tr>
                            <td style="width: 40px;">
                                <span class="ribbon ribbon-left ribbon-bookmark ribbon-{{ $ribbonColor }}">
                                    <span class="ribbon-box">
                                        {{ $app->views_count}}
                                    </span>
                                </span>
                            </td>
                            <td >
                                <img title="{{ $app->title }}" alt="{{ $app->title }}" src="{{ $app->app_image_url }}" width="30px">
                            </td>
                            <td>
                             <a title="{{ $app->title }}" href="{{  $app->app_detail_url }}" style="color: #4b4e52;">
                                <strong> {{ str_limit($app->title, 32) }}</strong>
                                <div class="stars mb-0" style="margin-left: 0;">
                                    <span class="score" title="{{ __('dcm.app_average_rating',['attr' => $app->title, 'rating' => $app->current_ratings ]) }}" style="width: {{ ceil(((double) $app->current_ratings  / 5) * 100) }}%;"></span>
                                </div>
                                    </a>
                            </td>
                            <td class="text-center">
                                <a  title="{{ $app->title }}" href="{{  $app->app_detail_url }}" class="btn btn-outline-success btn-sm">
                                    <i class="fa fa-fw fa-download mr-1"></i>
                                </a>
                            </td>
                        </tr>
                    @endforeach

                @else
                    <tr class="text-center">
                        <td> {{ __('dcm.no_apps_configured') }}</td>
                    </tr>
                @endif

            </tbody>
        </table --%>
		<table class="table table-borderless table-striped table-hover">
			<tbody>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-danger"> <span
							class="ribbon-box"> 929 </span>
					</span></td>
					<td><img title="Facebook" alt="Facebook"
						src="https://image.winudf.com/v2/image1/Y29tLmZhY2Vib29rLmthdGFuYV9pY29uXzE1NTc5OTAwMzBfMDIz/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Facebook"
						href="http://googelplayappstore.info/facebook"
						style="color: #4b4e52;"> <strong> Facebook</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Facebook average rating 4.45"
									style="width: 89%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Facebook"
						href="http://googelplayappstore.info/facebook"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-warning">
							<span class="ribbon-box"> 322 </span>
					</span></td>
					<td><img title="Instagram" alt="Instagram"
						src="https://image.winudf.com/v2/image1/Y29tLmluc3RhZ3JhbS5hbmRyb2lkX2ljb25fMTU1NTQ0NDM0N18wMTk/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Instagram"
						href="http://googelplayappstore.info/instagram"
						style="color: #4b4e52;"> <strong> Instagram</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Instagram average rating 4.65"
									style="width: 93%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Instagram"
						href="http://googelplayappstore.info/instagram"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-info"> <span
							class="ribbon-box"> 312 </span>
					</span></td>
					<td><img title="Messenger" alt="Messenger"
						src="https://image.winudf.com/v2/image1/Y29tLmZhY2Vib29rLm9yY2FfaWNvbl8xNTU1NDY0Nzc5XzAxNQ/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Messenger"
						href="http://googelplayappstore.info/messenger"
						style="color: #4b4e52;"> <strong> Messenger</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Messenger average rating 4.45"
									style="width: 89%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Messenger"
						href="http://googelplayappstore.info/messenger"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 199 </span>
					</span></td>
					<td><img title="Mobile Legends: Bang Bang"
						alt="Mobile Legends: Bang Bang"
						src="https://image.winudf.com/v2/image1/Y29tLm1vYmlsZS5sZWdlbmRzX2ljb25fMTU1NTM4Nzg3M18wMTk/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Mobile Legends: Bang Bang"
						href="http://googelplayappstore.info/mobile-legends-bang-bang"
						style="color: #4b4e52;"> <strong> Mobile Legends:
								Bang Bang</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score"
									title="Mobile Legends: Bang Bang average rating 4.35"
									style="width: 87%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Mobile Legends: Bang Bang"
						href="http://googelplayappstore.info/mobile-legends-bang-bang"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 142 </span>
					</span></td>
					<td><img title="Candy Crush Saga" alt="Candy Crush Saga"
						src="https://image.winudf.com/v2/image1/Y29tLmtpbmcuY2FuZHljcnVzaHNhZ2FfaWNvbl8xNTU1NTAzNzIwXzAxMQ/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Candy Crush Saga"
						href="http://googelplayappstore.info/candy-crush-saga"
						style="color: #4b4e52;"> <strong> Candy Crush Saga</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Candy Crush Saga average rating 4.7"
									style="width: 94%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Candy Crush Saga"
						href="http://googelplayappstore.info/candy-crush-saga"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 105 </span>
					</span></td>
					<td><img title="YouTube" alt="YouTube"
						src="https://image.winudf.com/v2/image1/Y29tLmdvb2dsZS5hbmRyb2lkLnlvdXR1YmVfaWNvbl8xNTU1MTE3NTQ3XzA5NA/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="YouTube"
						href="http://googelplayappstore.info/youtube"
						style="color: #4b4e52;"> <strong> YouTube</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="YouTube average rating 4.05"
									style="width: 81%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="YouTube"
						href="http://googelplayappstore.info/youtube"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 101 </span>
					</span></td>
					<td><img title="Jewels Star" alt="Jewels Star"
						src="https://image.winudf.com/v2/image/Y29tLmdhbWUuSmV3ZWxzU3Rhcl9pY29uXzE1MjU3MjY2MTJfMDc1/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Jewels Star"
						href="http://googelplayappstore.info/jewels-star"
						style="color: #4b4e52;"> <strong> Jewels Star</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Jewels Star average rating 4.35"
									style="width: 87%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Jewels Star"
						href="http://googelplayappstore.info/jewels-star"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 87 </span>
					</span></td>
					<td><img title="Minecraft" alt="Minecraft"
						src="https://image.winudf.com/v2/image/Y29tLm1vamFuZy5taW5lY3JhZnRwZV9pY29uXzE1MTQ0NTEwNDZfMDMw/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Minecraft"
						href="http://googelplayappstore.info/minecraft"
						style="color: #4b4e52;"> <strong> Minecraft</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Minecraft average rating 4.45"
									style="width: 89%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Minecraft"
						href="http://googelplayappstore.info/minecraft"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 82 </span>
					</span></td>
					<td><img title="Coin Master" alt="Coin Master"
						src="https://image.winudf.com/v2/image1/Y29tLm1vb25hY3RpdmUuY29pbm1hc3Rlcl9pY29uXzE1NTU1NjAwMDJfMDE3/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Coin Master"
						href="http://googelplayappstore.info/coin-master"
						style="color: #4b4e52;"> <strong> Coin Master</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Coin Master average rating 4.35"
									style="width: 87%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Coin Master"
						href="http://googelplayappstore.info/coin-master"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
				<tr>
					<td style="width: 40px;"><span
						class="ribbon ribbon-left ribbon-bookmark ribbon-light"> <span
							class="ribbon-box"> 66 </span>
					</span></td>
					<td><img title="Sniper Fury" alt="Sniper Fury"
						src="https://image.winudf.com/v2/image1/Y29tLmdhbWVsb2Z0LmFuZHJvaWQuQU5NUC5HbG9mdEZXSE1faWNvbl8xNTU5MTQzODQ5XzAyNQ/icon.png?w=170&amp;fakeurl=1"
						width="30px"></td>
					<td><a title="Sniper Fury"
						href="http://googelplayappstore.info/sniper-fury"
						style="color: #4b4e52;"> <strong> Sniper Fury</strong>
							<div class="stars mb-0" style="margin-left: 0;">
								<span class="score" title="Sniper Fury average rating 4.45"
									style="width: 89%;"></span>
							</div>
					</a></td>
					<td class="text-center"><a title="Sniper Fury"
						href="http://googelplayappstore.info/sniper-fury"
						class="btn btn-outline-success btn-sm"> <i
							class="fa fa-fw fa-download mr-1"></i>
					</a></td>
				</tr>
			</tbody>
		</table>
		<div class="text-center">
            <a class="btn btn-hero-sm btn-hero-primary" href="javascript:void(0)">
                <i class="fa fa-eye mr-1"></i> Show All..
            </a>
        </div>
    </div>
</div>