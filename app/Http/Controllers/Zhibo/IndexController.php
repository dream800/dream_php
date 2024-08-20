<?php

namespace App\Http\Controllers\Zhibo;

use GuzzleHttp\Client;

/**
 * Class IndexController
 *
 * @package \App\Http\Controllers\Zhibo
 */
class IndexController
{

    private function getHttpClient()
    {
        return new Client();
    }

    public function index()
    {

        $filename = public_path("zhibo/match/".date('Y-m-d').'.json');

        if (file_exists($filename)) {
            $result = file_get_contents($filename);
            $content = json_decode($result, true);

        } else {
            $url = "https://shanmao.tv/matchListPage2?child=all&day_length=14&type=iframe&tag=all";


            $result = $this->getHttpClient()->get($url, [
                'verify' => false
            ]);

            $content = json_decode($result->getBody(), true);

            file_put_contents(public_path("zhibo/match/".date('Y-m-d').'.json'),
                json_encode($content));
        }

        $original_data = $content['result'];
        $data = [];

        foreach ($original_data as $item) {
            foreach ($item['data'] as $v) {
                //if ($item['date'] == '2021-02-06') {
                    $value['id'] = $v['id'];
                    $value['name'] = $v['lname'];
                    $value['home_team'] = $v['hname'];
                    $value['visit_team'] = $v['id'];
                    $value['hot'] = $v['hot'];
                    $value['date'] = $item['date'];
                    $value['timer'] = date("H:i", strtotime($v['gameTime'] ?? '')) ;
                    $value['type'] = $v['gameStageType'] ?? '';
                    $value['status'] = $v['status'];
                    $value['live'] = [];
                    $value['live2'] = [];
                    $value['time_info'] = $v['matchStatus'];
                    $value['hTotalScore'] = $v['hTotalScore'];
                    $value['aTotalScore'] = $v['aTotalScore'];
                    array_push($data, $value);
                //}
            }
        }



        return [
            'code' => 200,
            'msg' => 'success',
            'data' => $data
        ];






        $str = '{
  "code": 200,
  "data": [
    {
      "id": 12819,
      "name": "澳NBL",
      "home_team": "布里斯班子弹",
      "visit_team": "The Hawks",
      "hot": "0",
      "date": "2021-02-06 14:30:00",
      "timer": "14:30",
      "type": "0",
      "status": "0",
      "live": [
        {
          "c_id": "1",
          "create_time": 1610787043,
          "id": "1",
          "status": "0",
          "title": "信号1",
          "type": "tiaozhuan",
          "update_time": "",
          "url": "http://tx2play1.douyucdn.cn/live/1165924rtJffu54V.flv?uuid="
        }
      ],
      "live2": [
        {
          "c_id": "2",
          "create_time": 1610787043,
          "id": "2",
          "status": "0",
          "title": "信号2",
          "type": "tiaozhuan",
          "update_time": "",
          "url": "http://tx2play1.douyucdn.cn/live/9220456roWY2Suo2.flv?uuid="
        }
      ],
      "time_info": "LIVE",
      "hTotalScore": null,
      "aTotalScore": null
    },
    {
      "id": 12819,
      "name": "澳NBL",
      "home_team": "布里斯班子弹",
      "visit_team": "老鹰队",
      "hot": "0",
      "date": "2021-02-06 14:30:00",
      "timer": "14:30",
      "type": "0",
      "status": "0",
      "live": [
        {
          "c_id": "1",
          "create_time": 1610787043,
          "id": "1",
          "status": "0",
          "title": "信号1",
          "type": "tiaozhuan",
          "update_time": "",
          "url": "http://tx2play1.douyucdn.cn/live/1165924rtJffu54V.flv?uuid="
        }
      ],
      "live2": [
        {
          "c_id": "2",
          "create_time": 1610787043,
          "id": "2",
          "status": "0",
          "title": "信号2",
          "type": "tiaozhuan",
          "update_time": "",
          "url": "http://tx2play1.douyucdn.cn/live/9220456roWY2Suo2.flv?uuid="
        }
      ],
      "time_info": "LIVE",
      "hTotalScore": null,
      "aTotalScore": null
    },
    {
      "id": 12165,
      "name": "越南联",
      "home_team": "平阳",
      "home_team_img": "https://apimanager.sslzj.com/uploads/teamIcon/1241/dg0k00a21B0.png",
      "visit_team": "清化",
      "visit_team_img": "https://apimanager.sslzj.com/uploads/teamIcon/1254/cu0q10E83lw.png",
      "hot": "1",
      "date": "2021-02-07 18:00:00",
      "timer": "18:00",
      "type": "18",
      "status": "",
      "live": [
        {
          "c_id": "1",
          "create_time": 1610787043,
          "id": "1",
          "status": "0",
          "title": "信号1",
          "type": "tiaozhuan",
          "update_time": "",
          "url": "https://pull.hbqsly.com/leisub/355328931726897153.flv?auth_key=1610802600-0-0-fd3a5c78179a77d307c5827002a632a3"
        }
      ],
      "live2": [
        {
          "c_id": "2",
          "create_time": 1610787043,
          "id": "2",
          "status": "0",
          "title": "信号2",
          "type": "tiaozhuan",
          "update_time": "",
          "url": "https://pull.hbqsly.com/leisub/355328931726897153.m3u8?auth_key=1610802600-0-0-2e3e9263c79b71661b1d00a2a2e5c259"
        }
      ],
      "live_url": [],
      "time_info": "未",
      "hTotalScore": null,
      "aTotalScore": null
    }
  ]
}';

        return json_encode(json_decode($str, true));
    }

    public function ad()
    {
        $str = '{"msg":"\u83b7\u53d6\u5e7f\u544a\u6210\u529f","code":200,"data":{"btmAd":[{"id":"1","title":"\u5e95\u90e8","url":"http:\/\/js.mjita.cn\/qw.php?id=1508","type":"0","time":"2019-04-21 00:00:14","status":"0"}],"liveAd":[]}}';
        return json_encode(json_decode($str, true));
    }

}