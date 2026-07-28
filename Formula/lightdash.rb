class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.14.0/lightdash-cli-1.14.0-macos-arm64.tar.gz"
      sha256 "d88abefef9b0fc534a002b298cb1004c072098bab8428389765d3df7017eed2a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.14.0/lightdash-cli-1.14.0-macos-x64.tar.gz"
      sha256 "50f4b178bdff66ed3931e63a7795b2726a9cf330430822be8b2c1620b6ff8807"
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
