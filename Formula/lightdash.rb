class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2655.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2655.0/lightdash-cli-0.2655.0-macos-arm64.tar.gz"
      sha256 "a71c51b8ba7f33ab746a683fa0567e96cafc554f043671614307b8e636b2b6f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2655.0/lightdash-cli-0.2655.0-macos-x64.tar.gz"
      sha256 "a010d97d55c811093f9ea1f0a5022e76f39907d481c45bb41b32a8e2a023d791"
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
