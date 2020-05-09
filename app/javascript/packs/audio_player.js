window.onload = function(){



  Array.prototype.forEach.call(document.querySelectorAll('[id^="audiofile"]'), function (el) {
  // 個々の処理を記述する
    var id_num = el.getAttribute('id');
    id_num = id_num.slice(9);

    var audiofile_id = 'audiofile' + id_num
    var visualizer_id = 'visualizer' + id_num

    console.log(audiofile_id);

    var audioContext = new AudioContext();
    var audioElement = document.getElementById(audiofile_id);

    var analyser = audioContext.createAnalyser();
    var source = audioContext.createMediaElementSource(audioElement);
    source.connect(audioContext.destination);
    source.connect(analyser).connect(audioContext.destination);


    var canvas = document.getElementById(visualizer_id);
    var canvasCtx = canvas.getContext('2d');


    analyser.fftSize = 256;
    var bufferLength = analyser.frequencyBinCount;
    console.log(bufferLength);
    var dataArray = new Uint8Array(bufferLength);

    analyser.getByteTimeDomainData(dataArray);

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
