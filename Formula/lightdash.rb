class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2820.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2820.1/lightdash-cli-0.2820.1-macos-arm64.tar.gz"
      sha256 "436a601b965a39ac6b6ef843e4676ee359562e5b25eefb59b6e27d197a4f8d6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2820.1/lightdash-cli-0.2820.1-macos-x64.tar.gz"
      sha256 "9effcf229d5a569c812581af9652e4ed84060e46af61ed21426362140c4a39aa"
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
