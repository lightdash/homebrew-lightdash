class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2779.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2779.0/lightdash-cli-0.2779.0-macos-arm64.tar.gz"
      sha256 "aae8377271b91be649d5c7516eb644e0396edc1bcc9045a86cc2cde68fab60ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2779.0/lightdash-cli-0.2779.0-macos-x64.tar.gz"
      sha256 "4267ae9669ff2989a08623a2057e251e6ec1b835d29fad864f7e501fabc66cba"
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
