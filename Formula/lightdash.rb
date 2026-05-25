class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3012.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.1/lightdash-cli-0.3012.1-macos-arm64.tar.gz"
      sha256 "227ab9bfbf64d2a2d221be1089811c038c9c8fd1b6314ee6b281a87435f535ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.1/lightdash-cli-0.3012.1-macos-x64.tar.gz"
      sha256 "6f987f260f0c3685a502be71009d3b1156c596d680246458982346b03a80758c"
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
