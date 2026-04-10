class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2750.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2750.0/lightdash-cli-0.2750.0-macos-arm64.tar.gz"
      sha256 "cb7e410de7808c5a7dc0f75f18cd251f90edbe9544a3305e23a14a46e765b19b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2750.0/lightdash-cli-0.2750.0-macos-x64.tar.gz"
      sha256 "9e459c85f66b834993614131cbd29fee6896d5a60058d3e04ff3f5f25c93d60d"
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
