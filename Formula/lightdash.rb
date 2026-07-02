class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3300.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3300.0/lightdash-cli-0.3300.0-macos-arm64.tar.gz"
      sha256 "e245dca1a2e5fc5ed8dbc7494a6462ee2938d1f0c695c801276fc54ba2b63335"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3300.0/lightdash-cli-0.3300.0-macos-x64.tar.gz"
      sha256 "6dc2e88b7cdfae3572928581bcd9f0ce08720aa9718773786cdfd04bbee0a06c"
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
