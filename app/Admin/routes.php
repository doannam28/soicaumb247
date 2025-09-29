<?php

use App\Admin\Controllers\PostController;
use App\Admin\Controllers\SettingsController;
use App\Admin\Controllers\TaxonomyController;
use App\Admin\Controllers\TaxonomyItemController;
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
    $router->resource('settings', SettingsController::class);
    $router->get('/', 'HomeController@index')->name('home');
});
