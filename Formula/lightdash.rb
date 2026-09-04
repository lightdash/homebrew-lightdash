class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.132.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.132.0/lightdash-cli-2.132.0-macos-arm64.tar.gz"
      sha256 "b065353916a05c45a1becbd14ad94450b189b79f0ff42b1e4719a244e19b3788"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.132.0/lightdash-cli-2.132.0-macos-x64.tar.gz"
      sha256 "bc531eff800f0338f136b96030291cc49267ad18730e8d23a3cb3736abecc03a"
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
