<?php

namespace App\Http\Controllers;

use App\Models\Informasi;
use BotMan\BotMan\BotMan;
use App\Models\Percakapan;
use Illuminate\Http\Request;
use BotMan\BotMan\Messages\Incoming\Answer;

class BotManController extends Controller
{
    public function handle()
    {
        $conv = Percakapan::get();
        $info = Informasi::get();
        $botman = app('botman');
        $botman->hears('{message}', function ($botman, $message) use ($info) {
            if ($message == 'hi' || $message == 'halo') {
                $user = $botman->getUser();
                $checkID = Percakapan::where('chat_id', $user->getId())->first();
                if ($checkID == null) {
                    $botman->reply('Your ID is: ' . $user->getId());
                    $percakapan_baru = new Percakapan;
                    $percakapan_baru->chat_id = $user->getId();
                    $percakapan_baru->response_bot = null;
                    $percakapan_baru->response_user = $message;
                    $percakapan_baru->save();
                    $this->askName($botman);
                } else {
                    $botman->reply("Silahkan ketik nomor informasi yang tersedia.");
                    foreach ($info as $item) {
                        $botman->reply($item->no . '. ' . $item->parameter);
                    }
                }
            } elseif ($message == 'terima kasih' || $message == 'thanks') {
                $botman->reply("Sama-Sama");
            } else {
                $user = $botman->getUser();
                $checkID = Percakapan::where('chat_id', $user->getId())->first();
                if ($checkID == null) {
                    $botman->reply("Mohon Ketik Hi atau Halo untuk memulai Percakapan");
                } else {

                    //searching database sesuai inputan user
                    $informasi = Informasi::where('no', $message)->first();
                    $percakapan_baru = new Percakapan;
                    $percakapan_baru->chat_id = $user->getId();
                    $percakapan_baru->response_bot = null;
                    $percakapan_baru->response_user = $message;
                    $percakapan_baru->save();

                    if ($informasi == null) {
                        $botman->reply("Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.");
                        $percakapan_baru = new Percakapan;
                        $percakapan_baru->chat_id = $user->getId();
                        $percakapan_baru->response_bot = 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.';
                        $percakapan_baru->response_user = null;
                        $percakapan_baru->save();
                        foreach ($info as $item) {
                            $botman->reply($item->no . '. ' . $item->parameter);
                        }
                    } else {
                        $botman->reply($informasi->no . '. ' . $informasi->parameter . ', Deskripsi : ' . $informasi->deskripsi . '<br/><br/>--STMIK IB--');
                        $percakapan_baru = new Percakapan;
                        $percakapan_baru->chat_id = $user->getId();
                        $percakapan_baru->response_bot = $informasi->no . '. ' . $informasi->parameter . ', Deskripsi : ' . $informasi->deskripsi . '<br/><br/>--STMIK IB--';
                        $percakapan_baru->response_user = null;
                        $percakapan_baru->save();
                    }
                }
            }
        });

        $botman->listen();
    }

    /**
     * Place your BotMan logic here.
     */

    public function askName($botman)
    {
        $user = $botman->getUser();
        $info = Informasi::get();
        $botman->ask('Halo, Dengan siapa saya berbicara?', function (Answer $answer) use ($info, $user) {
            $name = $answer->getText();

            $percakapan_baru = new Percakapan;
            $percakapan_baru->chat_id = $user->getId();
            $percakapan_baru->response_bot = 'Halo, Dengan siapa saya berbicara?';
            $percakapan_baru->response_user = $name;
            $percakapan_baru->save();

            $this->say('Senang bertemu Dengan mu ' . $name);

            $percakapan_baru = new Percakapan;
            $percakapan_baru->chat_id = $user->getId();
            $percakapan_baru->response_bot = 'Senang bertemu Dengan mu ' . $name;
            $percakapan_baru->response_user = null;
            $percakapan_baru->save();

            $this->ask('apa email anda?', function (Answer $answer) use ($name, $info, $user) {
                $email = $answer->getText();

                $percakapan_baru = new Percakapan;
                $percakapan_baru->chat_id = $user->getId();
                $percakapan_baru->response_bot = 'apa email anda?';
                $percakapan_baru->response_user = $email;
                $percakapan_baru->save();

                $this->say('Terima kasih ' . $name);

                $percakapan_baru = new Percakapan;
                $percakapan_baru->chat_id = $user->getId();
                $percakapan_baru->response_bot = 'Terima kasih ' . $name;
                $percakapan_baru->response_user = null;
                $percakapan_baru->save();

                $percakapan_baru = new Percakapan;
                $percakapan_baru->chat_id = $user->getId();
                $percakapan_baru->response_bot = 'Silahkan ketik Nomor informasi di bawah Ini :';
                $percakapan_baru->response_user = null;
                $percakapan_baru->save();

                $this->say('Silahkan ketik Nomor informasi di bawah Ini :');
                foreach ($info as $item) {
                    $this->say($item->no . '. ' . $item->parameter);

                    $percakapan_baru = new Percakapan;
                    $percakapan_baru->chat_id = $user->getId();
                    $percakapan_baru->response_bot = $item->no . '. ' . $item->parameter;
                    $percakapan_baru->response_user = null;
                    $percakapan_baru->save();
                }
            });
        });
    }
}
