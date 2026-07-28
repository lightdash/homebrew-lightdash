class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.12.0/lightdash-cli-1.12.0-macos-arm64.tar.gz"
      sha256 "16a46d4dd3ab72fda9b0bb52e3188f85a89636b506d84b2ebf80feecfb003144"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.12.0/lightdash-cli-1.12.0-macos-x64.tar.gz"
      sha256 "6952075dc6e58a5724a90dcc63d4b305a87f758f905d935e2e3d000ec4d3cf30"
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
