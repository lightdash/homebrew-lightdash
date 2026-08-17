class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.172.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.0/lightdash-cli-1.172.0-macos-arm64.tar.gz"
      sha256 "8b3edb643d4bd198ed69e533039d61a44aa0c53c74205235640478153931155e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.0/lightdash-cli-1.172.0-macos-x64.tar.gz"
      sha256 "2afb5c3c9bb1dcf818d26b88ed3ec5d38fdd2fb4df5565a8ed9aa102572497c0"
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
