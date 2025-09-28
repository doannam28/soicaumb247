<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {
    $router->resource('taxonomies', TaxonomyController::class);
    $router->resource('taxonomy-items', TaxonomyItemController::class);
    $router->resource('posts', PostController::class);
    $router->resource('settings', \App\Admin\Controllers\SettingsController::class);
    $router->get('/', 'HomeController@index')->name('home');
});
