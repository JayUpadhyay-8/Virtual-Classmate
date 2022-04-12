<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="title icon" href="images/title-img.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
        crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/Chart.js"></script>
    <script type="text/javascript" src="js/script.js"></script>


    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="dashboard.css" media="screen" />

    <style>
        table {
          border-collapse: collapse;
          border-spacing: 0;
          width: 100%;
          border: 1px solid #ddd;
        }
        
        th, td {
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even){background-color: #f2f2f2}
        </style>
    

</head>

<body>

  
    <!--header start-->
           <jsp:include page="Header.jsp"></jsp:include>                 <!---HEADER CODE HERE-->
    <!--header end-->
    <!--sidebar start-->
           <jsp:include page="sidebar.jsp"></jsp:include>                 <!---SIDEBAR CODE HERE-->        
    <!-- end of sidebar -->

    <!-- cards -->
    <div class="col-xl-8 col-lg-8 col-md-8">


        <div class="container-fluid">
                      <br/><br/>  
                    <div class="card card-common">
                        <div class="card-header" style="background-color:rgb(69, 69, 192);color: white;">
                            <div class="d-flex justify-content-between">
                                <div class="text-left text-secondary">
                                    <h6 style="color: white;">Record,Play and Save video</h6>
                                </div>
                                <i class="fas fa-video"></i>
                            </div>
                        </div>
                      
                        <div style="overflow-x:auto;">
                        <div class="card-body">
                            <main>
        
                                
                                <video controls></video>
                                
                                <video id="vid2" controls></video><br/>

                                <p><button id="btnStart" class="" style="display:inline-block;background-color:rgb(69, 69, 192) ;color: white;">START RECORDING</button>
                                    <button id="btnStop" class="" style="background-color:rgb(69, 69, 192) ;color: white;">STOP RECORDING</button></p>
                                    
                                
                                <!-- could save to canvas and do image manipulation and saving too -->
                            </main>    
                            <script>
                                
                                let constraintObj = { 
                                    audio: true, 
                                    video: { 
                                        facingMode: "user", 
                                        width: { min: 640, ideal: 1280, max: 1920 },
                                        height: { min: 480, ideal: 720, max: 1080 } 
                                    } 
                                }; 
                                // width: 1280, height: 720  -- preference only
                                // facingMode: {exact: "user"}
                                // facingMode: "environment"
                                
                                //handle older browsers that might implement getUserMedia in some way
                                if (navigator.mediaDevices === undefined) {
                                    navigator.mediaDevices = {};
                                    navigator.mediaDevices.getUserMedia = function(constraintObj) {
                                        let getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
                                        if (!getUserMedia) {
                                            return Promise.reject(new Error('getUserMedia is not implemented in this browser'));
                                        }
                                        return new Promise(function(resolve, reject) {
                                            getUserMedia.call(navigator, constraintObj, resolve, reject);
                                        });
                                    }
                                }else{
                                    navigator.mediaDevices.enumerateDevices()
                                    .then(devices => {
                                        devices.forEach(device=>{
                                            console.log(device.kind.toUpperCase(), device.label);
                                            //, device.deviceId
                                        })
                                    })
                                    .catch(err=>{
                                        console.log(err.name, err.message);
                                    })
                                }
                        
                                navigator.mediaDevices.getUserMedia(constraintObj)
                                .then(function(mediaStreamObj) {
                                    //connect the media stream to the first video element
                                    let video = document.querySelector('video');
                                    if ("srcObject" in video) {
                                        video.srcObject = mediaStreamObj;
                                    } else {
                                        //old version
                                        video.src = window.URL.createObjectURL(mediaStreamObj);
                                    }
                                    
                                    video.onloadedmetadata = function(ev) {
                                        //show in the video element what is being captured by the webcam
                                        video.play();
                                    };
                                    
                                    //add listeners for saving video/audio
                                    let start = document.getElementById('btnStart');
                                    let stop = document.getElementById('btnStop');
                                    let vidSave = document.getElementById('vid2');
                                    let mediaRecorder = new MediaRecorder(mediaStreamObj);
                                    let chunks = [];
                                    
                                    start.addEventListener('click', (ev)=>{
                                        mediaRecorder.start();
                                        console.log(mediaRecorder.state);
                                    })
                                    stop.addEventListener('click', (ev)=>{
                                        mediaRecorder.stop();
                                        console.log(mediaRecorder.state);
                                    });
                                    mediaRecorder.ondataavailable = function(ev) {
                                        chunks.push(ev.data);
                                    }
                                    mediaRecorder.onstop = (ev)=>{
                                        let blob = new Blob(chunks, { 'type' : 'video/mp4;' });
                                        chunks = [];
                                        let videoURL = window.URL.createObjectURL(blob);
                                        vidSave.src = videoURL;
                                    }
                                })
                                .catch(function(err) { 
                                    console.log(err.name, err.message); 
                                });
                                
                                /*********************************
                                getUserMedia returns a Promise
                                resolve - returns a MediaStream Object
                                reject returns one of the following errors
                                AbortError - generic unknown cause
                                NotAllowedError (SecurityError) - user rejected permissions
                                NotFoundError - missing media track
                                NotReadableError - user permissions given but hardware/OS error
                                OverconstrainedError - constraint video settings preventing
                                TypeError - audio: false, video: false
                                *********************************/
                            </script>
                        </div>
                    </div>
    
                </div>
                
            </div>
    
        </div>
    
    </div>
        </div>
   
<!-- end of cards -->

 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo "
        crossorigin="anonymous "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js " integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49 "
        crossorigin="anonymous "></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js " integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T "
        crossorigin="anonymous "></script>
    <script src="script.js "></script>
</body>

</html>