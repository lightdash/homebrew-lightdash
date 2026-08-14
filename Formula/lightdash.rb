class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.0/lightdash-cli-1.157.0-macos-arm64.tar.gz"
      sha256 "2c9b5dc30813e7e065ea134bb34ad92181c775c09407f9eef5100d0fe08cf68b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.0/lightdash-cli-1.157.0-macos-x64.tar.gz"
      sha256 "c3776382cd5bbfdef7adc4598f580bed4cdd161676e86ff26e64bbd242af52de"
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
