class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3304.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3304.1/lightdash-cli-0.3304.1-macos-arm64.tar.gz"
      sha256 "d1ada6ceb2df8273b5a9fe3e13bc83fcb38b4cfa54e073e799c567a1300001cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3304.1/lightdash-cli-0.3304.1-macos-x64.tar.gz"
      sha256 "af5f79f64549ba15675302e2554eb32d8a9e6c659cf3fa8d971d6b71910035f9"
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
