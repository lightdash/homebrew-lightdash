class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2874.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2874.0/lightdash-cli-0.2874.0-macos-arm64.tar.gz"
      sha256 "5a8551aaba90498fb3d806c58519fd5332a3ecc94c9960cb025266e736c70524"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2874.0/lightdash-cli-0.2874.0-macos-x64.tar.gz"
      sha256 "0fe7ab84c8b5e66f37be61b91f041f34aad23de2a9eef5d9da359807d5496fa2"
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
