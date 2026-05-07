class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2888.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2888.0/lightdash-cli-0.2888.0-macos-arm64.tar.gz"
      sha256 "6c6658f36651ba4aa91cd8de85ae9f36397c5730e755c6f1bce6841fb960e5dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2888.0/lightdash-cli-0.2888.0-macos-x64.tar.gz"
      sha256 "a2f96e6d7b7a47d8811bdbad489ca8c3cd4fa289ccd5173a29eaaf1cf678a05f"
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
