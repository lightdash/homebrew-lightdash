class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3271.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3271.0/lightdash-cli-0.3271.0-macos-arm64.tar.gz"
      sha256 "efdce2606e29d8f77848b7efdf30024363f877c949a27af31b0007e5db31d5ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3271.0/lightdash-cli-0.3271.0-macos-x64.tar.gz"
      sha256 "77ac7e511078820ad28ef5974195f2b0387cfc99d2d03512e2b36f7253859017"
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
