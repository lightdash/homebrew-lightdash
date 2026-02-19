class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2498.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.1/lightdash-cli-0.2498.1-macos-arm64.tar.gz"
      sha256 "7c4be13aca28dd05aa45eed12f3ab3462a3966b95b4d388ac8c9abf19c67de87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.1/lightdash-cli-0.2498.1-macos-x64.tar.gz"
      sha256 "ce7a9e654bd25c4380afa85f913c39e6e2d542f92bd8e1ed45dda738d1da635a"
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
