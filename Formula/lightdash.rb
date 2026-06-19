class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3201.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.1/lightdash-cli-0.3201.1-macos-arm64.tar.gz"
      sha256 "6f83ad8f1c6b03543c332c163748aa3514ff14a7b7fe643896b35f154e3c458b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.1/lightdash-cli-0.3201.1-macos-x64.tar.gz"
      sha256 "be06ebdace26bde3d62c14c6a82972d98fd3a44e5e2801d743772203633d6505"
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
