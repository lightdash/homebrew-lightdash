class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2392.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2392.0/lightdash-cli-0.2392.0-macos-arm64.tar.gz"
      sha256 "8ae3bcf12004aa626966284d7bb0d0184fd32c3a31da4a56813bd23ee2ac6f10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2392.0/lightdash-cli-0.2392.0-macos-x64.tar.gz"
      sha256 "f313364b9ee9f817d2c8d41d20ab91af1891baaeff3c75e131964def2bad6d7f"
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
