class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2208.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2208.0/lightdash-cli-0.2208.0-macos-arm64.tar.gz"
      sha256 "70d30a9a29cc9985797b79bc9dbb57499915fd5dceef170441d2941c55035b5f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2208.0/lightdash-cli-0.2208.0-macos-x64.tar.gz"
      sha256 "c7d708689550cd5f8cfb06e6cbd268492bdb238b1ab09ae5ab80c1fa69fde9ae"
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
