<?php

use Illuminate\Support\Facades\Route;
Route::get('/', [\App\Http\Controllers\HomeController::class, 'index']);
Route::get('/bai-viet/{slug}', [\App\Http\Controllers\HomeController::class, 'detail']);
Route::get('/category/{slug}', [\App\Http\Controllers\HomeController::class, 'category']);
Route::get('/tag/{slug}', [\App\Http\Controllers\HomeController::class, 'tag']);
Route::get('/ket-qua', [\App\Http\Controllers\HomeController::class, 'ketqua']);
Route::get('/{slug}', [\App\Http\Controllers\HomeController::class, 'page']);
