require "formula"

class Px4SimGazebo < Formula
  desc "PX4 Gazebo simulation"
  homepage "http://px4.io"
  url "https://raw.githubusercontent.com/PX4/Firmware/master/Tools/px4.py"
  version "1.6.5.0"
  sha256 "dafe6a32d270c48cbd42960adb2155bd5f60d1aec8cb644b10f8cafc0c8d2e8f"
  depends_on "exiftool"
  depends_on "glog"
  depends_on "graphviz"
  depends_on "gst-libav"
  depends_on "gst-plugins-bad"
  depends_on "gst-plugins-base"
  depends_on "gst-plugins-good"
  depends_on "gst-plugins-ugly"
  depends_on "gstreamer"
  depends_on "opencv"
  depends_on "osrf/simulation/gazebo9"
  depends_on "protobuf"
  depends_on "px4-dev"
  depends_on :x11

  def install
    mkdir_p "#{bin}/"
    cp "px4.py", "#{bin}/px4-sim-gazebo.py"
    ohai "PX4 Gazebo simulation installed"
  end
end
