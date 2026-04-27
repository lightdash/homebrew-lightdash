class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2811.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.2/lightdash-cli-0.2811.2-macos-arm64.tar.gz"
      sha256 "78078fab62c04b1029e22036ca78e0f573fc1daa2611757616343f696265c770"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.2/lightdash-cli-0.2811.2-macos-x64.tar.gz"
      sha256 "c3abc92a6c73f31e55f05bff3989ac82068556fc8473325358e9063ccc367609"
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
