class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3007.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3007.1/lightdash-cli-0.3007.1-macos-arm64.tar.gz"
      sha256 "a7c152ca493e7779298517169163857b67105932046e70186a0c98ce9b0e5abc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3007.1/lightdash-cli-0.3007.1-macos-x64.tar.gz"
      sha256 "02fa423db955077b9315a3538ef5ba5d07dfce5c0c4fe5ec64f25468ad6d3dc2"
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
