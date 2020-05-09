window.onload = function(){



  Array.prototype.forEach.call(document.querySelectorAll('[id^="audiofile"]'), function (el) {
  // 個々の処理を記述する
    var id_num = el.getAttribute('id');
    id_num = id_num.slice(9);

    var audiofile_id = 'audiofile' + id_num
    var playbtn_id = 'playbtn' + id_num
    var visualizer_id = 'visualizer' + id_num

    console.log(audiofile_id);
    console.log(playbtn_id);

    var source, animationId;
    var audioContext = new AudioContext();
  　


    var audioElement = document.getElementById(audiofile_id);
    var track = audioContext.createMediaElementSource(audioElement);

    track.connect(audioContext.destination);

    const playButton = document.getElementById(playbtn_id);

    playButton.addEventListener('click', function() {

        // check if context is in suspended state (autoplay policy)
        if (audioContext.state === 'suspended') {
            audioContext.resume();
        }

        // play or pause track depending on state
        if (this.dataset.playing === 'false') {
            audioElement.play();
            this.dataset.playing = 'true';
        } else if (this.dataset.playing === 'true') {
            audioElement.pause();
            this.dataset.playing = 'false';
        }

    }, false);

    audioElement.addEventListener('ended', () => {
      playButton.dataset.playing = 'false';
    }, false);

    var analyser = audioContext.createAnalyser();
    track.connect(analyser).connect(audioContext.destination);

    var canvas        = document.getElementById(visualizer_id);
    var canvasCtx = canvas.getContext('2d');


    analyser.fftSize = 256;
    var bufferLength = analyser.frequencyBinCount;
    var dataArray = new Uint8Array(bufferLength);

      var widtha = 400;
      var heighta = 100;

      canvasCtx.clearRect(0, 0, widtha, heighta);

      function draw() {
      drawVisual = requestAnimationFrame(draw);

      analyser.getByteFrequencyData(dataArray);

      canvasCtx.fillStyle = 'rgb(240, 240, 240)';
      canvasCtx.fillRect(0, 0, widtha, heighta);

      var barWidth = (widtha / bufferLength) * 2.5;
      var barHeight;
      var x = 0;

      for(var i = 0; i < bufferLength; i++) {
        barHeight = dataArray[i]/2;

        canvasCtx.fillStyle = 'rgb(' + (barHeight+100) + ',200,200)';
        canvasCtx.fillRect(x,heighta-barHeight/2,barWidth,barHeight);

        x += barWidth + 1;
      }
      };

      draw();

  });


};
