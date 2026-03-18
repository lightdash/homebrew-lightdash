class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2633.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2633.0/lightdash-cli-0.2633.0-macos-arm64.tar.gz"
      sha256 "fdd955254d0ffd968e7359cda21ed518064217ec0428db160fe41df53f85cd4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2633.0/lightdash-cli-0.2633.0-macos-x64.tar.gz"
      sha256 "2d20b053d73fc32150222cc944241d7a6e2be356708988445831405f7a92de42"
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
