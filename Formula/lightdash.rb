class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2502.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.1/lightdash-cli-0.2502.1-macos-arm64.tar.gz"
      sha256 "7f0e3d1bc460aed6797282e48af3060df743fef857a49d20c5639713ffb362cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.1/lightdash-cli-0.2502.1-macos-x64.tar.gz"
      sha256 "7c0e2cea4caf5fbd1cf69f462b01cc11f5b43b9e0733383fbac0f2c7bdb8bc9f"
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
