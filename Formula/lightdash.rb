class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2606.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2606.0/lightdash-cli-0.2606.0-macos-arm64.tar.gz"
      sha256 "ad81cfbfae196b31f6080a140fce46ba1071fd635ebb72e67895f1c6d66b66cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2606.0/lightdash-cli-0.2606.0-macos-x64.tar.gz"
      sha256 "d0b7cab23ea3c907638a89351bedad29ac31a093ea5a18bea5cd6810a36ff2f9"
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
