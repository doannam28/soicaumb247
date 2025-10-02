<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\Category;
use App\Models\Email;
use App\Models\Keys;
use App\Models\Number;
use App\Models\Page;
use App\Models\Post;
use App\Models\Settings;
use App\Models\Tag;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Response;
use PHPUnit\Framework\Exception;

class HomeController extends Controller
{
    protected function formatDateVietnamese($dateInput) {
        // Chuyển thành timestamp
        $timestamp = strtotime($dateInput);

        // Mảng ngày trong tuần tiếng Việt
        $days = [
            'Chủ nhật',
            'Thứ hai',
            'Thứ ba',
            'Thứ tư',
            'Thứ năm',
            'Thứ sáu',
            'Thứ bảy'
        ];

        // Lấy thứ trong tuần (0 = CN, 1 = Thứ 2, ...)
        $dayOfWeek = date('w', $timestamp);

        // Định dạng ngày theo dd/mm/YYYY
        $formattedDate = date('d/m/Y', $timestamp);

        return $days[$dayOfWeek] . ', Ngày ' . $formattedDate;
    }

    /**
     * @return Factory|View|Application
     */
    public function index()
    {
        $keys = Keys::where('status',1)->orderBy('id','DESC')->first();
        $date = !empty($keys) ? $keys->date: date('d/m/Y');
        $cat_id = 13;
        $obj1 = Number::where('cat_id',intval($cat_id))->where('date',$date)->orderBy('giai','asc')->get();
        $mang=array();
        foreach ($obj1 as $row){
            $mang[intval($row->giai)][]=$row->number;
        }
        $mang_dau=array();
        $dau = Number::where('cat_id',intval($cat_id))->where('date',$date)->orderBy('duoi','asc')->get();
        foreach ($dau as $row){
            $mang_dau[intval(substr($row['duoi'],0,1))][]=$row->duoi;
        }
        $mang_duoi=array();
        foreach ($dau as $row){
            $mang_duoi[intval(substr($row['duoi'],1,1))][]=$row->duoi;
        }
        $title = $this->formatDateVietnamese($date);
        $cats = Category::where('status', 1)
            ->orderBy('order', 'ASC')
            ->with(['posts' => function ($query) {
                $query->orderBy('created_at', 'desc')->take(6);
            }])
            ->get();
        return view('homes.index', [
            'title_soicau' => 'Soi Cầu Miền Bắc '.$title,
            'title' => $title,
            'keys' => $keys,
            'mang' => $mang,
            'dau' => $mang_dau,
            'cats' => $cats,
            'duoi' => $mang_duoi,
        ]);
    }
    public function category($slug='')
    {
        $cat = Category::where('slug', $slug)->firstOrFail();
        $posts = Post::where('parent_id',$cat->id)->orderBy('position','ASC')->orderBy('updated_at','DESC')->paginate(10);
        return view('homes.category', [
            'cat' => $cat,
            'posts' => $posts,
        ]);
    }
    public function tag($slug='')
    {
        $cat = Tag::where('slug', $slug)->firstOrFail();

        $posts = $cat->posts()
            ->orderBy('position', 'ASC')
            ->orderBy('updated_at', 'DESC')
            ->paginate(10); // phân trang 10 bài / trang

        return view('homes.tag', [
            'cat' => $cat,
            'posts' => $posts,
        ]);
    }
    public function page($slug='')
    {
        $cat = Page::where('slug', $slug)->firstOrFail();
        return view('homes.page', [
            'cat' => $cat,
        ]);
    }
    public function detail($slug='')
    {
        $post = Post::where('slug', $slug)->with('tags')->firstOrFail();
        $cat = Category::where('id', $post->parent_id)->firstOrFail();
        $posts = Post::where('parent_id',$post->parent_id)->where('id','<>',$post->id)->orderBy('position','ASC')->orderBy('updated_at','DESC')->limit(5)->get();
        return view('homes.detail', [
            'cat' => $cat,
            'post' => $post,
            'posts' => $posts,
        ]);
    }
}
