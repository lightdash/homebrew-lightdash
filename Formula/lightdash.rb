class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2567.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2567.0/lightdash-cli-0.2567.0-macos-arm64.tar.gz"
      sha256 "d3242e094b3173d997b0a932a548cc0a65475c9b125567ec71a57d9627e5b8ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2567.0/lightdash-cli-0.2567.0-macos-x64.tar.gz"
      sha256 "82aa47534ab1d6399b12a61bbfb30a92eaf14e6a1d19c8fbeff6a6cad2ced047"
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
