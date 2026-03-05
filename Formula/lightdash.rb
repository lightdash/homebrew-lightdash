class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2572.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2572.1/lightdash-cli-0.2572.1-macos-arm64.tar.gz"
      sha256 "bfa58c98b4058ed55f36c41b1ed5dc553a0cf94ebe92309e41e10fdf5c1a20aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2572.1/lightdash-cli-0.2572.1-macos-x64.tar.gz"
      sha256 "4818e54a83f80ebbdafb60210aaea91d64ca4dcf7940792b5de7377198fbd3f8"
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
