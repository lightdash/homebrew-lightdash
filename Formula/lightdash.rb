class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2935.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2935.0/lightdash-cli-0.2935.0-macos-arm64.tar.gz"
      sha256 "1f984fa5ac62678fe1292a8e6033d332bc6d7b8460d8f6ff36637e479a69bf98"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2935.0/lightdash-cli-0.2935.0-macos-x64.tar.gz"
      sha256 "24a1ae778392c372a838cd90668f69297c6a782ccba0a254606c7acfbf89b971"
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
