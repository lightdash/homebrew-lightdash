class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3382.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3382.2/lightdash-cli-0.3382.2-macos-arm64.tar.gz"
      sha256 "b3824fa602a35548b5ea1ebfdbf694f321152c43b4cf1ecd3a99ff749e669c04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3382.2/lightdash-cli-0.3382.2-macos-x64.tar.gz"
      sha256 "f596df17be4ca99b21e80ba03c541ff899090c5557e95d2d8b76c9f38d467d61"
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
