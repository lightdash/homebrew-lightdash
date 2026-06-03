class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3087.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3087.2/lightdash-cli-0.3087.2-macos-arm64.tar.gz"
      sha256 "f113b2e6fd977fc596ee74ca505091dec879d09e240ad9e18c24968f9ac65de4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3087.2/lightdash-cli-0.3087.2-macos-x64.tar.gz"
      sha256 "517759e34ea02ba7be8743074ab9b0fee3a810550697e316ba316fdc6e729797"
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
