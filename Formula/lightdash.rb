class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3217.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3217.0/lightdash-cli-0.3217.0-macos-arm64.tar.gz"
      sha256 "fc63e2f704341b1ca3c3be6955ca5f0ce8fe5a884a8907375dc6a35f2f29935f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3217.0/lightdash-cli-0.3217.0-macos-x64.tar.gz"
      sha256 "5eb7ee98e3e428d3ccc8efb1eff088802d306f4faf16906ae63c092ea04f1309"
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
