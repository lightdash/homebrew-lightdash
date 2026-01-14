class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2336.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2336.0/lightdash-cli-0.2336.0-macos-arm64.tar.gz"
      sha256 "587494e8af40ab106d1fcfb8c30797ae313e5b93245cab42a8997e2f86c7e0e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2336.0/lightdash-cli-0.2336.0-macos-x64.tar.gz"
      sha256 "a08b83a58247c6222758150fd46444a0c73578088ae0a25e56b4e6475443c831"
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
