class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3472.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.2/lightdash-cli-0.3472.2-macos-arm64.tar.gz"
      sha256 "8039ab689d76f2392287029ea7f9fa80d56e7ab0fe4f74942cfd6952e2e5d14d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.2/lightdash-cli-0.3472.2-macos-x64.tar.gz"
      sha256 "5c062965383ed477ce162939c38380b4c874a9e858770f38e9d0e33e91f28561"
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
