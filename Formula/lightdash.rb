class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2290.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.0/lightdash-cli-0.2290.0-macos-arm64.tar.gz"
      sha256 "91bf834001f04c3efd01bfdb783adf30ac0f739a19ac4143df21817bcc8b05f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2290.0/lightdash-cli-0.2290.0-macos-x64.tar.gz"
      sha256 "c3caffbf9ce58369173c0cc8bfc7ca6e30ae2102f0cdb438a1d12ccac9bb011e"
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
