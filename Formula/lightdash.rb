class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.6/lightdash-cli-0.2457.6-macos-arm64.tar.gz"
      sha256 "9d20c5c9a5f1c53308eb6527bcfda79ab99fff530e435ec50c42148296045ab5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.6/lightdash-cli-0.2457.6-macos-x64.tar.gz"
      sha256 "7b3089ad032489d58709673aef7d3a1b66ab69fcd780a013512ec2df03a37eb5"
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
