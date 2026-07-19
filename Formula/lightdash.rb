class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3417.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3417.0/lightdash-cli-0.3417.0-macos-arm64.tar.gz"
      sha256 "1ddca8139a8c0f5e7690299dca5b413b6c01429aa85e6fd966a9bfb2dab4eee4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3417.0/lightdash-cli-0.3417.0-macos-x64.tar.gz"
      sha256 "3f353297e73cae3b291b9b8581876b6bb7d1048f1ee43d74d4395fbd91565bad"
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
