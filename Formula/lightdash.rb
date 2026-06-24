class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3237.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.1/lightdash-cli-0.3237.1-macos-arm64.tar.gz"
      sha256 "223970cee100981d3ffbd777234766b761c7436d7e5c6902260b6b0d9eb9b90f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.1/lightdash-cli-0.3237.1-macos-x64.tar.gz"
      sha256 "300f573da89d2153cd888891fa700c024e9d650420cf56b7cb46433f03c2cd04"
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
