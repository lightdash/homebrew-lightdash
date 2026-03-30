class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2686.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2686.0/lightdash-cli-0.2686.0-macos-arm64.tar.gz"
      sha256 "13a323a3cdcb25ec25c2bde5e646e538dc24646ce17788a35eb2eaa60faa6d9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2686.0/lightdash-cli-0.2686.0-macos-x64.tar.gz"
      sha256 "7e50231f3fa9c436a244bff3b73eb23cd9804071cd3aecd22da3e237b23d4024"
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
