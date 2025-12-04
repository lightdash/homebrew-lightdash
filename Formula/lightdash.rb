class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2223.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2223.0/lightdash-cli-0.2223.0-macos-arm64.tar.gz"
      sha256 "79637c3be8b6c3455fab4380b103aa29c78b77a30b3c9c7cc445f9b8b9948c07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2223.0/lightdash-cli-0.2223.0-macos-x64.tar.gz"
      sha256 "6764b3cecbf85fc488a4e18151b88efbace29f6da967f431e6629c6f997a3f4a"
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
