class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2193.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2193.1/lightdash-cli-0.2193.1-macos-arm64.tar.gz"
      sha256 "aec84bf3593563041f556fce4194bbbda53c5e08198815870ca9cbc17a306645"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2193.1/lightdash-cli-0.2193.1-macos-x64.tar.gz"
      sha256 "3dcabe59cc3c7f05b7110c3722a6c69c9caa3f01dd32e0d0006482e96cbbe76c"
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
