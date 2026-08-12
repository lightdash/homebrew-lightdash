class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.136.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.136.0/lightdash-cli-1.136.0-macos-arm64.tar.gz"
      sha256 "b77292e6870dc11ce6db56a804f23a10001e9fad440c7d8f7cba57dcfe3ef6cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.136.0/lightdash-cli-1.136.0-macos-x64.tar.gz"
      sha256 "b2d7058fecf4a1ae7a4c4122121de6e5bc6147de1043e7c9ab2029694ad7864a"
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
