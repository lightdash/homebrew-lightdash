class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3414.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3414.0/lightdash-cli-0.3414.0-macos-arm64.tar.gz"
      sha256 "57f57b6790a3706345f8fdfb250603fc2e8ab233bb838dba9ec66dc3c7e15d0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3414.0/lightdash-cli-0.3414.0-macos-x64.tar.gz"
      sha256 "d495ca0ae04b4a07bc072c548878486e6feeef09767aded7e3a65fddb5190816"
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
