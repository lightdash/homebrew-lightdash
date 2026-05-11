class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2907.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2907.0/lightdash-cli-0.2907.0-macos-arm64.tar.gz"
      sha256 "e51b502c9f16a7069d473382ffbc6ee4762753fbc7171fc79aa352e595158e9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2907.0/lightdash-cli-0.2907.0-macos-x64.tar.gz"
      sha256 "28bd1dcfcc3cc12920ae48e5f096d59615dbc49b2df5b6881b842883d200135b"
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
