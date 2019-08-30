<?php 

function getDirContents($dir, &$results = array()){
    $files = scandir($dir);
    $flag = false;
    foreach($files as $key => $value){
        if($flag) {
            echo 'exiting';
            // exit;
        }
        echo 'starting';
        $path = realpath($dir.DIRECTORY_SEPARATOR.$value);
        if(!is_dir($path)) {
            if(strpos($path,'.html') !== false) {
                // $results[] = $path;
                $fileData = file_get_contents($path);

                
                
                $flag = true;
            }
        } else if($value != "." && $value != "..") {
            getDirContents($path, $results);
            // $results[] = $path;
        }
    }

    // return $results;
}

// getDirContents('/Users/addisonfreeman/Development/skullsplitter/dnd-5e-srd/out');

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://09962f2d6dcf61f358c1c601a670003b:c6414ed59fdf86c9a14c156302cbb489@skullsplitter.myshopify.com/admin/api/2019-07/pages.json",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\n    \"page\": {\n        \"title\": \"Classes\",\n        \"body_html\": \" <p>hello world</p> \"\n    }\n}",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Accept-Encoding: gzip, deflate",
    "Authorization: Basic MDk5NjJmMmQ2ZGNmNjFmMzU4YzFjNjAxYTY3MDAwM2I6YzY0MTRlZDU5ZmRmODZjOWExNGMxNTYzMDJjYmI0ODk=\",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Content-Length: 542",
    "Content-Type: application/json",
    "Cookie: __cfduid=d91e04ac2d817ed0e97235c00bde113d41566501163",
    "Host: skullsplitter.myshopify.com",
    "Postman-Token: 797af2a3-f914-483f-bb9a-a48b8a18188c,cfb54236-4f23-443b-b562-84175cba63c5",
    "User-Agent: PostmanRuntime/7.15.2",
    "cache-control: no-cache"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}


