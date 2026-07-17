class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3413.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3413.1/lightdash-cli-0.3413.1-macos-arm64.tar.gz"
      sha256 "8b31aaa97e4cd9967ec0a7756dc50e623b56d274f4dd7ed2c5a96990ff05c3a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3413.1/lightdash-cli-0.3413.1-macos-x64.tar.gz"
      sha256 "d2c95d557fcd18b9af12a56ee8bba353d20cedc6fee515f3bf9ac676096e6714"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
