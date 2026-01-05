class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2298.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2298.0/lightdash-cli-0.2298.0-macos-arm64.tar.gz"
      sha256 "2fc7490137afc660cd79125d2ddd40b44453e4172bd23268c0dda3140bcf0589"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2298.0/lightdash-cli-0.2298.0-macos-x64.tar.gz"
      sha256 "f312ae39ca869138bd85b610a65a83cc018f3228b900b55c29633493ca1d5bcc"
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
