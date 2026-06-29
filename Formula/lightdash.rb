class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3261.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3261.0/lightdash-cli-0.3261.0-macos-arm64.tar.gz"
      sha256 "8e5ed082fe947940ca7e560a582f2a30090fb190f1f188897bad0d921ceb1ff6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3261.0/lightdash-cli-0.3261.0-macos-x64.tar.gz"
      sha256 "fba09b10be677cec2ad0d5577108880ecf44ebc2fd875f2a1a690b8595ca1d78"
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
