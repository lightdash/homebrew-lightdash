class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.17.0/lightdash-cli-2.17.0-macos-arm64.tar.gz"
      sha256 "4d88b02184f8bc47270d6d60602068e4c0723f9652e6e2b3a69991b87f110641"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.17.0/lightdash-cli-2.17.0-macos-x64.tar.gz"
      sha256 "c4b47c09deefe088c79a904f3fb8adb81fc18363ec67715c7a27bd9b4abdf83a"
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
