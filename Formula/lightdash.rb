class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2483.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.0/lightdash-cli-0.2483.0-macos-arm64.tar.gz"
      sha256 "8f63a217b5905cee8c17f1fa19b76ea55818f8bf2a6517265574c8e60dd0917b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.0/lightdash-cli-0.2483.0-macos-x64.tar.gz"
      sha256 "854f18dd1bbb173cfbe88a1a61dee89ca61ea21a82ef242ee5962186da497bb0"
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
