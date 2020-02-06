#mysamples
singintro="C:/Users/marissa_markey/Documents/Audacity/heysoulsistersingintro.wav"
introtwo="C:/Users/marissa_markey/Documents/Audacity/introdos.wav"
clap="C:/Users/marissa_markey/Documents/Audacity/clap.wav"
hey="C:/Users/marissa_markey/Documents/Audacity/hey.wav"
beat="C:/Users/marissa_markey/Documents/Audacity/beathey.wav"
singing="C:/Users/marissa_markey/Documents/Audacity/tonight.wav"
ending= "C:/Users/marissa_markey/Documents/Audacity/heysoulsisterending.wav"

#my function
define :claping do
  live_loop:clappping do
    8.times do
      sample clap, amp: 5, sustain: 1.5
      sleep 2.5
      print "testing"
    end
    stop
  end
end

#myarray
notes = [:F3, :c4, :E4, :F4]
index=0
live_loop:array do
  3.times do
    4.times do
      use_synth:piano
      play notes[index], amp: 2
      index= index+1
      sleep 0.75
      print "hi"
    end
    if index == 4
      index=0
    end
  end
  stop
end

#my song
sleep 8
sample singintro, amp: 5
sleep 16
live_loop:intro do
  3.times do
    sample introtwo, amp: 5
    sleep 9.7
  end
  stop
end
sleep 9.7
claping
sleep 11.5
live_loop:hey do
  1.times do
    sample hey, amp: 5
    sleep 9.7
  end
  stop
end
x=0.5
sleep 8
live_loop:singing do
  sample singing, amp: 1.5
  sleep 20
  stop
end
x=2.5
claping
live_loop:beat do
  6.times do
    sample beat, amp: x
    print sample_duration beat
    x=x-0.5
    sleep 9
    print x
  end
  stop
end
sleep 46
sample ending






