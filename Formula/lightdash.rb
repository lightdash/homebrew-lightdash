class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2523.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.2/lightdash-cli-0.2523.2-macos-arm64.tar.gz"
      sha256 "fc51a6519664f48ad7310b9714de1553c8c0d4a75de69333411cd0476187edd5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.2/lightdash-cli-0.2523.2-macos-x64.tar.gz"
      sha256 "ea535ba856b513c4f03191bce0359b98b9587f3fd595401151104322a84df4b7"
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
