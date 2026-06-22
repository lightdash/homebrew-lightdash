class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3214.0/lightdash-cli-0.3214.0-macos-arm64.tar.gz"
      sha256 "3fcbea92a77f9395219df98e3725d5cabef1f7d7f92f6b349281abeafac59805"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3214.0/lightdash-cli-0.3214.0-macos-x64.tar.gz"
      sha256 "53b942899757c300151108cfb912f5519dcafe1fe4474a861ea688c1ae122930"
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
