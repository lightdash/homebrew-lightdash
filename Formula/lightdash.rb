class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3017.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3017.0/lightdash-cli-0.3017.0-macos-arm64.tar.gz"
      sha256 "e41683c9f785611a89b8830df4fdb0e64b91846d3d7901c26e842fa3c07c536f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3017.0/lightdash-cli-0.3017.0-macos-x64.tar.gz"
      sha256 "1170b428cf98e5430a4f8ae2b7856b02122cc465a8e708c52c99e5045bd1e0a3"
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
