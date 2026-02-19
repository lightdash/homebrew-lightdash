class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2488.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2488.0/lightdash-cli-0.2488.0-macos-arm64.tar.gz"
      sha256 "a9aa03bbc1c90cc617d69cecaaf1ceab92f1a62560a1141edb0d4ea11ca194fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2488.0/lightdash-cli-0.2488.0-macos-x64.tar.gz"
      sha256 "fc9f9bc0ec9fabfc3213c368b6040ed4d7bc4d57cb535264a4482e5086e83e8e"
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
