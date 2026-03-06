class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2579.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2579.1/lightdash-cli-0.2579.1-macos-arm64.tar.gz"
      sha256 "1542e7043a10d0024c0db9ae5ff43b48e5417b13eea178d9b6b39b4d833c4f56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2579.1/lightdash-cli-0.2579.1-macos-x64.tar.gz"
      sha256 "633302e67ca023e358ecd7ef9ebd57c9d623377bab7cc1812e8c057d5069407a"
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
