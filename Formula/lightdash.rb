class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.15.0/lightdash-cli-2.15.0-macos-arm64.tar.gz"
      sha256 "0d724aa73bb74d626dc1c154623712a84d3bdc0810750d8a10b11c52501725d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.15.0/lightdash-cli-2.15.0-macos-x64.tar.gz"
      sha256 "90f7335da43ef66332ce327d39f122f31df77c5880d26615e94b43c55bef75ca"
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
