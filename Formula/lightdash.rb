class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2952.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2952.0/lightdash-cli-0.2952.0-macos-arm64.tar.gz"
      sha256 "4c6a3283477b2fd2a3034b52aff719d297096bef3fa1a29b5cea6b49d7b8c7ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2952.0/lightdash-cli-0.2952.0-macos-x64.tar.gz"
      sha256 "1d1e37b86a2e208d5dbeb8151762e4d4b1373a4892b4efe2a2ab4cd1c781c580"
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
