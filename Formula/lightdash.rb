class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.180.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.180.0/lightdash-cli-1.180.0-macos-arm64.tar.gz"
      sha256 "98a7d2c83d904e6e153e64c925ff8443a9637184462eb1d3483cbdcc8c9413b3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.180.0/lightdash-cli-1.180.0-macos-x64.tar.gz"
      sha256 "bf37693d7bfb5f6b5047b360f5f026519d94357bfa3b76044dd0f3acd149b74d"
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
