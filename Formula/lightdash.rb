class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2960.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2960.0/lightdash-cli-0.2960.0-macos-arm64.tar.gz"
      sha256 "104631eb62eba2f04f6172da46ba1496e41587764b264b14be49cbf5f682fe49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2960.0/lightdash-cli-0.2960.0-macos-x64.tar.gz"
      sha256 "291d99581324627fe4afc4fe2dc1d21d5a23f0baf73951c86e9e9c94f8b7e8c9"
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
