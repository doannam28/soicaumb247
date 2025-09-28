<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\Email;
use App\Models\Page;
use App\Models\Settings;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Response;
use PHPUnit\Framework\Exception;

class HomeController extends Controller
{

    const SOCIAL_ICONS = [
        'facebook' => '/assets/images/icon-fb.png',
        'tiktok' => '/assets/images/icon-tiktok.png',
        'youtube' => '/assets/images/icon-yt.png',
    ];



    /**
     * @return Factory|View|Application
     */
    public function index()
    {

        return view('homes.index', [
            'social_icons' => self::SOCIAL_ICONS,
        ]);
    }
}
