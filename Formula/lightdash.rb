class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2290.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.3/lightdash-cli-0.2290.3-macos-arm64.tar.gz"
      sha256 "b50bf9d95575f203c2280bafb7714544d8ddecd2221165b2791bf793b79f46d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.3/lightdash-cli-0.2290.3-macos-x64.tar.gz"
      sha256 "441594b3ab28fddc85b9a6d24cdeaa89c1e53adb6ff697b668f8757edf95601e"
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
