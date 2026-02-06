class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2436.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.2/lightdash-cli-0.2436.2-macos-arm64.tar.gz"
      sha256 "815e8e3e878a2b0fcbe68469d5b5e315eef53a5db15649ef7a936b5af79517b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.2/lightdash-cli-0.2436.2-macos-x64.tar.gz"
      sha256 "bb949176912c96c2fee21942c999ed6e59e308a88bd44823a2c59c688dab8bfb"
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
