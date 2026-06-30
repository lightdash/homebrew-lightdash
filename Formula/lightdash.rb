class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3261.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3261.1/lightdash-cli-0.3261.1-macos-arm64.tar.gz"
      sha256 "9762cac5bc2b79ee98d1ad2d69b4d52cdb2345714d839a2f497a634876a1624c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3261.1/lightdash-cli-0.3261.1-macos-x64.tar.gz"
      sha256 "eb31743a2a35091f9db5bca22818a0c3786d6f7f85a4d1b97c0a41efb0dab2c0"
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
