class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.189.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.189.0/lightdash-cli-2.189.0-macos-arm64.tar.gz"
      sha256 "96f98fb789cc16a2db79b39c16594edd7634f087f21725a773afac6dd7dda040"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.189.0/lightdash-cli-2.189.0-macos-x64.tar.gz"
      sha256 "9e90eb23a2c7191d39c058dc8a0d492c08451f785de942a8df235d4ba4d01c18"
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
