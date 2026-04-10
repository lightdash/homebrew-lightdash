class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2752.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2752.0/lightdash-cli-0.2752.0-macos-arm64.tar.gz"
      sha256 "e57b9476853165757d89f8e50f34bae9788d1b728ad3ccf44bdefd173ec16849"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2752.0/lightdash-cli-0.2752.0-macos-x64.tar.gz"
      sha256 "db77b302aa99bf1c840e2a2c21cc6452f4289cbe892fb6207e9327c3773f4beb"
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
