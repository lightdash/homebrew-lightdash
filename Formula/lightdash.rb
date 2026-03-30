class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2693.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2693.0/lightdash-cli-0.2693.0-macos-arm64.tar.gz"
      sha256 "63dcc984cccf7416d2faaa9b2b184cf828d55a02a3c286f605f2851125c19ad0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2693.0/lightdash-cli-0.2693.0-macos-x64.tar.gz"
      sha256 "a91c673f564a0c78d2369c2c50c8575556fa032ea785d264577dd0f208e83fdd"
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
