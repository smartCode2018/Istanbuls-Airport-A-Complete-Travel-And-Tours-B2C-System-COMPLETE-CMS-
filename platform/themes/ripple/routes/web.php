<?php

// Custom routes
Route::group(['namespace' => 'Theme\Ripple\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        // Add your custom route here
        // Ex: Route::get('hello', 'RippleController@getHello');

        // my custome routes
        Route::get('/news', 'RippleController@getIndex')->name('public.news');


        // my custom route ends

        Route::get('ajax/search', 'RippleController@getSearch')->name('public.ajax.search');

    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Ripple\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        // custom home route
        Route::get('/', 'RippleController@index')->name('public.index');

        // default home route
        // Route::get('/', 'RippleController@getIndex')->name('public.index');

        Route::get('sitemap.xml', [
            'as'   => 'public.sitemap', 
            'uses' => 'RippleController@getSiteMap',
        ]);

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), [
            'as'   => 'public.single',
            'uses' => 'RippleController@getView',
        ]);

    });
});

